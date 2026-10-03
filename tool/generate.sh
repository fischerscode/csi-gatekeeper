#!/bin/sh
set -eu
cd "$(dirname "$0")/.."
protoc_bin=${PROTOC_PATH:-protoc}
test "$("$protoc_bin" --version)" = 'libprotoc 33.0'
sha256sum --check proto/SHA256SUMS
"$protoc_bin" --plugin=protoc-gen-dart=tool/protoc-gen-dart --dart_out=grpc:lib/src/generated -I proto proto/csi.proto
dart --suppress-analytics format lib/src/generated
