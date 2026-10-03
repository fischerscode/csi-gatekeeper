import 'dart:async';
import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:csi_gatekeeper/src/config.dart';
import 'package:csi_gatekeeper/src/gateway.dart';
import 'package:csi_gatekeeper/src/tls.dart';

Future<void> main(List<String> args) async {
  if (args.length != 1 || !Platform.isLinux) {
    stderr.writeln(
      'Usage: csi-gatekeeper /absolute/path/config.json (Linux only)',
    );
    exitCode = 64;
    return;
  }
  ClientChannel? backend;
  Server? server;
  try {
    final config = await GatewayConfig.load(args.single);
    backend = ClientChannel(
      InternetAddress(config.backendSocket, type: InternetAddressType.unix),
      port: 0,
      options: const ChannelOptions(credentials: ChannelCredentials.insecure()),
    );
    final gateway = Gateway(config, backend, audit: stdout.writeln);
    server = Server.create(
      services: [GatewayIdentity(gateway), GatewayController(gateway)],
    );
    await server.serve(
      address: config.listenAddress,
      port: config.port,
      security: PinnedTlsCredentials.load(config),
      requestClientCertificate: true,
      requireClientCertificate: true,
    );
    stdout.writeln('CSI gateway listening');
    final stop = Completer<void>();
    final signals = [ProcessSignal.sigterm, ProcessSignal.sigint]
        .map(
          (s) => s.watch().listen((_) {
            if (!stop.isCompleted) stop.complete();
          }),
        )
        .toList();
    await stop.future;
    for (final signal in signals) {
      await signal.cancel();
    }
  } on Object {
    stderr.writeln('CSI gateway startup or runtime failure');
    exitCode = 1;
  } finally {
    await server?.shutdown();
    await backend?.shutdown();
  }
}
