# CSI Gatekeeper

A standalone Linux Dart service that validates CSI controller requests before
forwarding them to one protected democratic-csi Unix socket. The external endpoint
requires mTLS and pins one explicitly authorized client leaf certificate. This is
an initial restricted compatibility profile, not a claim of complete security.

See [architecture and deployment prerequisites](docs/architecture.md), the
[field-level compatibility matrix and upgrade procedure](docs/compatibility.md),
[cluster connection instructions](docs/cluster.md), and
[executed local checks](docs/verification.md) before deploying.

## Develop, test and build

Use Dart **3.13.4**, Melos **8.9.0**, protoc **33.0**, and the committed lockfile.
No Flutter runtime or multi-package workspace is required. The single package
contains the executable, policy, generated CSI types, and fake backend tests.
The `bin`, `lib/src`, `test`, `tool`, and `docs` layout and Conventional Commit
versioning follow the conventions of [lti.dart](https://github.com/fischerscode/lti.dart).

```sh
dart pub get --enforce-lockfile
dart run melos run format:check
dart run melos run analyze
dart run melos run test
mkdir -p build
dart run melos run build
# Equivalent AOT build:
dart compile exe bin/csi_gatekeeper.dart -o build/csi-gatekeeper
```

Tests require Linux local sockets and OpenSSL on PATH. They generate temporary
one-day test certificates outside the repository, start an actual gRPC fake
backend on a Unix socket, and connect to the gateway using actual TLS clients.
They require no ZFS, Proxmox, Kubernetes, or production credentials.

```sh
# protoc 33.0 must be installed externally or provided by this path.
PROTOC_PATH=/absolute/path/to/protoc tool/generate.sh
# Generated files are committed and normally need no regeneration.
git diff --exit-code -- lib/src/generated
```

`proto/SHA256SUMS` verifies the official vendored CSI 1.9.0 specification and the
Google import definitions from protoc 33.0. Dependencies and the generator are
pinned. Upstream commits and reviewed source hashes are in
[upstream-lock.json](docs/upstream-lock.json). Regeneration uses the project's
locked `protoc_plugin`, not an unpinned global executable.

## Configure and run

Copy [config.example.json](deploy/config.example.json) to an external path and
replace **every** `REPLACE_*` placeholder. The example intentionally does not run
unchanged. Keep the configuration, certificates, and keys under Atlas control.
Do not store secrets, runtime sockets, or local configuration in Git.

```sh
build/csi-gatekeeper /etc/csi-gatekeeper/config.json
# Development:
dart run bin/csi_gatekeeper.dart /etc/csi-gatekeeper/config.json
# Client fingerprint (the DER leaf, not PEM text or a CA fingerprint):
openssl x509 -in /external/path/client.pem -outform DER | sha256sum
```

An example [systemd unit](deploy/csi-gatekeeper.service) runs the gateway as an
unprivileged dedicated user. Adapt the service name, filesystem permissions and
paths locally. The gateway needs socket access and TLS file read access, but no
ZFS or targetcli privileges. It executes no operating-system commands.

The configuration allowlists methods and exact parameter values. v1 supports
only the three reviewed boolean clone/snapshot parameters; an empty allowlist
rejects all parameters. All CSI secret maps, free configuration overlays, PVC
configuration imports, client mount flags, topology constraints, mutable
parameters and unreviewed fields are rejected. Configure CSI sidecars with
`--extra-create-metadata=false` so they do not inject Kubernetes metadata
parameters. The cluster owns the entire dedicated storage domain; namespace
claims do not confer ownership.

For iSCSI run a separate process with `profile: democratic-csi-1.9.3-iscsi`, a
separate socket and separate dataset parents. Replace `context` with the **exact**
trusted backend values for `node_attach_driver: iscsi`, `portal`, `portals`,
`interface`, `iqn` (fixed prefix ending in `{id}`), `lun: "0"`,
`provisioner_driver: zfs-generic-iscsi`, and optional
`provisioner_driver_instance_id`. See the backend template constraints in the
compatibility document. Clients cannot select a backend.

## Versions

Use Conventional Commits (`feat:`, `fix:`, `docs:`, `build:`, `test:`, `chore:`).
Melos manages changelog and versions, including this private application:

```sh
# Run on main after reviewing changes; this creates a local commit and tag.
dart run melos version --all --no-release-url
```

The version hook synchronizes the executable's Identity version and lockfile.
The working tree and conventional commit history must be ready first. CI never
runs versioning, publishes artifacts, or deploys storage infrastructure.
