import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:fixnum/fixnum.dart';
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

import 'config.dart';
import 'policy.dart';
import 'wire.dart';
import 'version.dart';
import 'generated/csi.pbgrpc.dart';

/// Common orchestration only; every wire method has a typed handler below.
class Gateway {
  final GatewayConfig config;
  late final Policy policy = Policy(config);
  final ControllerClient controller;
  final IdentityClient identity;
  final void Function(String) audit;
  final _pages =
      <
        String,
        ({String binding, GeneratedMessage response, DateTime expires})
      >{};
  Gateway(this.config, ClientChannel channel, {void Function(String)? audit})
    : controller = ControllerClient(channel),
      identity = IdentityClient(channel),
      audit = audit ?? ((_) {});

  void authorize(ServiceCall call, String method, GeneratedMessage request) {
    final cert = call.clientCertificate;
    if (cert == null ||
        sha256.convert(cert.der).toString() != config.clientSha256) {
      throw const GrpcError.unauthenticated('Client identity rejected');
    }
    if (!config.methods.contains(method))
      throw const GrpcError.unimplemented('Method disabled');
    // No client metadata or credentials are ever forwarded upstream.
    policy.request(request);
    if (call.isCanceled) throw const GrpcError.cancelled('Call cancelled');
    if (call.isTimedOut)
      throw const GrpcError.deadlineExceeded('Deadline exceeded');
  }

  Future<T> invoke<T extends GeneratedMessage>(
    ServiceCall call,
    String method,
    GeneratedMessage request,
    ResponseFuture<T> Function(CallOptions) send,
    void Function(T) validate,
  ) async {
    try {
      authorize(call, method, request);
      final remaining = call.deadline?.difference(DateTime.now());
      if (remaining != null && remaining <= Duration.zero)
        throw const GrpcError.deadlineExceeded('Deadline exceeded');
      final future = send(CallOptions(timeout: remaining));
      // ServiceCall exposes no cancellation event. Poll and cancel the actual
      // upstream call; deadline propagation also covers an unresponsive backend.
      final timer = Timer.periodic(const Duration(milliseconds: 10), (_) {
        if (call.isCanceled || call.isTimedOut) unawaited(future.cancel());
      });
      late T response;
      try {
        response = await future;
      } finally {
        timer.cancel();
      }
      if (call.isTimedOut)
        throw const GrpcError.deadlineExceeded('Deadline exceeded');
      if (call.isCanceled) throw const GrpcError.cancelled('Call cancelled');
      try {
        knownFields(response);
        validate(response);
      } on Object {
        unsafeResponse();
      }
      audit('$method OK');
      return response;
    } on GrpcError catch (e) {
      audit('$method ${e.code}');
      // Preserve status semantics, never messages, details, metadata or stack.
      throw GrpcError.custom(e.code, 'CSI operation failed');
    } on Object {
      audit('$method ${StatusCode.unavailable}');
      throw const GrpcError.unavailable('Backend unavailable');
    }
  }

  Set<int> get allowedCapabilities {
    bool both(String a, String b) =>
        config.methods.contains(a) && config.methods.contains(b);
    return {
      if (both('CreateVolume', 'DeleteVolume')) 1,
      if (config.methods.contains('ListVolumes')) 3,
      if (config.methods.contains('GetCapacity')) 4,
      if (both('CreateSnapshot', 'DeleteSnapshot')) 5,
      if (config.methods.contains('ListSnapshots')) 6,
      if (config.methods.contains('CreateVolume')) 7,
      if (config.methods.contains('ControllerExpandVolume')) 9,
      if (config.methods.contains('ControllerGetVolume')) 12,
    };
  }

  void status(GeneratedMessage s) {
    only(s, {});
  }

