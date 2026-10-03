import 'dart:io';

import 'package:dart_pubspec_licenses/dart_pubspec_licenses.dart';
import 'package:test/test.dart';

import '../tool/package_release.dart';

Package fixture(
  String name,
  Directory directory, {
  List<Package> dependencies = const [],
  List<Package> devDependencies = const [],
  String? license = 'Copyright fixture owner. Fixture license text.',
}) => Package(
  directory: directory,
  name: name,
  description: 'Fixture package',
  authors: [],
  isMarkdown: false,
  isSdk: false,
  version: '1.0.0',
  license: license,
  dependencies: dependencies,
  devDependencies: devDependencies,
  pubspec: {
    'dependencies': {for (final p in dependencies) p.name: '1.0.0'},
  },
);

void main() {
  test(
    'release tags bind both naming conventions to the committed version',
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
  test('runtime closure includes shared transitive packages and excludes dev-only tools', () {
    final dir = Directory.systemTemp;
    final shared = fixture('shared', dir);
    final tool = fixture('tool', dir, dependencies: [shared]);
    final dep = fixture('runtime', dir, dependencies: [shared]);
    final root = fixture(
      'root',
      dir,
      dependencies: [dep],
      devDependencies: [tool, shared],
    );
    expect(runtimePackages(root).map((p) => p.name), ['runtime', 'shared']);
    dep.dependencies.add(dep); // Mutable fixture models a graph cycle.
    expect(runtimePackages(root).map((p) => p.name), ['runtime', 'shared']);
  });
  test('unresolved declared dependency fails rather than silently omitting notices', () {
    final root = fixture('root', Directory.systemTemp);
    (root.pubspec!['dependencies'] as Map)['missing'] = '1.0.0';
    expect(() => runtimePackages(root), throwsStateError);
  });
  test('missing licenses block packaging and complete NOTICE/COPYING texts are retained', () async {
    final dir = await Directory.systemTemp.createTemp('csi-release-license-');
    try {
      await File('${dir.path}/NOTICE')
          .writeAsString('Additional attribution required');
      await File('${dir.path}/COPYING')
          .writeAsString('Supplementary license text');
      await Directory('${dir.path}/nested').create();
      await File('${dir.path}/nested/LICENSE')
          .writeAsString('Nested dependency copyright');
      final package = fixture('runtime', dir);
      final text = await packageNotices([package]);
      for (final expected in [
        'runtime 1.0.0',
        'Copyright fixture owner',
        'Additional attribution required',
        'Supplementary license text',
        'Nested dependency copyright',
      ]) {
        expect(text, contains(expected));
      }
      await expectLater(
        packageNotices([fixture('unlicensed', dir, license: null)]),
        throwsStateError,
      );
    } finally {
      await dir.delete(recursive: true);
    }
  });
}
