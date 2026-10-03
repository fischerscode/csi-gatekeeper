import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

import 'config.dart';
import 'generated/csi.pb.dart';

Never invalid() =>
    throw const GrpcError.invalidArgument('Request rejected by policy');
Never unsafeResponse() =>
    throw const GrpcError.dataLoss('Backend response rejected by policy');

/// Reject unknown wire fields recursively, including nested and map messages.
void knownFields(GeneratedMessage message) {
  if (!message.unknownFields.isEmpty) invalid();
  void visit(dynamic value) {
    if (value is GeneratedMessage) knownFields(value);
    if (value is Iterable) {
      for (final item in value) {
        visit(item);
      }
    }
    if (value is Map) {
      for (final item in value.values) {
        visit(item);
      }
    }
  }

  for (final field in message.info_.fieldInfo.values) {
    if (message.hasField(field.tagNumber))
      visit(message.getField(field.tagNumber));
  }
}

/// Known but unreviewed fields also fail closed, even with default wire values.
void only(GeneratedMessage message, Set<String> allowed) {
  knownFields(message);
  for (final f in message.info_.fieldInfo.values) {
    if (!allowed.contains(f.name) && message.hasField(f.tagNumber)) invalid();
  }
}

class Policy {
  final GatewayConfig config;
  Policy(this.config);
  void leaf(String id) {
    if (!RegExp(r'^[a-z0-9][a-z0-9_.:+-]{0,127}$').hasMatch(id) ||
        id == '.' ||
        id == '..')
      invalid();
  }

  void snapshotId(String id) {
    final parts = id.split(RegExp(r'[@/]'));
    if (parts.length != 2 || (id.contains('@') && id.contains('/'))) invalid();
    for (final part in parts) {
      leaf(part);
    }
  }

  void params(Map<String, String> p, Set<String> keys) {
    for (final e in p.entries) {
      if (!keys.contains(e.key) ||
          !(config.parameters[e.key]?.contains(e.value) ?? false))
        invalid();
    }
  }

  void capabilities(List<VolumeCapability> caps, {bool required = true}) {
    if ((required && caps.isEmpty) || caps.length > 16) invalid();
    for (final c in caps) {
      only(c, {'mount', 'block', 'accessMode'});
      if (!c.hasAccessMode()) invalid();
      only(c.accessMode, {'mode'});
      final mode = c.accessMode.mode.value;
      if (mode < 1 || mode > 5 || (!config.isNfs && mode != 1)) invalid();
      if (c.hasMount()) {
        only(c.mount, {'fsType'});
        if (!(config.isNfs ? {'', 'nfs', 'nfs4'} : {'', 'ext4', 'xfs'})
            .contains(c.mount.fsType))
          invalid();
      } else if (c.hasBlock() && !config.isNfs) {
        only(c.block, {});
      } else {
        invalid();
      }
    }
  }

  void capacity(CapacityRange range) {
    only(range, {'requiredBytes', 'limitBytes'});
    final r = range.requiredBytes.toInt(), l = range.limitBytes.toInt();
    if (r < 0 ||
        l < 0 ||
        (r == 0 && l == 0) ||
        r > config.maxBytes ||
        l > config.maxBytes ||
        (l > 0 && r > l))
      invalid();
  }

  void source(VolumeContentSource source) {
    only(source, {'snapshot', 'volume'});
    if (source.hasSnapshot()) {
      only(source.snapshot, {'snapshotId'});
      snapshotId(source.snapshot.snapshotId);
    } else if (source.hasVolume()) {
      only(source.volume, {'volumeId'});
      leaf(source.volume.volumeId);
    } else {
      invalid();
    }
  }

  void context(Map<String, String> value, String id) {
    final expected = config.contextFor(id);
    if (value.length != expected.length ||
        value.entries.any((e) => expected[e.key] != e.value))
      invalid();
  }

  void page(int count) {
    if (count < 0 || count > 10000) invalid();
  }