  void validateResponse(GeneratedMessage response, GeneratedMessage request) {
    switch (response) {
      case CreateVolumeResponse():
        only(response, {'volume'});
        if (!response.hasVolume()) invalid();
        final r = request as CreateVolumeRequest;
        policy.volume(response.volume, expectedId: r.name);
        final v = response.volume;
        if (v.hasContentSource() != r.hasVolumeContentSource() ||
            (v.hasContentSource() && v.contentSource != r.volumeContentSource))
          invalid();
        if (r.hasCapacityRange() &&
            (v.capacityBytes < r.capacityRange.requiredBytes ||
                (r.capacityRange.limitBytes.toInt() > 0 &&
                    v.capacityBytes > r.capacityRange.limitBytes)))
          invalid();
      case DeleteVolumeResponse() || DeleteSnapshotResponse():
        only(response, {});
      case ControllerExpandVolumeResponse():
        only(response, {'capacityBytes', 'nodeExpansionRequired'});
        final r = request as ControllerExpandVolumeRequest;
        if (response.capacityBytes < r.capacityRange.requiredBytes ||
            response.capacityBytes.toInt() > config.maxBytes ||
            (r.capacityRange.limitBytes.toInt() > 0 &&
                response.capacityBytes > r.capacityRange.limitBytes) ||
            (config.isNfs && response.nodeExpansionRequired))
          invalid();
      case ControllerGetVolumeResponse():
        only(response, {'volume', 'status'});
        if (!response.hasVolume()) invalid();
        policy.volume(
          response.volume,
          expectedId: (request as ControllerGetVolumeRequest).volumeId,
        );
        if (response.hasStatus()) status(response.status);
      case ValidateVolumeCapabilitiesResponse():
        only(response, {'confirmed', 'message'});
        response.message = ''; // Backend explanatory text may expose internals.
        if (response.hasConfirmed()) {
          only(response.confirmed, {
            'volumeContext',
            'volumeCapabilities',
            'parameters',
          });
          final r = request as ValidateVolumeCapabilitiesRequest;
          policy.capabilities(response.confirmed.volumeCapabilities);
          if (response.confirmed.volumeCapabilities.length !=
                  r.volumeCapabilities.length ||
              !Iterable<int>.generate(r.volumeCapabilities.length).every(
                (i) =>
                    r.volumeCapabilities[i] ==
                    response.confirmed.volumeCapabilities[i],
              ) ||
              response.confirmed.parameters.isNotEmpty)
            invalid();
          if (response.confirmed.volumeContext.isNotEmpty)
            policy.context(response.confirmed.volumeContext, r.volumeId);
        }
      case GetCapacityResponse():
        only(response, {
          'availableCapacity',
          'maximumVolumeSize',
          'minimumVolumeSize',
        });
        if (response.availableCapacity.toInt() < 0) invalid();
        if (response.hasMaximumVolumeSize() &&
            response.maximumVolumeSize.value.toInt() <= 0)
          invalid();
        if (response.hasMinimumVolumeSize() &&
            response.minimumVolumeSize.value.toInt() < 0)
          invalid();
        if (response.hasMinimumVolumeSize() &&
            response.minimumVolumeSize.value.toInt() >
                min(
                  config.maxBytes,
                  response.hasMaximumVolumeSize()
                      ? response.maximumVolumeSize.value.toInt()
                      : config.maxBytes,
                ))
          invalid();
      case CreateSnapshotResponse():
        only(response, {'snapshot'});
        if (!response.hasSnapshot()) invalid();
        final r = request as CreateSnapshotRequest;
        final detached = r.parameters['detachedSnapshots'] == 'true';
        policy.snapshot(
          response.snapshot,
          expectedSource: r.sourceVolumeId,
          expectedId: '${r.sourceVolumeId}${detached ? '/' : '@'}${r.name}',
        );
      case ListVolumesResponse():
        only(response, {'entries', 'nextToken'});
        if (response.nextToken.isNotEmpty) invalid();
        for (final e in response.entries) {
          only(e, {'volume', 'status'});
          if (!e.hasVolume()) invalid();
          policy.volume(e.volume);
          if (e.hasStatus()) status(e.status);
        }
      case ListSnapshotsResponse():
        only(response, {'entries', 'nextToken'});
        if (response.nextToken.isNotEmpty) invalid();
        final r = request as ListSnapshotsRequest;
        for (final e in response.entries) {
          only(e, {'snapshot'});
          if (!e.hasSnapshot()) invalid();
          policy.snapshot(
            e.snapshot,
            expectedId: r.snapshotId.isEmpty ? null : r.snapshotId,
            expectedSource: r.sourceVolumeId.isEmpty ? null : r.sourceVolumeId,
          );
        }
      default:
        invalid();
    }
  }

  String binding(GeneratedMessage request) {
    if (request is ListSnapshotsRequest)
      return 'snapshots:${request.snapshotId}:${request.sourceVolumeId}:${request.maxEntries}';
    return 'volumes:${(request as ListVolumesRequest).maxEntries}';
  }

