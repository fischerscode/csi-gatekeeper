# Changelog

## Unreleased

- License project code under BSD-3-Clause and include LICENSE in every build ZIP.

- Produce a Linux x64 ZIP containing the standalone binary and legal notices on every normal build; publish only ZIPs and checksums in CI and releases.
- Check and collect runtime dependency licenses with legal ^0.2.1 (locked to 0.2.1); preserve nested, Protobuf and native Dart runtime notices.

## 0.1.0

- Add a typed, mutually authenticated CSI controller gateway for dedicated democratic-csi 1.9.3 NFS and iSCSI backends.