  void request(GeneratedMessage r) {
    switch (r) {
      case CreateVolumeRequest():
        only(r, {
          'name',
          'capacityRange',
          'volumeCapabilities',
          'parameters',
          'volumeContentSource',
        });
        leaf(r.name);
        capabilities(r.volumeCapabilities);
        if (r.hasCapacityRange()) capacity(r.capacityRange);
        params(r.parameters, {
          'detachedVolumesFromSnapshots',
          'detachedVolumesFromVolumes',
        });
        if (r.hasVolumeContentSource()) source(r.volumeContentSource);
      case DeleteVolumeRequest():
        only(r, {'volumeId'});
        leaf(r.volumeId);
      case ControllerExpandVolumeRequest():
        only(r, {'volumeId', 'capacityRange', 'volumeCapability'});
        leaf(r.volumeId);
        if (!r.hasCapacityRange()) invalid();
        capacity(r.capacityRange);
        if (r.hasVolumeCapability()) capabilities([r.volumeCapability]);
      case ControllerGetVolumeRequest():
        only(r, {'volumeId'});
        leaf(r.volumeId);
      case ValidateVolumeCapabilitiesRequest():
        only(r, {
          'volumeId',
          'volumeCapabilities',
          'volumeContext',
          'parameters',
        });
        leaf(r.volumeId);
        capabilities(r.volumeCapabilities);
        if (r.volumeContext.isNotEmpty) context(r.volumeContext, r.volumeId);
        params(r.parameters, {});
      case GetCapacityRequest():
        only(r, {'volumeCapabilities'});
        capabilities(r.volumeCapabilities, required: false);
      case CreateSnapshotRequest():
        only(r, {'name', 'sourceVolumeId', 'parameters'});
        leaf(r.name);
        leaf(r.sourceVolumeId);
        params(r.parameters, {'detachedSnapshots'});
      case DeleteSnapshotRequest():
        only(r, {'snapshotId'});
        snapshotId(r.snapshotId);
      case ListSnapshotsRequest():
        only(r, {
          'snapshotId',
          'sourceVolumeId',
          'maxEntries',
          'startingToken',
        });
        if (r.snapshotId.isNotEmpty) snapshotId(r.snapshotId);
        if (r.sourceVolumeId.isNotEmpty) leaf(r.sourceVolumeId);
        page(r.maxEntries);
      case ListVolumesRequest():
        only(r, {'maxEntries', 'startingToken'});
        page(r.maxEntries);
      case GetPluginInfoRequest() ||
          GetPluginCapabilitiesRequest() ||
          ProbeRequest() ||
          ControllerGetCapabilitiesRequest():
        only(r, {});
      default:
        throw const GrpcError.unimplemented('Method not supported');
    }
  }

  void volume(Volume v, {String? expectedId}) {
    only(v, {'volumeId', 'capacityBytes', 'volumeContext', 'contentSource'});
    leaf(v.volumeId);
    if (expectedId != null && expectedId != v.volumeId) invalid();
    if (v.capacityBytes.toInt() < 0 ||
        v.capacityBytes.toInt() > config.maxBytes)
      invalid();
    context(v.volumeContext, v.volumeId);
    if (v.hasContentSource()) source(v.contentSource);
  }

  void snapshot(Snapshot s, {String? expectedId, String? expectedSource}) {
    only(s, {
      'snapshotId',
      'sourceVolumeId',
      'sizeBytes',
      'creationTime',
      'readyToUse',
    });
    snapshotId(s.snapshotId);
    leaf(s.sourceVolumeId);
    if (s.snapshotId.split(RegExp(r'[@/]')).first != s.sourceVolumeId ||
        (expectedId != null && expectedId != s.snapshotId) ||
        (expectedSource != null && expectedSource != s.sourceVolumeId) ||
        s.sizeBytes.toInt() < 0 ||
        s.sizeBytes.toInt() > config.maxBytes ||
        !s.hasCreationTime())
      invalid();
    only(s.creationTime, {'seconds', 'nanos'});
    if (s.creationTime.seconds.toInt() < 0 ||
        s.creationTime.nanos < 0 ||
        s.creationTime.nanos > 999999999)
      invalid();
  }
}
