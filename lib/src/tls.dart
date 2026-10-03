import 'dart:io';

import 'package:grpc/grpc.dart';

import 'config.dart';

/// Uses only the configured CA. Gateway.authorize pins the leaf per RPC.
class PinnedTlsCredentials extends ServerCredentials {
  final SecurityContext _context;
  final String fingerprint;
  PinnedTlsCredentials(this._context, this.fingerprint);
  factory PinnedTlsCredentials.load(GatewayConfig c) {
    final context = SecurityContext(withTrustedRoots: false)
      ..useCertificateChain(c.certificate)
      ..usePrivateKey(c.privateKey)
      ..setTrustedCertificates(c.clientCa)
      ..setAlpnProtocols(['h2'], true);
    return PinnedTlsCredentials(context, c.clientSha256);
  }
  @override
  SecurityContext get securityContext => _context;
}
