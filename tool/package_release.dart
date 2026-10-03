import 'dart:convert';
import 'dart:io';

import 'package:crypto/crypto.dart';
import 'package:legal/legal.dart';

import '../lib/src/version.dart';

/// Melos uses package-prefixed tags; manual releases may use ordinary SemVer tags.
void validateReleaseTag(String tag, String version) {
  if (!{'v$version', 'csi_gatekeeper-v$version'}.contains(tag)) {
    throw StateError('Release tag must match the committed package version');
  }
}

/// Enforce the project's policy before rendering original license/notice texts.
String checkedNotices(LicenseReport report, LicensePolicy policy) {
  final result = report.check(policy);
  if (!result.isSuccess) {
    throw StateError(
      'License policy requires review: ${result.findings.where((f) => f.isFailure).map((f) => f.package.dependency.name).join(', ')}',
    );
  }
  return report.renderThirdPartyLicenses(policy: policy);
}

/// Preserve additional nested vendored notices outside legal's root scan.
Future<String> nestedNotices(LicenseReport report) async {
  final text = StringBuffer();
  for (final package in report.packages) {
    final directory = Directory.fromUri(package.dependency.root);
    final known = package.documents.map((d) => d.path).toSet();
    final files = await directory
        .list(recursive: true, followLinks: false)
        .where((e) => e is File)
        .cast<File>()
        .toList();
    files.sort((a, b) => a.path.compareTo(b.path));
    for (final file in files) {
      final relative = file.path.substring(directory.path.length + 1);
      final name = file.uri.pathSegments.last.toUpperCase();
      if (known.contains(relative) ||
          relative.startsWith('.git/') ||
          relative.startsWith('.dart_tool/'))
        continue;
      if (name.startsWith('NOTICE') ||
          name.startsWith('COPYING') ||
          name.startsWith('LICENSE') ||
          name.startsWith('LICENCE')) {
        text.writeln(
          '\n--- ${package.dependency.name}: $relative ---\n${await file.readAsString()}',
        );
      }
    }
  }
  return text.toString();
}

/// ZIPs are created fresh so repeated packaging cannot retain stale entries.
Future<void> createZip(Directory bundle, File archive) async {
  if (await archive.exists()) await archive.delete();
  final result = await Process.run('zip', [
    '-q',
    '-r',
    archive.absolute.path,
    bundle.uri.pathSegments.where((s) => s.isNotEmpty).last,
  ], workingDirectory: bundle.parent.path);
  if (result.exitCode != 0) throw StateError('ZIP archive creation failed');
}

