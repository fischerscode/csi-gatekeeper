import 'package:csi_gatekeeper/src/generated/csi.pbgrpc.dart';
import 'package:csi_gatekeeper/src/version.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';

import 'support.dart';

void main() {
  for (final iscsi in [false, true]) {
    for (final custom in [false, true]) {
      final name = custom
          ? '${iscsi ? 'iscsi' : 'nfs'}.csi.atlas.local'
          : 'org.democratic-csi';
      group('${iscsi ? 'iSCSI' : 'NFS'} identity $name', () {
        late Rig rig;
        late IdentityClient client;
        setUpAll(() async {
          rig = Rig();
          await rig.init(iscsi: iscsi, driverName: custom ? name : null);
          client = IdentityClient(await rig.client());
        });
        tearDownAll(() => rig.close());
        setUp(() {
          rig.calls.clear();
          rig.handlers.clear();
        });
        test('returns configured identity and gateway version', () async {
          rig.handlers['GetPluginInfo'] = (_, __) async =>
              GetPluginInfoResponse(
                name: name,
                vendorVersion: 'backend-version',
                manifest: {'private': 'backend-only'}.entries,
              );
          final response = await client.getPluginInfo(GetPluginInfoRequest());
          expect(response.name, name);
          expect(response.vendorVersion, 'csi-gatekeeper-$packageVersion');
          expect(response.manifest, isEmpty);
          expect(rig.calls.single.method, 'GetPluginInfo');
        });
        test('rejects mismatched and missing backend identities', () async {
          for (final other in [
            'org.democratic-csi',
            'nfs.csi.atlas.local',
            'iscsi.csi.atlas.local',
            'foreign.csi.local',
            name.toUpperCase(),
            '',
          ].where((other) => other != name)) {
            rig.handlers['GetPluginInfo'] = (_, __) async =>
                GetPluginInfoResponse(name: other, vendorVersion: 'backend');
            await expectLater(
              client.getPluginInfo(GetPluginInfoRequest()),
              throwsA(
                isA<GrpcError>()
                    .having((e) => e.code, 'code', StatusCode.dataLoss)
                    .having(
                      (e) => e.message,
                      'message',
                      'CSI operation failed',
                    ),
              ),
            );
          }
        });
        test('cluster metadata cannot override the trusted name', () async {
          final response = await client.getPluginInfo(
            GetPluginInfoRequest(),
            options: CallOptions(
              metadata: {
                'driverName': 'foreign.csi.local',
                'driver-name': 'foreign.csi.local',
              },
            ),
          );
          expect(response.name, name);
          expect(
            rig.calls.single.call.clientMetadata,
            isNot(contains('driver-name')),
          );
        });
        test('request fields cannot override the trusted name', () async {
          final request = GetPluginInfoRequest()
            ..mergeFromBuffer([10, 3, 98, 97, 100]);
          await expectLater(
            client.getPluginInfo(request),
            throwsA(
              isA<GrpcError>().having(
                (e) => e.code,
                'code',
                StatusCode.internal,
              ),
            ),
          );
          expect(rig.calls, isEmpty);
        });
      });
    }
  }
}
