import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';
import 'package:csi_gatekeeper/src/generated/csi.pbgrpc.dart';

import 'support.dart';

void main() {
  late Rig rig;
  late ControllerClient client;
  setUpAll(() async {
    rig = Rig();
    await rig.init(iscsi: true);
    client = ControllerClient(await rig.client());
  });
  tearDownAll(() async => rig.close());
  setUp(() {
    rig.calls.clear();
    rig.handlers.clear();
  });
  CreateVolumeRequest request() => CreateVolumeRequest(
    name: 'pvc-iscsi',
    capacityRange: CapacityRange(requiredBytes: Int64(1073741824)),
    volumeCapabilities: [
      VolumeCapability(
        block: VolumeCapability_BlockVolume(),
        accessMode: VolumeCapability_AccessMode(
          mode: VolumeCapability_AccessMode_Mode.SINGLE_NODE_WRITER,
        ),
      ),
    ],
  );
  test('iSCSI block context and fixed IQN are accepted', () async {
    rig.handlers['CreateVolume'] = (_, __) async => CreateVolumeResponse(
      volume: Volume(
        volumeId: 'pvc-iscsi',
        capacityBytes: Int64(1073741824),
        volumeContext: rig.config.contextFor('pvc-iscsi').entries,
      ),
    );
    final r = await client.createVolume(request());
    expect(
      r.volume.volumeContext['iqn'],
      'iqn.2026-01.example:cluster:pvc-iscsi',
    );
    expect(rig.calls.length, 1);
  });
  test('target command injection, overrides and reader/multi-writer modes rejected before backend', () async {
    for (final r in [
      request()..name = 'x\ncd /iscsi\ndelete all',
      request()..parameters['targetcli'] = 'set attribute authentication=0',
      request()..parameters['iscsi.nameTemplate'] = 'foreign',
      request()
        ..volumeCapabilities.first.accessMode.mode =
            VolumeCapability_AccessMode_Mode.MULTI_NODE_MULTI_WRITER,
    ]) {
      await expectLater(client.createVolume(r), throwsA(isA<GrpcError>()));
      expect(rig.calls, isEmpty);
    }
  });
  test('foreign target response cannot reach the cluster', () async {
    rig.handlers['CreateVolume'] = (_, __) async => CreateVolumeResponse(
      volume: Volume(
        volumeId: 'pvc-iscsi',
        capacityBytes: Int64(1073741824),
        volumeContext: (rig.config.contextFor(
          'pvc-iscsi',
        )..['iqn'] = 'iqn.2026-01.example:foreign').entries,
      ),
    );
    await expectLater(
      client.createVolume(request()),
      throwsA(
        isA<GrpcError>().having((e) => e.code, 'code', StatusCode.dataLoss),
      ),
    );
    expect(rig.calls.length, 1);
  });
  test(
    'unavailable actual Unix backend returns sanitized UNAVAILABLE',
    () async {
      for (final channel in rig.channels) {
        await channel.terminate();
      }
      await rig.server.shutdown();
      await rig.backendChannel.terminate();
      await rig.backendServer.shutdown();
      rig.backendChannel = ClientChannel(
        InternetAddress(
          rig.config.backendSocket,
          type: InternetAddressType.unix,
        ),
        port: 0,
        options: const ChannelOptions(
          credentials: ChannelCredentials.insecure(),
        ),
      );
      await rig.start();
      client = ControllerClient(await rig.client());
      await expectLater(
        client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-iscsi')),
        throwsA(
          isA<GrpcError>()
              .having((e) => e.code, 'code', StatusCode.unavailable)
              .having(
                (e) => e.message,
                'message',
                isNot(contains(rig.dir.path)),
              ),
        ),
      );
      expect(rig.calls, isEmpty);
    },
  );
}
