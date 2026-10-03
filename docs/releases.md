# Build ZIPs and release downloads

`dart run melos run build` compiles the standalone Linux **x64** executable and
always packages it with legal notices in
`build/release/csi-gatekeeper-<VERSION>-linux-x64.zip`. The build requires Dart
3.13.4 and the `zip` executable on PATH; extraction tests also require `unzip`.
A failed compile, license check or packaging step fails the build. The previous
build's distribution directory is removed first so a failure cannot leave an
old downloadable ZIP looking current. `build/csi-gatekeeper` is a local build
intermediate; distribute the ZIP so the binary and notices travel together.

The ZIP contains a versioned directory with:

- `csi-gatekeeper`: the standalone AOT executable, with executable permissions.
- `LICENSE`: the project's BSD-3-Clause license, copied verbatim.
- `THIRD_PARTY_NOTICES.txt`: original runtime package licenses and attribution,
  plus Dart runtime and vendored Protobuf notices.
- `BUILD_INFO.json`, documentation and deployment examples.

`build/release/SHA256SUMS` covers the ZIP. Normal CI offers the ZIP and checksum
file as its `linux-x64-build` artifact after all checks pass. No naked executable
or separate license download is advertised. ZIP creation starts from a clean
staging directory and removes a previous archive before writing, preventing
stale ZIP entries on repeated packaging.

Publishing a GitHub release (including a prerelease) triggers
`.github/workflows/release.yml`. It checks out the release tag, resolves locked
dependencies, runs formatting, analysis and tests, and runs the same normal build
on Ubuntu 24.04. Release packaging additionally binds BUILD_INFO to the tag.
The release receives **two assets**: the complete ZIP and `SHA256SUMS`.

Supported tags are `v<VERSION>` (the default Melos workspace tag) and
`csi_gatekeeper-v<VERSION>` (package tags if workspace tagging is disabled). The tag must match pubspec.yaml and the committed executable version.
A draft release or a plain tag push does not upload release assets. The binary
target is Linux x64/glibc compatible with the Ubuntu 24.04 build runner; other
architectures and older glibc versions are not promised.

```sh
dart pub get --enforce-lockfile
dart run legal check --include-sdk
dart run melos run build
# Optional release-tag validation and metadata:
dart run melos run release:package -- v0.1.0
# After downloading the ZIP and checksum file:
sha256sum --check SHA256SUMS
unzip csi-gatekeeper-0.1.0-linux-x64.zip
```

Build/test jobs have read-only repository permissions. Only the separate release
attachment job receives `contents: write`. It verifies the ZIP checksum after
transfer between jobs. The workflow neither creates a release nor deploys the
service. Uploads do not overwrite existing assets; a retry after a partial upload
requires removing the partial assets first. Treat released tags as immutable.
Releases created using another workflow's default GITHUB_TOKEN do not generally
trigger this workflow; invoke packaging in that workflow or use an appropriately
scoped GitHub App token for release creation if automating that step later.

## License collection and policy

The development dependency [legal](https://pub.dev/packages/legal), constrained
to `^0.2.2` and resolved to 0.2.2 in the committed lockfile,
scans locally resolved dependency manifests, package_config.json and pubspec.lock.
Packaging uses its typed API to check the configured policy **and** render the
original license/notice documents. It follows the runtime dependency closure,
including shared runtime/dev transitives, and excludes development-only tools.
The root application is excluded. `include_sdk: true` enables the SDK inventory
(the CLI equivalent is `--include-sdk`). Packaging also explicitly selects the
SDK running the AOT build. The SDK license is checked and rendered by legal as
`dart-sdk`; it is no longer manually appended. Notices conservatively cover the
whole runtime closure even when AOT tree shaking removes some code. No network license lookup
is performed after dependency resolution.

The pubspec policy permits MIT, BSD-2-Clause, BSD-3-Clause, Apache-2.0 and ISC;
unknown evidence fails the build. Version 0.2.2 recognizes licenses offline using
pana's bundled SPDX corpus, including the Apache texts in grpc and google_cloud.
No active package overrides are needed for the current runtime closure. The
renderer preserves the original license and notice documents.

The wrapper additionally preserves nested LICENSE, LICENCE, COPYING and NOTICE
files outside legal's root/`LICENSES` scan, vendored CSI/Google schema licenses
and copyright headers, and the embedded Dart runtime's native third-party
notices. SDK version/revision and native-notice checksums are checked
before packaging. Missing or unresolved evidence, rejected policy, version/tag
mismatches or changed native evidence fail the build.

Native notices in `licenses/dart-runtime` follow the exact Dart 3.13.4 revision
recorded in `sources.json` and its DEPS/build definitions. They include BoringSSL,
ICU, zlib, double-conversion and conservative notices for libc++, libc++abi,
cpu_features and Perfetto. Review the manifest and runtime build definitions on
SDK upgrades; `--include-sdk` reads SDK-supplied licenses but does not establish
which native components were linked or fetch missing upstream notices. Our pinned
native supplements remain necessary for that reason. These notices do not
replace the BSD-3-Clause project license in the repository root.

BSD and MIT redistribution requires preserving applicable notices and terms;
Apache-2.0 requires its license and applicable NOTICE attribution. See the
[BSD-3-Clause](https://opensource.org/license/bsd-3-clause),
[MIT](https://opensource.org/license/mit), and
[Apache-2.0 section 4](https://www.apache.org/licenses/LICENSE-2.0) texts.
The ZIP makes the materials accompany the binary. Automated checks do not certify
license compatibility for future dependencies; review new terms during upgrades.

## Changelog ownership

Melos owns CHANGELOG.md and derives release entries from Conventional Commits.
Do not maintain a parallel Unreleased section: Melos prepends a new version
section and does not migrate hand-written pending entries. For this single root
package, workspaceChangelog is disabled to avoid an aggregate changelog writing
to the same file. Fetch tags explicitly before subsequent releases; automatic
tag fetching is disabled so local versioning does not require network access.

The initial release keeps the existing application version:

```sh
dart run melos version --all --manual-version=csi_gatekeeper:0.1.0 --yes
```

For later releases, fetch tags from the configured remote, ensure the working
tree is clean, then use the normal Conventional Commit versioning command in
the README. Melos produces an annotated workspace tag; publishing the matching
GitHub release triggers the binary attachment workflow.
