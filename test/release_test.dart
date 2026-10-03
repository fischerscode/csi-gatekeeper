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
  test('configured SDK inclusion renders original SDK evidence and rejects missing evidence', () async {
    final project = await LegalProject.load('.');
    expect(project.config.includeSdk, isTrue);
    final sdk = await Directory.systemTemp.createTemp('csi-sdk-');
    try {
      await File('${sdk.path}/version').writeAsString('3.13.4\n');
      final original = await File(
        '${File(Platform.resolvedExecutable).parent.parent.path}/LICENSE',
      ).readAsString();
      await File('${sdk.path}/LICENSE').writeAsString(original);
      final report = await project.scan(includeDev: false, sdkPath: sdk.path);
      final sdkEntry = report.packages.singleWhere(
        (p) => p.dependency.source == 'sdk',
      );
      expect(sdkEntry.dependency.name, 'dart-sdk');
      expect(sdkEntry.dependency.version, '3.13.4');
      final text = checkedNotices(report, project.config.policy);
      expect(text, contains('dart-sdk 3.13.4'));
      expect(text, contains(original));
      // Package supplements must not recursively walk the entire SDK tree.
      await Directory('${sdk.path}/nested').create();
      await File('${sdk.path}/nested/LICENSE')
          .writeAsString('unreviewed SDK fixture');
      expect(await nestedNotices(LicenseReport([sdkEntry])), isEmpty);
      await File('${sdk.path}/LICENSE').delete();
      final missing = await project.scan(includeDev: false, sdkPath: sdk.path);
      expect(
        () => checkedNotices(missing, project.config.policy),
        throwsStateError,
      );
      await File('${sdk.path}/version').delete();
      await expectLater(
        project.scan(includeDev: false, sdkPath: sdk.path),
        throwsA(isA<LegalException>()),
      );
    } finally {
      await sdk.delete(recursive: true);
    }
  });
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
        await File('LICENSE').copy('${bundle.path}/LICENSE');
        final archive = File('${dir.path}/bundle.zip');
        await File('${bundle.path}/stale').writeAsString('stale');
        await createZip(bundle, archive);
        await File('${bundle.path}/stale').delete();
        await createZip(bundle, archive);
        final listing = await Process.run('unzip', ['-Z1', archive.path]);
        expect(listing.exitCode, 0);
        expect(listing.stdout, contains('bundle/csi-gatekeeper'));
        expect(listing.stdout, contains('bundle/LICENSE'));
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
          await File('$unpacked/bundle/LICENSE').readAsString(),
          await File('LICENSE').readAsString(),
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
