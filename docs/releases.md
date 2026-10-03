# Release binaries and license notices

Publishing a GitHub release (including a prerelease) triggers
`.github/workflows/release.yml`. The workflow checks out the release tag, resolves
locked dependencies, runs formatting, analysis and tests, and builds the native
Linux **x64** executable using Dart 3.13.4 on Ubuntu 24.04. It supports the default
Melos tag `csi_gatekeeper-v<VERSION>` and manual `v<VERSION>` tags. A tag must match
both pubspec.yaml and the executable's committed version. A draft release or a
plain tag push does not publish binary assets.

The release receives four assets:

- `csi-gatekeeper-<VERSION>-linux-x64`: the standalone executable.
- `csi-gatekeeper-<VERSION>-linux-x64.tar.gz`: executable plus license notices,
  build information, documentation and deployment examples.
- `THIRD_PARTY_NOTICES.txt`: complete notices for binary redistribution.
- `SHA256SUMS`: checksums covering the three files above.

Prefer the archive so its executable and notices stay together. A raw executable
needs `chmod +x` after download and must travel with its notices when redistributed.
The target is a Linux x64/glibc environment compatible with the Ubuntu 24.04 build
runner; other CPU architectures and older glibc versions are not promised.

```sh
# Verify files downloaded from one release:
sha256sum --check SHA256SUMS
# Reproduce packaging locally after normal checks:
mkdir -p build
dart run melos run build
dart run melos run release:package -- v0.1.0
```

Build/test jobs have read-only repository permissions. Only the separate asset
attachment job receives `contents: write`. Artifact checksums are verified after
transfer between jobs. The workflow neither creates a release nor deploys the
service. Uploads do not overwrite existing assets; a retry after a partial upload
requires removing the partial assets first. Treat released tags as immutable.
Releases created using another workflow's default GITHUB_TOKEN do not generally
trigger this workflow; trigger packaging in that workflow or use an appropriately
scoped GitHub App token for release creation if automating that step later.

## License collection

The pinned development dependency
[dart_pubspec_licenses 3.2.0](https://pub.dev/packages/dart_pubspec_licenses)
loads metadata, dependency relationships and full package license texts from the
resolved pub cache and lockfile. The wrapper in `tool/package_release.dart` walks
only the root application's **runtime dependency closure**, including transitive
packages also used by development tools. It conservatively includes that whole
closure even if AOT tree shaking removes some code. Build/test dependencies are
not included just because they appear in pubspec.lock.

The wrapper additionally preserves LICENSE, COPYING and NOTICE files within those
packages, the vendored CSI/Google protobuf licenses and schema copyright headers,
and the embedded Dart runtime's license and pinned native third-party notices.
No network access is needed by license extraction once `dart pub get` has run.
A missing license, unresolved runtime dependency, version/tag mismatch, changed
SDK version/revision or native-notice checksum mismatch fails packaging.

Native runtime notices in `licenses/dart-runtime` follow the exact Dart 3.13.4
revision recorded in `sources.json` and its DEPS/build definitions. They include
BoringSSL, ICU, zlib, double-conversion and conservative notices for libc++,
libc++abi, cpu_features and Perfetto. They are not collected by pub-based tools.
Review this manifest and the runtime build definitions when updating the SDK;
do not bypass its revision check. These notices do not select or grant a license
for this project's own code.

BSD and MIT binary redistribution requires preserving the applicable copyright,
license terms and disclaimer. Apache-2.0 requires its license and applicable
upstream NOTICE attribution. See the authoritative
[BSD-3-Clause](https://opensource.org/license/bsd-3-clause),
[MIT](https://opensource.org/license/mit), and
[Apache-2.0 section 4](https://www.apache.org/licenses/LICENSE-2.0) texts.
Automated extraction preserves these materials; it does not certify license
compatibility for arbitrary future dependencies. Review new licenses during
upgrades.
