import 'dart:convert';
import 'dart:io';

import 'package:csi_gatekeeper/src/config.dart';
import 'package:test/test.dart';

Map<String, dynamic> configuration() =>
    jsonDecode(File('deploy/config.example.json').readAsStringSync())
          as Map<String, dynamic>
      ..['clientSha256'] = 'a' * 64;

void main() {
  test('omitted driverName preserves legacy configuration', () {
    expect(
      GatewayConfig.fromJson(configuration()..remove('driverName')).driverName,
      'org.democratic-csi',
    );
  });
  test('accepts CSI domain names including the 63-character boundary', () {
    for (final name in [
      'org.democratic-csi',
      'nfs.csi.atlas.local',
      'iscsi.csi.atlas.local',
      'A1.driver-2',
      'a',
      'a' * 63,
    ]) {
      expect(
        GatewayConfig.fromJson(configuration()..['driverName'] = name)
            .driverName,
        name,
      );
    }
  });
  test('rejects invalid names and explicit non-string configuration', () {
    for (final name in [
      null,
      42,
      true,
      [],
      {},
      '',
      'a' * 64,
      '.driver',
      'driver.',
      'driver..name',
      '-driver',
      'driver-',
      'driver.-name',
      'driver-.name',
      'driver_name',
      ' driver',
      'driver ',
      'driver/name',
      'driver:name',
      'drivér',
      'driver\n',
    ]) {
      expect(
        () => GatewayConfig.fromJson(configuration()..['driverName'] = name),
        throwsFormatException,
        reason: 'Invalid driverName: $name',
      );
    }
  });
  test('both deployment examples have valid trusted configuration', () {
    for (final path in [
      'deploy/config.example.json',
      'deploy/config.iscsi.example.json',
    ]) {
      final json =
          jsonDecode(File(path).readAsStringSync()) as Map<String, dynamic>;
      json['clientSha256'] = 'a' * 64;
      expect(() => GatewayConfig.fromJson(json), returnsNormally);
    }
  });
}
