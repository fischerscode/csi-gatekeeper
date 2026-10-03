import 'dart:io';

/// Keep the executable's identity version in sync with Melos' pubspec version.
void main() {
  final version = RegExp(
    r'^version: ([0-9]+\.[0-9]+\.[0-9]+(?:[-+][a-zA-Z0-9.+-]+)?)$',
    multiLine: true,
  ).firstMatch(File('pubspec.yaml').readAsStringSync())?.group(1);
  if (version == null) throw const FormatException('Invalid package version');
  File('lib/src/version.dart').writeAsStringSync(
    "// Updated by tool/sync_version.dart during Melos versioning.\n"
    "const packageVersion = '$version';\n",
  );
}
