import 'dart:io';

import 'package_release.dart';

/// The normal build produces the complete distributable ZIP, including notices.
Future<void> main(List<String> args) async {
  if (args.isNotEmpty)
    throw const FormatException('Usage: dart run tool/build.dart');
  await Directory('build').create(recursive: true);
  // Remove the previous distributable before starting a potentially failing build.
  final output = Directory('build/release');
  if (await output.exists()) await output.delete(recursive: true);
  final result = await Process.run(Platform.resolvedExecutable, [
    'compile',
    'exe',
    'bin/csi_gatekeeper.dart',
    '-o',
    'build/csi-gatekeeper',
  ]);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
  if (result.exitCode != 0) {
    exitCode = result.exitCode;
    return;
  }
  await packageRelease();
}