  GeneratedMessage readPage(
    ServiceCall call,
    String method,
    GeneratedMessage request,
    String token,
  ) {
    authorize(call, method, request);
    _pages.removeWhere((_, p) => p.expires.isBefore(DateTime.now()));
    final page = _pages[token];
    if (page == null || page.binding != binding(request))
      throw const GrpcError.aborted('Pagination expired or invalid');
    return page.response.deepCopy();
  }

  T paginate<T extends GeneratedMessage>(
    T response,
    GeneratedMessage request,
    int count,
  ) {
    if (count == 0) return response;
    final length = response is ListVolumesResponse
        ? response.entries.length
        : (response as ListSnapshotsResponse).entries.length;
    if (length <= count) return response;
    _pages.removeWhere((_, p) => p.expires.isBefore(DateTime.now()));
    final expires = DateTime.now().add(const Duration(minutes: 5));
    final random = Random.secure();
    var next = '';
    for (
      var start = ((length - 1) ~/ count) * count;
      start >= 0;
      start -= count
    ) {
      final end = min(start + count, length);
      final GeneratedMessage page = response is ListVolumesResponse
          ? ListVolumesResponse(
              entries: response.entries.sublist(start, end),
              nextToken: next,
            )
          : ListSnapshotsResponse(
              entries: (response as ListSnapshotsResponse).entries.sublist(
                start,
                end,
              ),
              nextToken: next,
            );
      if (start == 0) return page as T;
      next = base64UrlEncode(List.generate(32, (_) => random.nextInt(256)));
      _pages[next] = (
        binding: binding(request),
        response: page,
        expires: expires,
      );
    }
    throw StateError('Unreachable pagination state');
  }
}

class GatewayIdentity extends IdentityServiceBase with StrictWire {
  final Gateway g;
  GatewayIdentity(this.g);
  @override
  Future<GetPluginInfoResponse> getPluginInfo(
    ServiceCall c,
    GetPluginInfoRequest r,
  ) async {
    await g.invoke(
      c,
      'GetPluginInfo',
      r,
      (o) => g.identity.getPluginInfo(r, options: o),
      (v) {
        only(v, {'name', 'vendorVersion', 'manifest'});
        if (v.name != 'org.democratic-csi') invalid();
      },
    );
    return GetPluginInfoResponse(
      name: 'org.democratic-csi',
      vendorVersion: 'csi-gatekeeper-$packageVersion',
    );
  }

  @override
  Future<GetPluginCapabilitiesResponse> getPluginCapabilities(
    ServiceCall c,
    GetPluginCapabilitiesRequest r,
  ) async {
    final v = await g.invoke(
      c,
      'GetPluginCapabilities',
      r,
      (o) => g.identity.getPluginCapabilities(r, options: o),
      (v) {
        only(v, {'capabilities'});
      },
    );
    return GetPluginCapabilitiesResponse(
      capabilities: v.capabilities.where(
        (p) =>
            (g.config.methods.contains('ControllerGetCapabilities') &&
                p.hasService() &&
                p.service.type ==
                    PluginCapability_Service_Type.CONTROLLER_SERVICE) ||
            (g.config.methods.contains('ControllerExpandVolume') &&
                p.hasVolumeExpansion() &&
                {
                  PluginCapability_VolumeExpansion_Type.ONLINE,
                  PluginCapability_VolumeExpansion_Type.OFFLINE,
                }.contains(p.volumeExpansion.type)),
      ),
    );
  }

  @override
  Future<ProbeResponse> probe(ServiceCall c, ProbeRequest r) =>
      g.invoke(c, 'Probe', r, (o) => g.identity.probe(r, options: o), (v) {
        only(v, {'ready'});
      });
}

