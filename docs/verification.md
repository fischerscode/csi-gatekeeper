# Local verification

Executed on Linux with Dart 3.13.4, Melos 8.9.0, protoc 33.0,
protoc_plugin 25.1.0 and the committed pubspec.lock.

| Check actually executed | Result |
|---|---|
| `dart pub get --offline --enforce-lockfile` | Passed using the available local package cache |
| `dart run melos list` | Exactly one package, csi_gatekeeper |
| `dart run melos run format:check` | Passed |
| `dart run melos run analyze` | No issues |
| `dart run melos run test` | 29 tests passed |
| `dart run melos run build` | Native AOT executable and distributable ZIP with legal notices generated |
| `PROTOC_PATH=... tool/generate.sh` | Source checksums passed; generated Dart files byte-identical on regeneration |
| AOT executable with no arguments | Expected usage rejection, exit 64 |
| AOT executable with placeholder example config | Expected sanitized configuration rejection, exit 1 |
| `dart run melos run release:package -- v0.1.0` | ZIP with notices for 21 runtime packages generated; ZIP SHA-256 check passed |
| `dart run legal check` | legal 0.2.1 policy passed for all 21 runtime packages without active overrides |
| actionlint 1.7.7 on both workflows | Passed |
| Repeated release packaging | Removed stale ZIP entries; extracted ZIP preserved executable permissions |
| Official CSI schema vs pinned driver's 1.9.0 schema | SHA-256 identical |

The fake-backend suite records typed calls over a real Unix socket. Requests
rejected at the transport, identity, wire, method, field, parameter, reference or
pagination boundary assert that the backend call count did not increase. Unsafe
backend **responses** assert DATA_LOSS after the necessary backend call; the
proxy cannot undo a side effect that preceded such a response.

Coverage includes valid native/detached snapshots and both clone source types,
repeated create/delete operations, incompatible create capacity, stateful fake
resources surviving gateway restart, all supported RPCs, unauthorized CA-signed
leaves, missing/untrusted client certificates, invalid server CA/hostname,
unknown RPCs and root/nested/map protobuf fields, blocked overlays and secrets,
foreign IDs/exports/targets, bound local pagination, numeric/capability/topology
restrictions, concurrency, real unavailable backend sockets, deadline propagation,
client cancellation, no proxy write retries and redacted metadata/errors/audits.
Generative validation includes 150 seeded unsafe identifiers rejected over actual
gRPC plus 100 generated valid leaf/native-snapshot pairs.

Initial integration runs found fixture cleanup issues when failed TLS clients
kept connections pending; final tests use explicit client termination during
restart and cleanup. The final complete suite above passed. Local socket tests
needed permission to leave the execution sandbox because it prohibits socket
binding; all listeners and temporary credentials stayed local to the test host.

CI is supplied but was not executed remotely. Envoy configuration, systemd
installation, Proxmox/LXC configuration, Kubernetes integration, real ZFS/LIO
operations and a complete driver exploit were **not** exercised. No infrastructure
was modified or artifact published. Production qualification still needs the
pinned real driver and Atlas-enforced deployment boundaries.
