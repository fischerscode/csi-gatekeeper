# Compatibility review and upgrade policy

## Immutable basis

- [democratic-csi v1.9.3](https://github.com/democratic-csi/democratic-csi/tree/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8), commit `6af367fbb6f90b4a4cbd4ab026d8d77e764039f8`.
  Its package.json still says **1.9.0**; the tag/commit and deployed image digest,
  not just the vendor version string, are authoritative.
- [official CSI v1.9.0](https://github.com/container-storage-interface/spec/tree/80d53107c70981b9da8aaf9cd1c90249562b22f0), commit `80d53107c70981b9da8aaf9cd1c90249562b22f0`.
  The driver's `csi_proto/csi-v1.9.0.proto` is byte-for-byte identical (verified SHA-256).
  The proxy generates its types from the official spec, not the driver's copy.
- [csi-grpc-proxy](https://github.com/democratic-csi/csi-grpc-proxy/tree/b91a9b5aa3754f3014f781100940a7e3dac83677), reviewed commit `b91a9b5aa3754f3014f781100940a7e3dac83677`.
  It transports UDS/HTTP2 and rewrites authority. Its `src/main.go` uses `AllowHTTP: true`, ignores the passed TLS config
  in `DialTLS`, and returns a plain dialed connection. It does not supply the required
  external mTLS client configuration; use a reviewed mTLS-capable bridge in the
  cluster. A moving master branch is not a deployment or upgrade basis.

Audited driver sources: [controller-zfs](https://github.com/democratic-csi/democratic-csi/blob/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8/src/driver/controller-zfs/index.js),
[controller-zfs-generic](https://github.com/democratic-csi/democratic-csi/blob/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8/src/driver/controller-zfs-generic/index.js),
[base driver](https://github.com/democratic-csi/democratic-csi/blob/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8/src/driver/index.js),
[ZFS utility](https://github.com/democratic-csi/democratic-csi/blob/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8/src/utils/zfs.js), and
[local executor](https://github.com/democratic-csi/democratic-csi/blob/6af367fbb6f90b4a4cbd4ab026d8d77e764039f8/src/utils/zfs_local_exec_client.js).
Their exact SHA-256 values are recorded in `upstream-lock.json`.

## Verified command construction path

In this commit, `CreateSnapshot` checks the presence of `source_volume_id` but
validates the **snapshot name**, not the source ID's characters. It builds
`volumeParent + '/' + source_volume_id` and native
`volumeParent + '/' + source_volume_id + '@' + name` (lines 2092–2190).
The native path calls `zb.zfs.snapshot(fullSnapshotName)` and then `zb.zfs.get`.
`zfs.js` appends the dataset argument unescaped in snapshot (1016–1048) and get
(1364–1425), then `zb.exec` calls the configured executor's `spawn` (1584).
`LocalCliExecClient.buildCommand` joins command and arguments with spaces and
`spawn` passes the result to `child_process.exec` (shell execution).

This is a source-level verification of the unsafe dataflow, **not** a complete
exploit against a running driver. No ZFS command or live exploit was executed.
The generic local driver chooses this executor when `sshConnection` is absent.
Property values have some escaping in `zfs.js`; that does not escape the dataset
operand. Similar identifier and template flows reach destroy, clone/send/receive
and targetcli here-doc commands, so validating only three ID fields is inadequate.

## Field-level method matrix

Every field absent from the "Accepted inputs" column is rejected if present or
nonempty. Unknown wire fields are always rejected. Empty repeated/map fields
carry no forwarded values. The same rules apply regardless of claimed namespace.

| Method | Accepted inputs and restrictions | Backend use and checked outputs |
|---|---|---|
| GetPluginInfo | Empty request | Requires backend identity to exactly match trusted `driverName` (default `org.democratic-csi`); proxy emits that name and proxy version, no backend manifest |
| GetPluginCapabilities | Empty request | Intersects backend controller-service/online/offline expansion with configured support; no topology |
| Probe | Empty request | Backend readiness wrapper only; no request metadata |
| ControllerGetCapabilities | Empty request | Intersects backend enum values with enabled method groups; no publish, condition, node enumeration, mutable/group operations or single-node-multi-writer |
| CreateVolume | Safe `name`; optional nonnegative `capacity_range` within maxBytes, required <= nonzero limit; 1–16 reviewed capabilities; optional reviewed clone source; exact allowlisted `detachedVolumesFromSnapshots` / `detachedVolumesFromVolumes` booleans | `getVolumeIdFromCall` defaults to name; dataset path, ZFS size/properties, clone/send/receive source and share/target asset names. Backend templates can consume parameters: deployment forbids uncontrolled dependencies. Validate ID=name, capacity, exact share/IQN context and echoed source |
| DeleteVolume | Safe `volume_id` only | ZFS property lookup, share/target deletion, clone-origin cleanup and recursive destroy. Empty success preserved, including missing already-deleted resources |
| ControllerExpandVolume | Safe `volume_id`; required capacity range; optional reviewed volume capability | Dataset lookup/set refquota or volsize, zvol alignment, target rescan; validate returned capacity/range and no NFS node expansion |
| ControllerGetVolume | Safe `volume_id` only | Exact dataset property read; bind returned ID to request, validate source/context; no condition or node IDs |
| ListVolumes | max_entries 0–10000; proxy-issued bound starting_token only | Unpaginated recursive list under dedicated volume parent; all entry IDs, clone sources and contexts validated before creating local pages; backend tokens prohibited |
| ValidateVolumeCapabilities | Safe volume_id; reviewed capabilities; empty or exact configured volume_context; no parameters | Exact dataset existence read and driver capability assertion; backend echoes context/caps/parameters. Verify confirmed values, omit explanatory text |
| GetCapacity | Optional reviewed capabilities only | Driver assertion then fixed configured parent `avail` property. No client topology/parameters; return nonnegative available capacity; maximum_volume_size is clamped to configured per-volume ceiling by proxy |
| CreateSnapshot | Safe name and source_volume_id; optional allowlisted detachedSnapshots boolean | Native `volumeParent/source@name` or detached `snapshotParent/source/name`; properties and send/receive; exact snapshot ID and source, size and timestamp checked |
| DeleteSnapshot | Exact native or detached snapshot_id grammar only | Selects parent according to `@`, then destroys under that parent; native deferred cleanup, empty success preserved |
| ListSnapshots | Optional safe snapshot_id/source_volume_id; max_entries and proxy token as above | Lists native and detached parents, filters dataset operands, returns source derivation and timestamps; every result must match filters and source relationship |
| ControllerPublishVolume / ControllerUnpublishVolume / ControllerModifyVolume | None; UNIMPLEMENTED | Never forwarded |
| Node.*, GroupController.*, future/unknown RPCs | None; UNIMPLEMENTED | Services not registered; never forwarded |

### Cross-field rules

- IDs/names use the restricted lowercase leaf grammar
  `[a-z0-9][a-z0-9_.:+-]{0,127}` (full-string), excluding `.`/`..`.
  The audited upstream name grammar permits additional uppercase characters;
  v1 deliberately narrows it, including to avoid iSCSI lowercase target aliases.
  Standard `pvc-UUID` and `snapshot-UUID` names work. Zvol full-name/OS limits may
  be stricter than this grammar; backend errors preserve the relevant CSI status.
- Native ID = exactly two leaves separated by **one `@`**, e.g.
  `pvc-123@snapshot-456`. Detached ID = exactly two leaves separated by **one `/`**,
  e.g. `pvc-123/snapshot-456`. Mixed/multiple separators, arbitrary ZFS paths,
  shell metacharacters, whitespace and control characters fail. Source snapshots
  are parsed with this rule; source volumes are single leaves.
- Capability fields: exactly mount or block, known access mode, no secrets,
  mount_flags or volume_mount_group. NFS allows mount fs_type empty/nfs/nfs4 and
  modes 1–5; iSCSI allows block or empty/ext4/xfs mounts and mode 1. New enum
  values fail. CSI fsType is not allowed to select server-side devices or exports.
- Allowlisted boolean parameters have only `true`/`false` string values. No
  namespaced aliases, arbitrary ZFS properties, config imports, dataset parents,
  device paths, target attributes or StorageClass metadata parameters. All
  methods reject secrets. Request gRPC metadata is not forwarded or logged.
- Context response maps must exactly match the locally configured keys/values;
  only the share or IQN's `{id}` suffix is substituted with a validated leaf.
  Client validation contexts must either be empty or match this same map.
- CapacityRange defaults to backend 1 GiB when omitted on CreateVolume. Numeric
  bounds remain below JavaScript's exact integer ceiling. Validate negotiated
  capacity including backend alignment. A trusted maxBytes is a per-volume
  guardrail, not accounting or a storage quota.
- Wire inspection checks original map entry tags and nested messages before
  protobuf decoding can discard fields. Protobuf parser errors return only a
  fixed rejection string (grpc's deserializer maps these to INTERNAL). Ordinary
  field validation returns INVALID_ARGUMENT. No rejected request reaches the
  backend. A future field needs a profile/code review before it can be exposed.

## Upgrade procedure

1. Pin new immutable driver/spec commits and container image digest externally.
   Recheck every audited source hash and the complete controller method matrix,
   including driver factory, request decorators, secret normalization, templates,
   local/SSH executors, all ID and token formats, and new CSI fields/enums.
2. Verify dedicated parent, origin, export and target ownership constraints on
   Atlas-controlled configuration. Existing resources need the same naming and
   context profile. Do not silently add support for a new driver/configuration.
3. Update proto/import checksums, regenerate with locked protoc/plugin, explicitly
   revise allowlists, response validators and advertised capability intersection.
   Add fake tests proving rejected requests produce zero backend calls.
4. Run formatting, analysis, tests, regeneration comparison, AOT compilation and
   isolated staging tests against the real pinned driver. Fake tests alone do not
   establish driver compatibility or storage-plane security.
5. Review changes and roll out through Atlas. Restart loses pagination tokens
   only; retry writes by CSI identity to resolve uncertain outcomes. Maintain the
   old profile during rollback. Never deploy a moving master/latest reference.
