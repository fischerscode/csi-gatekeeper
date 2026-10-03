import 'dart:io';

import 'package:legal/legal.dart';
import 'package:test/test.dart';

import '../tool/package_release.dart';

List<Dependency> scanGraph({bool missing = false}) {
  final nodes = [
    {
      'name': 'root',
      'directDependencies': ['runtime'],
      'devDependencies': ['tool'],
    },
    {
      'name': 'runtime',
      'directDependencies': ['shared'],
      'source': 'path',
      'version': '1.0.0',
    },
    if (!missing)
      {
        'name': 'shared',
        'directDependencies': ['runtime'],
        'source': 'path',
        'version': '1.0.0',
      },
    {
      'name': 'tool',
      'directDependencies': ['shared'],
      'source': 'path',
      'version': '1.0.0',
    },
  ];
  return const DependencyScanner().fromResolvedData(
    projectName: 'root',
    graph: {'packages': nodes},
    packageConfig: {
      'configVersion': 2,
      'packages': [
        for (final node in nodes)
          {'name': node['name'], 'rootUri': './${node['name']}/'},
      ],
    },
    packageConfigUri: Uri.file('/tmp/fixture/package_config.json'),
  );
}

void main() {
  test(
    'release tags match the committed version in both naming conventions',
    () {
      validateReleaseTag('v1.2.3', '1.2.3');
      validateReleaseTag('csi_gatekeeper-v1.2.3', '1.2.3');
      validateReleaseTag('v1.2.3-beta.1', '1.2.3-beta.1');
      for (final tag in [
        'v1.2.4',
        'latest',
        'v1.2.3;echo injected',
        'other-v1.2.3',
      ]) {
        expect(() => validateReleaseTag(tag, '1.2.3'), throwsStateError);
      }
    },
  );
  test('legal includes shared runtime transitives, excludes dev-only tools and handles cycles', () {
    expect(scanGraph().map((p) => p.name), ['runtime', 'shared']);
  });
  test('legal rejects unresolved runtime dependencies', () {
    expect(() => scanGraph(missing: true), throwsA(isA<LegalException>()));
  });
  test(
    'policy rejects missing evidence and renderer preserves complete documents',
    () async {
      final dir = await Directory.systemTemp.createTemp('csi-legal-');
      try {
        final dependency = Dependency(
          name: 'fixture',
          version: '1.0.0',
          root: dir.uri,
          source: 'path',
          direct: true,
        );
        final policy = LegalConfig.fromMap({
          'policy': 'permissive',
          'unknown': 'deny',
        }).policy;
        await File('${dir.path}/pubspec.yaml')
            .writeAsString('name: fixture\nversion: 1.0.0\n');
        final missing = await const LicenseDetector().detect(dependency);
        expect(
          () => checkedNotices(LicenseReport([missing]), policy),
          throwsStateError,
        );
        // A real known license exercises legal's full-text recognition.
        final original = await File(
          'licenses/dart-runtime/double-conversion.txt',
        ).readAsString();
        await File('${dir.path}/LICENSE').writeAsString(original);
        await File('${dir.path}/NOTICE')
            .writeAsString('Required fixture attribution');
        await Directory('${dir.path}/nested').create();
        await File('${dir.path}/nested/COPYING').writeAsString('Nested terms');
        final report = LicenseReport([
          await const LicenseDetector().detect(dependency),
        ]);
        final text = checkedNotices(report, policy);
        expect(text, contains(original));
        expect(text, contains('Required fixture attribution'));
        expect(await nestedNotices(report), contains('Nested terms'));
      } finally {
        await dir.delete(recursive: true);
      }
    },
  );
  test(
    'ZIP retains binary and notices together and removes stale archive entries',
    () async {
      final dir = await Directory.systemTemp.createTemp('csi-zip-');
      try {
        final bundle = await Directory('${dir.path}/bundle').create();
        await File('${bundle.path}/csi-gatekeeper')
            .writeAsString('fixture binary');
        await Process.run('chmod', ['755', '${bundle.path}/csi-gatekeeper']);
        await File('${bundle.path}/THIRD_PARTY_NOTICES.txt')
            .writeAsString('fixture notices');
        final archive = File('${dir.path}/bundle.zip');
        await File('${bundle.path}/stale').writeAsString('stale');
        await createZip(bundle, archive);
        await File('${bundle.path}/stale').delete();
        await createZip(bundle, archive);
        final listing = await Process.run('unzip', ['-Z1', archive.path]);
        expect(listing.exitCode, 0);
        expect(listing.stdout, contains('bundle/csi-gatekeeper'));
        expect(listing.stdout, contains('bundle/THIRD_PARTY_NOTICES.txt'));
        expect(listing.stdout, isNot(contains('stale')));
        final unpacked = '${dir.path}/unpacked';
        expect(
          (await Process.run('unzip', [
            '-q',
            archive.path,
            '-d',
            unpacked,
          ])).exitCode,
          0,
        );
        expect(
          (await Process.run('test', [
            '-x',
            '$unpacked/bundle/csi-gatekeeper',
          ])).exitCode,
          0,
        );
        expect(
          await File('$unpacked/bundle/THIRD_PARTY_NOTICES.txt').readAsString(),
          'fixture notices',
        );
      } finally {
        await dir.delete(recursive: true);
      }
    },
  );
}
