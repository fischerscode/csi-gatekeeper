import 'dart:convert';
import 'dart:io';

const supportedMethods = <String>{
  'GetPluginInfo',
  'GetPluginCapabilities',
  'Probe',
  'CreateVolume',
  'DeleteVolume',
  'ControllerExpandVolume',
  'ControllerGetVolume',
  'ListVolumes',
  'ValidateVolumeCapabilities',
  'GetCapacity',
  'ControllerGetCapabilities',
  'CreateSnapshot',
  'DeleteSnapshot',
  'ListSnapshots',
};

/// Local, trusted configuration. No request can change these boundaries.
class GatewayConfig {
  final String listenAddress, backendSocket, certificate, privateKey, clientCa;
  final String clientSha256, profile, volumeParent, snapshotParent;
  final int port, maxBytes;
  final Set<String> methods;
  final Map<String, Set<String>> parameters;
  final Map<String, String> context;
  GatewayConfig.fromJson(Map<String, dynamic> json)
    : listenAddress = json['listenAddress'] as String,
      port = json['port'] as int,
      backendSocket = json['backendSocket'] as String,
      certificate = json['certificate'] as String,
      privateKey = json['privateKey'] as String,
      clientCa = json['clientCa'] as String,
      clientSha256 = json['clientSha256'] as String,
      profile = json['profile'] as String,
      volumeParent = json['volumeParent'] as String,
      snapshotParent = json['snapshotParent'] as String,
      maxBytes = json['maxBytes'] as int,
      methods = (json['methods'] as List).cast<String>().toSet(),
      parameters = (json['parameters'] as Map<String, dynamic>).map(
        (key, value) => MapEntry(key, (value as List).cast<String>().toSet()),
      ),
      context = (json['context'] as Map).cast<String, String>() {
    const keys = {
      'listenAddress',
      'port',
      'backendSocket',
      'certificate',
      'privateKey',
      'clientCa',
      'clientSha256',
      'profile',
      'volumeParent',
      'snapshotParent',
      'maxBytes',
      'methods',
      'parameters',
      'context',
    };
    if (json.keys.any((k) => !keys.contains(k)) ||
        !RegExp(r'^[a-f0-9]{64}$').hasMatch(clientSha256) ||
        !{
          'democratic-csi-1.9.3-nfs',
          'democratic-csi-1.9.3-iscsi',
        }.contains(profile) ||
        port < 0 ||
        port > 65535 ||
        maxBytes < 1073741824 ||
        maxBytes > 9007199254740991 ||
        methods.isEmpty ||
        !supportedMethods.containsAll(methods)) {
      throw const FormatException('Invalid gateway configuration');
    }
    for (final path in [backendSocket, certificate, privateKey, clientCa]) {
      if (!path.startsWith('/') || path.contains('\n')) {
        throw const FormatException('Absolute external paths required');
      }
    }
    final dataset = RegExp(
      r'^[a-zA-Z][a-zA-Z0-9_-]*(/[a-zA-Z0-9][a-zA-Z0-9_-]*)+$',
    );
    if (!dataset.hasMatch(volumeParent) ||
        !dataset.hasMatch(snapshotParent) ||
        volumeParent == snapshotParent ||
        volumeParent.startsWith('$snapshotParent/') ||
        snapshotParent.startsWith('$volumeParent/')) {
      throw const FormatException(
        'Disjoint dedicated dataset parents required',
      );
    }
    const booleanKeys = {
      'detachedSnapshots',
      'detachedVolumesFromSnapshots',
      'detachedVolumesFromVolumes',
    };
    if (parameters.entries.any(
      (e) =>
          !booleanKeys.contains(e.key) ||
          e.value.isEmpty ||
          e.value.any((v) => v != 'true' && v != 'false'),
    )) {
      throw const FormatException('Only explicit boolean parameters supported');
    }
    final expected = isNfs
        ? {
            'node_attach_driver',
            'server',
            'share',
            'provisioner_driver',
            'provisioner_driver_instance_id',
          }
        : {
            'node_attach_driver',
            'portal',
            'portals',
            'interface',
            'iqn',
            'lun',
            'provisioner_driver',
            'provisioner_driver_instance_id',
          };
    if (context.keys.toSet().difference(expected).isNotEmpty ||
        !context.keys.toSet().containsAll(
          expected.difference({'provisioner_driver_instance_id'}),
        ) ||
        context['node_attach_driver'] != (isNfs ? 'nfs' : 'iscsi') ||
        context['provisioner_driver'] !=
            (isNfs ? 'zfs-generic-nfs' : 'zfs-generic-iscsi') ||
        !(context[isNfs ? 'share' : 'iqn']?.endsWith('{id}') ?? false) ||
        context.entries.any(
          (e) =>
              e.value.contains('\n') ||
              (e.key != (isNfs ? 'share' : 'iqn') && e.value.contains('{id}')),
        )) {
      throw const FormatException('Exact backend context templates required');
    }
  }
  bool get isNfs => profile.endsWith('-nfs');
  Map<String, String> contextFor(String id) =>
      context.map((k, v) => MapEntry(k, v.replaceAll('{id}', id)));
  static Future<GatewayConfig> load(String path) async =>
      GatewayConfig.fromJson(
        jsonDecode(await File(path).readAsString()) as Map<String, dynamic>,
      );
}
