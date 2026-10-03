# Third-party sources

`csi.proto` is the official container-storage-interface/spec v1.9.0 source,
commit 80d53107c70981b9da8aaf9cd1c90249562b22f0, under the Apache-2.0 license
in `LICENSE`. Dart sources in `lib/src/generated` are generated from that schema.

`google/protobuf/*.proto` are Google Protocol Buffers v33.0 import definitions,
under the license in `google/LICENSE`. Dart runtime well-known types come from
the pinned protobuf package and are not copied into this project's source.

The source headers remain intact. No democratic-csi source is vendored; the
compatibility documentation records commit links and hashes for review.