class GatewayController extends ControllerServiceBase with StrictWire {
  final Gateway g;
  GatewayController(this.g);
  @override
  Future<CreateVolumeResponse> createVolume(
    ServiceCall c,
    CreateVolumeRequest r,
  ) => g.invoke(
    c,
    'CreateVolume',
    r,
    (o) => g.controller.createVolume(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<DeleteVolumeResponse> deleteVolume(
    ServiceCall c,
    DeleteVolumeRequest r,
  ) => g.invoke(
    c,
    'DeleteVolume',
    r,
    (o) => g.controller.deleteVolume(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<ControllerExpandVolumeResponse> controllerExpandVolume(
    ServiceCall c,
    ControllerExpandVolumeRequest r,
  ) => g.invoke(
    c,
    'ControllerExpandVolume',
    r,
    (o) => g.controller.controllerExpandVolume(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<ControllerGetVolumeResponse> controllerGetVolume(
    ServiceCall c,
    ControllerGetVolumeRequest r,
  ) => g.invoke(
    c,
    'ControllerGetVolume',
    r,
    (o) => g.controller.controllerGetVolume(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<ValidateVolumeCapabilitiesResponse> validateVolumeCapabilities(
    ServiceCall c,
    ValidateVolumeCapabilitiesRequest r,
  ) => g.invoke(
    c,
    'ValidateVolumeCapabilities',
    r,
    (o) => g.controller.validateVolumeCapabilities(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<GetCapacityResponse> getCapacity(
    ServiceCall c,
    GetCapacityRequest r,
  ) async {
    final v = await g.invoke(
      c,
      'GetCapacity',
      r,
      (o) => g.controller.getCapacity(r, options: o),
      (v) => g.validateResponse(v, r),
    );
    return GetCapacityResponse(
      availableCapacity: v.availableCapacity,
      maximumVolumeSize: Int64Value(
        value: Int64(
          min(
            g.config.maxBytes,
            v.hasMaximumVolumeSize()
                ? v.maximumVolumeSize.value.toInt()
                : g.config.maxBytes,
          ),
        ),
      ),
      minimumVolumeSize: v.hasMinimumVolumeSize() ? v.minimumVolumeSize : null,
    );
  }

  @override
  Future<CreateSnapshotResponse> createSnapshot(
    ServiceCall c,
    CreateSnapshotRequest r,
  ) => g.invoke(
    c,
    'CreateSnapshot',
    r,
    (o) => g.controller.createSnapshot(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<DeleteSnapshotResponse> deleteSnapshot(
    ServiceCall c,
    DeleteSnapshotRequest r,
  ) => g.invoke(
    c,
    'DeleteSnapshot',
    r,
    (o) => g.controller.deleteSnapshot(r, options: o),
    (v) => g.validateResponse(v, r),
  );
  @override
  Future<ControllerGetCapabilitiesResponse> controllerGetCapabilities(
    ServiceCall c,
    ControllerGetCapabilitiesRequest r,
  ) async {
    final v = await g.invoke(
      c,
      'ControllerGetCapabilities',
      r,
      (o) => g.controller.controllerGetCapabilities(r, options: o),
      (v) {
        only(v, {'capabilities'});
      },
    );
    return ControllerGetCapabilitiesResponse(
      capabilities: v.capabilities.where(
        (p) => p.hasRpc() && g.allowedCapabilities.contains(p.rpc.type.value),
      ),
    );
  }

  @override
  Future<ListVolumesResponse> listVolumes(
    ServiceCall c,
    ListVolumesRequest r,
  ) async {
    if (r.startingToken.isNotEmpty)
      return g.readPage(c, 'ListVolumes', r, r.startingToken)
          as ListVolumesResponse;
    final v = await g.invoke(
      c,
      'ListVolumes',
      r,
      (o) => g.controller.listVolumes(ListVolumesRequest(), options: o),
      (v) => g.validateResponse(v, r),
    );
    return g.paginate(v, r, r.maxEntries);
  }

  @override
  Future<ListSnapshotsResponse> listSnapshots(
    ServiceCall c,
    ListSnapshotsRequest r,
  ) async {
    if (r.startingToken.isNotEmpty)
      return g.readPage(c, 'ListSnapshots', r, r.startingToken)
          as ListSnapshotsResponse;
    final v = await g.invoke(
      c,
      'ListSnapshots',
      r,
      (o) => g.controller.listSnapshots(
        ListSnapshotsRequest(
          snapshotId: r.snapshotId,
          sourceVolumeId: r.sourceVolumeId,
        ),
        options: o,
      ),
      (v) => g.validateResponse(v, r),
    );
    return g.paginate(v, r, r.maxEntries);
  }

  @override
  Future<ControllerPublishVolumeResponse> controllerPublishVolume(
    ServiceCall c,
    ControllerPublishVolumeRequest r,
  ) async => throw const GrpcError.unimplemented('Method not supported');
  @override
  Future<ControllerUnpublishVolumeResponse> controllerUnpublishVolume(
    ServiceCall c,
    ControllerUnpublishVolumeRequest r,
  ) async => throw const GrpcError.unimplemented('Method not supported');
  @override
  Future<ControllerModifyVolumeResponse> controllerModifyVolume(
    ServiceCall c,
    ControllerModifyVolumeRequest r,
  ) async => throw const GrpcError.unimplemented('Method not supported');
}