Future<void> packageRelease({
  String? tag,
  String output = 'build/release',
}) async {
  if (tag != null) validateReleaseTag(tag, packageVersion);
  if (!Platform.isLinux || !Platform.version.contains('linux_x64')) {
    throw StateError('This release profile supports Linux x64 only');
  }
  final project = await LegalProject.load('.');
  final pubspec = await File('pubspec.yaml').readAsString();
  if (!RegExp(
    '^version: ${RegExp.escape(packageVersion)}\\s*\$',
    multiLine: true,
  ).hasMatch(pubspec))
    throw StateError('Run tool/sync_version.dart before tagging');
  final report = await project.scan(includeDev: false);
  final packageTexts = checkedNotices(report, project.config.policy);
  final runtime = report.packages.map((p) => p.dependency).toList();
  final sdk = File(Platform.resolvedExecutable).parent.parent;
  final nativeRoot = Directory('licenses/dart-runtime');
  final manifest = jsonDecode(
    await File('${nativeRoot.path}/sources.json').readAsString(),
  ) as Map<String, dynamic>;
  if ((await File('${sdk.path}/version').readAsString()).trim() !=
          manifest['sdkVersion'] ||
      (await File('${sdk.path}/revision').readAsString()).trim() !=
          manifest['sdkRevision']) {
    throw StateError(
      'Dart SDK changed: review and update the native license manifest',
    );
  }
  final notices =
      StringBuffer(
          'Third-party notices for CSI Gatekeeper $packageVersion\n'
          'Runtime dependency closure; development tools are excluded.\n'
          'A dependency may be removed by AOT tree shaking; notices are retained conservatively.\n'
          'These licenses do not set the license of CSI Gatekeeper itself.\n',
        )
        ..write(packageTexts)
        ..write(await nestedNotices(report))
        ..writeln(
          '\n=== Dart SDK ${manifest['sdkVersion']} / embedded runtime ===\n${await File('${sdk.path}/LICENSE').readAsString()}',
        );
  for (final entry
      in (manifest['files'] as List).cast<Map<String, dynamic>>()) {
    final file = File('${nativeRoot.path}/${entry['file']}');
    final bytes = await file.readAsBytes();
    if (sha256.convert(bytes).toString() != entry['sha256'])
      throw StateError('Native license checksum mismatch');
    notices.writeln(
      '\n=== Dart native dependency: ${entry['file']} ===\nSource: ${entry['source']}\n${utf8.decode(bytes)}',
    );
  }
  for (final file in [
    'proto/NOTICE.md',
    'proto/LICENSE',
    'proto/google/LICENSE',
  ]) {
    notices.writeln(
      '\n=== Vendored source: $file ===\n${await File(file).readAsString()}',
    );
  }
  // CSI and Google schema copyright headers supplement the full license texts.
  for (final file in [
    'proto/csi.proto',
    'proto/google/protobuf/timestamp.proto',
    'proto/google/protobuf/wrappers.proto',
    'proto/google/protobuf/descriptor.proto',
  ]) {
    final header = (await File(file).readAsLines())
        .takeWhile((line) => line.startsWith('//') || line.trim().isEmpty)
        .join('\n');
    notices.writeln('\n--- $file attribution ---\n$header');
  }
  await Directory(output).create(recursive: true);
  final staging = await Directory('$output/.bundle').create(recursive: true);
  final stem = 'csi-gatekeeper-$packageVersion-linux-x64';
  final bundle = Directory('${staging.path}/$stem');
  if (await bundle.exists()) await bundle.delete(recursive: true);
  await bundle.create(recursive: true);
  final binary = File('build/csi-gatekeeper');
  if (!await binary.exists())
    throw StateError('Build the AOT executable first');
  await binary.copy('${bundle.path}/csi-gatekeeper');
  final licenseFile = File('$output/THIRD_PARTY_NOTICES.txt');
  await licenseFile.writeAsString(notices.toString());
  await licenseFile.copy('${bundle.path}/THIRD_PARTY_NOTICES.txt');
  await File('LICENSE').copy('${bundle.path}/LICENSE');
  await File('README.md').copy('${bundle.path}/README.md');
  final docs = await Directory('${bundle.path}/docs').create();
  await for (final file in Directory('docs').list()) {
    if (file is File)
      await file.copy('${docs.path}/${file.uri.pathSegments.last}');
  }
  final deploy = await Directory('${bundle.path}/deploy').create();
  await for (final file in Directory('deploy').list()) {
    if (file is File)
      await file.copy('${deploy.path}/${file.uri.pathSegments.last}');
  }
  await File('${bundle.path}/BUILD_INFO.json').writeAsString(
    const JsonEncoder.withIndent('  ').convert({
          'version': packageVersion,
          'tag': tag,
          'platform': 'linux-x64',
          'dartVersion': manifest['sdkVersion'],
          'dartRevision': manifest['sdkRevision'],
          'runtimePackages': {for (final p in runtime) p.name: p.version},
        }) +
        '\n',
  );
  await createZip(bundle, File('$output/$stem.zip'));
  final sums = StringBuffer();
  for (final name in ['$stem.zip']) {
    sums.writeln(
      '${sha256.convert(await File('$output/$name').readAsBytes())}  $name',
    );
  }
  await File('$output/SHA256SUMS').writeAsString(sums.toString());
  stdout.writeln(
    'Packaged $stem with notices for ${runtime.length} runtime Dart packages',
  );
}

Future<void> main(List<String> args) async {
  if (args.length != 1)
    throw const FormatException(
      'Usage: dart run tool/package_release.dart RELEASE_TAG',
    );
  await packageRelease(tag: args.single);
}
