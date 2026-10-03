import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';
import 'package:csi_gatekeeper/src/config.dart';
import 'package:csi_gatekeeper/src/gateway.dart';
import 'package:csi_gatekeeper/src/tls.dart';
import 'package:csi_gatekeeper/src/generated/csi.pbgrpc.dart';

class ClientTls extends ChannelCredentials {
  final SecurityContext context;
  ClientTls(this.context, {String authority = 'localhost'})
    : super.secure(authority: authority);
  @override
  SecurityContext get securityContext => context;
}

class Rig {
  late Directory dir;
  late GatewayConfig config;
  late Server backendServer, server;
  late ClientChannel backendChannel;
  final channels = <ClientChannel>[];
  final calls =
      <({String method, GeneratedMessage request, ServiceCall call})>[];
  final audit = <String>[];
  final handlers =
      <
        String,
        Future<GeneratedMessage> Function(GeneratedMessage, ServiceCall)
      >{};
  late Gateway gateway;
  Future<void> openssl(List<String> args) async {
    final result = await Process.run(
      'openssl',
      args,
      workingDirectory: dir.path,
    );
    if (result.exitCode != 0)
      throw StateError('Test certificate generation failed');
  }

  Future<void> init({bool iscsi = false, String? driverName}) async {
    dir = await Directory.systemTemp.createTemp('csi-gatekeeper-test-');
    await openssl([
      'req',
      '-x509',
      '-newkey',
      'rsa:2048',
      '-nodes',
      '-keyout',
      'ca.key',
      '-out',
      'ca.pem',
      '-days',
      '1',
      '-subj',
      '/CN=Test CA',
    ]);
    for (final name in ['server', 'allowed', 'denied']) {
      await openssl([
        'req',
        '-newkey',
        'rsa:2048',
        '-nodes',
        '-keyout',
        '$name.key',
        '-out',
        '$name.csr',
        '-subj',
        '/CN=$name',
      ]);
      await File('${dir.path}/$name.ext').writeAsString(
        name == 'server'
            ? 'subjectAltName=DNS:localhost\nextendedKeyUsage=serverAuth\n'
            : 'extendedKeyUsage=clientAuth\n',
      );
      await openssl([
        'x509',
        '-req',
        '-in',
        '$name.csr',
        '-CA',
        'ca.pem',
        '-CAkey',
        'ca.key',
        '-CAcreateserial',
        '-out',
        '$name.pem',
        '-days',
        '1',
        '-extfile',
        '$name.ext',
      ]);
    }
    await openssl([
      'req',
      '-x509',
      '-newkey',
      'rsa:2048',
      '-nodes',
      '-keyout',
      'untrusted.key',
      '-out',
      'untrusted.pem',
      '-days',
      '1',
      '-subj',
      '/CN=Untrusted',
    ]);
    await openssl([
      'x509',
      '-in',
      'allowed.pem',
      '-outform',
      'DER',
      '-out',
      'allowed.der',
    ]);
    config = GatewayConfig.fromJson({
      'listenAddress': '127.0.0.1',
      'port': 0,
      'backendSocket': '${dir.path}/backend.sock',
      'certificate': '${dir.path}/server.pem',
      'privateKey': '${dir.path}/server.key',
      'clientCa': '${dir.path}/ca.pem',
      'clientSha256': sha256
          .convert(await File('${dir.path}/allowed.der').readAsBytes())
          .toString(),
      'profile': 'democratic-csi-1.9.3-${iscsi ? 'iscsi' : 'nfs'}',
      if (driverName != null) 'driverName': driverName,
      'volumeParent': 'tank/atlas/cluster/volumes',
      'snapshotParent': 'tank/atlas/cluster/snapshots',
      'maxBytes': 1099511627776,
      'methods': supportedMethods.toList(),
      'parameters': {
        'detachedSnapshots': ['true', 'false'],
        'detachedVolumesFromSnapshots': ['true', 'false'],
        'detachedVolumesFromVolumes': ['true', 'false'],
      },
      'context': iscsi
          ? {
              'node_attach_driver': 'iscsi',
              'portal': '192.0.2.1:3260',
              'portals': '',
              'interface': '',
              'iqn': 'iqn.2026-01.example:cluster:{id}',
              'lun': '0',
              'provisioner_driver': 'zfs-generic-iscsi',
            }
          : {
              'node_attach_driver': 'nfs',
              'server': '192.0.2.1',
              'share': '/srv/atlas/cluster/{id}',
              'provisioner_driver': 'zfs-generic-nfs',
            },
    });
    backendServer = Server.create(
      services: [FakeIdentity(this), FakeController(this)],
    );
    await backendServer.serve(
      address: InternetAddress(
        config.backendSocket,
        type: InternetAddressType.unix,
      ),
      port: 0,
    );
    backendChannel = ClientChannel(
      InternetAddress(config.backendSocket, type: InternetAddressType.unix),
      port: 0,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    await start();
  }

  Future<void> start() async {
    gateway = Gateway(config, backendChannel, audit: audit.add);
    server = Server.create(
      services: [GatewayIdentity(gateway), GatewayController(gateway)],
    );
    await server.serve(
      address: '127.0.0.1',
      port: 0,
      security: PinnedTlsCredentials.load(config),
      requestClientCertificate: true,
      requireClientCertificate: true,
    );
  }

  Future<ClientChannel> client([String? name = 'allowed']) async {
    final context = SecurityContext(withTrustedRoots: false)
      ..setTrustedCertificates('${dir.path}/ca.pem')
      ..setAlpnProtocols(['h2'], false);
    if (name != null)
      context
        ..useCertificateChain('${dir.path}/$name.pem')
        ..usePrivateKey('${dir.path}/$name.key');
    final channel = ClientChannel(
      '127.0.0.1',
      port: server.port!,
      options: ChannelOptions(credentials: ClientTls(context)),
    );
    channels.add(channel);
    return channel;
  }

  Future<T> reply<T extends GeneratedMessage>(
    String method,
    GeneratedMessage request,
    ServiceCall call,
    T defaultResponse,
  ) async {
    calls.add((method: method, request: request.deepCopy(), call: call));
    final handler = handlers[method];
    return handler == null
        ? defaultResponse
        : await handler(request, call) as T;
  }

  Future<void> close() async {
    for (final c in channels) {
      await c.terminate();
    }
    await server.shutdown();
    await backendChannel.shutdown();
    await backendServer.shutdown();
    await dir.delete(recursive: true);
  }
}

class FakeIdentity extends IdentityServiceBase {
  final Rig rig;
  FakeIdentity(this.rig);
  @override
  Future<GetPluginInfoResponse> getPluginInfo(
    ServiceCall c,
    GetPluginInfoRequest r,
  ) => rig.reply(
    'GetPluginInfo',
    r,
    c,
    GetPluginInfoResponse(name: rig.config.driverName, vendorVersion: '1.9.0'),
  );
  @override
  Future<GetPluginCapabilitiesResponse> getPluginCapabilities(
    ServiceCall c,
    GetPluginCapabilitiesRequest r,
  ) => rig.reply(
    'GetPluginCapabilities',
    r,
    c,
    GetPluginCapabilitiesResponse(
      capabilities: [
        PluginCapability(
          service: PluginCapability_Service(
            type: PluginCapability_Service_Type.CONTROLLER_SERVICE,
          ),
        ),
      ],
    ),
  );
  @override
  Future<ProbeResponse> probe(ServiceCall c, ProbeRequest r) =>
      rig.reply('Probe', r, c, ProbeResponse());
}

class FakeController extends ControllerServiceBase {
  final Rig rig;
  FakeController(this.rig);
  @override
  Future<CreateVolumeResponse> createVolume(
    ServiceCall c,
    CreateVolumeRequest r,
  ) => rig.reply('CreateVolume', r, c, CreateVolumeResponse());
  @override
  Future<DeleteVolumeResponse> deleteVolume(
    ServiceCall c,
    DeleteVolumeRequest r,
  ) => rig.reply('DeleteVolume', r, c, DeleteVolumeResponse());
  @override
  Future<ControllerExpandVolumeResponse> controllerExpandVolume(
    ServiceCall c,
    ControllerExpandVolumeRequest r,
  ) => rig.reply(
    'ControllerExpandVolume',
    r,
    c,
    ControllerExpandVolumeResponse(),
  );
  @override
  Future<ControllerGetVolumeResponse> controllerGetVolume(
    ServiceCall c,
    ControllerGetVolumeRequest r,
  ) => rig.reply('ControllerGetVolume', r, c, ControllerGetVolumeResponse());
  @override
  Future<ValidateVolumeCapabilitiesResponse> validateVolumeCapabilities(
    ServiceCall c,
    ValidateVolumeCapabilitiesRequest r,
  ) => rig.reply(
    'ValidateVolumeCapabilities',
    r,
    c,
    ValidateVolumeCapabilitiesResponse(),
  );
  @override
  Future<GetCapacityResponse> getCapacity(
    ServiceCall c,
    GetCapacityRequest r,
  ) => rig.reply('GetCapacity', r, c, GetCapacityResponse());
  @override
  Future<CreateSnapshotResponse> createSnapshot(
    ServiceCall c,
    CreateSnapshotRequest r,
  ) => rig.reply('CreateSnapshot', r, c, CreateSnapshotResponse());
  @override
  Future<DeleteSnapshotResponse> deleteSnapshot(
    ServiceCall c,
    DeleteSnapshotRequest r,
  ) => rig.reply('DeleteSnapshot', r, c, DeleteSnapshotResponse());
  @override
  Future<ListVolumesResponse> listVolumes(
    ServiceCall c,
    ListVolumesRequest r,
  ) => rig.reply('ListVolumes', r, c, ListVolumesResponse());
  @override
  Future<ListSnapshotsResponse> listSnapshots(
    ServiceCall c,
    ListSnapshotsRequest r,
  ) => rig.reply('ListSnapshots', r, c, ListSnapshotsResponse());
  @override
  Future<ControllerGetCapabilitiesResponse> controllerGetCapabilities(
    ServiceCall c,
    ControllerGetCapabilitiesRequest r,
  ) => rig.reply(
    'ControllerGetCapabilities',
    r,
    c,
    ControllerGetCapabilitiesResponse(),
  );
  @override
  Future<ControllerPublishVolumeResponse> controllerPublishVolume(
    ServiceCall c,
    ControllerPublishVolumeRequest r,
  ) => rig.reply(
    'ControllerPublishVolume',
    r,
    c,
    ControllerPublishVolumeResponse(),
  );
  @override
  Future<ControllerUnpublishVolumeResponse> controllerUnpublishVolume(
    ServiceCall c,
    ControllerUnpublishVolumeRequest r,
  ) => rig.reply(
    'ControllerUnpublishVolume',
    r,
    c,
    ControllerUnpublishVolumeResponse(),
  );
  @override
  Future<ControllerModifyVolumeResponse> controllerModifyVolume(
    ServiceCall c,
    ControllerModifyVolumeRequest r,
  ) => rig.reply(
    'ControllerModifyVolume',
    r,
    c,
    ControllerModifyVolumeResponse(),
  );
}
