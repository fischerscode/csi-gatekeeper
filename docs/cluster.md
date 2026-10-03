# Connecting a Kubernetes cluster

CSI sidecars ordinarily expect a local Unix socket. Keep the controller sidecars
and a transport bridge in the cluster; the bridge presents that socket and opens
HTTP/2 TLS connections to the LXC gateway. Node plugins still run on each node,
implement Node RPCs locally, and connect directly to NFS/iSCSI storage endpoints.
Do not route Node RPCs or storage data through the remote controller endpoint.

The reviewed democratic-csi `csi-grpc-proxy` normalizes authority and transports
UDS/HTTP2. It is not the authorization boundary and its reviewed source does not
provide this mTLS client setup. A plain TCP `PROXY_TO` pointing at the gateway
will not work. A trusted mTLS-capable HTTP/2 bridge (for example Envoy) must handle
the client certificate and server validation. Deploy and pin that component
through your cluster manifests; no TLS termination is required inside the LXC.

Example Envoy v3 configuration fragment (replace all placeholders and pin the
chosen Envoy release/digest; validate against that release before deployment):

```yaml
static_resources:
  listeners:
    - name: csi_socket
      address:
        pipe: {path: /REPLACE_WITH_SHARED_CSI_DIRECTORY/csi.sock}
      filter_chains:
        - filters:
            - name: envoy.filters.network.http_connection_manager
              typed_config:
                "@type": type.googleapis.com/envoy.extensions.filters.network.http_connection_manager.v3.HttpConnectionManager
                stat_prefix: csi
                codec_type: HTTP2
                route_config:
                  name: csi
                  virtual_hosts:
                    - name: csi
                      domains: ["*"]
                      routes:
                        - match: {prefix: /csi.v1.}
                          route:
                            cluster: gatekeeper
                            timeout: 0s
                            host_rewrite_literal: REPLACE_WITH_GATEWAY_DNS_NAME
                http_filters:
                  - name: envoy.filters.http.router
                    typed_config:
                      "@type": type.googleapis.com/envoy.extensions.filters.http.router.v3.Router
  clusters:
    - name: gatekeeper
      type: STRICT_DNS
      connect_timeout: 5s
      load_assignment:
        cluster_name: gatekeeper
        endpoints:
          - lb_endpoints:
              - endpoint:
                  address:
                    socket_address:
                      address: REPLACE_WITH_GATEWAY_DNS_NAME
                      port_value: 9443
      typed_extension_protocol_options:
        envoy.extensions.upstreams.http.v3.HttpProtocolOptions:
          "@type": type.googleapis.com/envoy.extensions.upstreams.http.v3.HttpProtocolOptions
          explicit_http_config: {http2_protocol_options: {}}
      transport_socket:
        name: envoy.transport_sockets.tls
        typed_config:
          "@type": type.googleapis.com/envoy.extensions.transport_sockets.tls.v3.UpstreamTlsContext
          sni: REPLACE_WITH_GATEWAY_DNS_NAME
          common_tls_context:
            alpn_protocols: [h2]
            tls_certificates:
              - certificate_chain: {filename: /EXTERNAL_CLIENT_TLS/client-chain.pem}
                private_key: {filename: /EXTERNAL_CLIENT_TLS/client.key}
            validation_context:
              trusted_ca: {filename: /EXTERNAL_SERVER_TLS/server-ca.pem}
              match_typed_subject_alt_names:
                - san_type: DNS
                  matcher: {exact: REPLACE_WITH_GATEWAY_DNS_NAME}
```

Share only the controller-side socket directory with the CSI sidecars. Configure
each controller sidecar's `--csi-address` to that socket. Set
`--extra-create-metadata=false` on provisioner and snapshotter; CSI secret maps
and parameter overrides are not supported by this profile. Use separate
controller Deployments/endpoints, identity certificates, backend sockets and
storage domains for NFS and iSCSI. Set each gateway's trusted `driverName` to its backend's democratic-csi
`--csi-name` and node plugin name. Omitting `driverName` preserves the default
`org.democratic-csi`. The gateway rejects a backend reporting a different name.

For parallel NFS and iSCSI installations, adapt the
[NFS configuration](../deploy/config.example.json) with
`"driverName": "nfs.csi.atlas.local"` and use the separate
[iSCSI configuration](../deploy/config.iscsi.example.json) with
`"driverName": "iscsi.csi.atlas.local"`. Keep each installation's registration
and Kubernetes resources consistent:

| Setting | NFS | iSCSI |
| --- | --- | --- |
| Gateway `driverName` | `nfs.csi.atlas.local` | `iscsi.csi.atlas.local` |
| Backend and node plugin `--csi-name` | `nfs.csi.atlas.local` | `iscsi.csi.atlas.local` |
| CSIDriver `metadata.name` | `nfs.csi.atlas.local` | `iscsi.csi.atlas.local` |
| StorageClass `provisioner` | `nfs.csi.atlas.local` | `iscsi.csi.atlas.local` |
| VolumeSnapshotClass `driver` | `nfs.csi.atlas.local` | `iscsi.csi.atlas.local` |

These names identify separate installations; requests cannot change the local
name or select another backend.
Use the compatible release's normal democratic-csi node configuration under
Atlas review; do not expose the trusted controller's configuration to Kubernetes.

Before enabling provisioning, check from the bridge that Identity/Probe succeed
with the authorized leaf, fail with another CA-signed leaf, and fail with no
client certificate. Verify a normal CreateVolume, snapshot, clone, expansion,
Get/List and delete lifecycle in isolated staging. Check backend capability and
exact context values, including NFS share root or iSCSI IQN prefix/lun. Verify no
foreign exports or targets are reachable directly from malicious nodes. These
are deployment qualifications, not operations performed by this repository.

No Kubernetes manifests, Proxmox changes or running storage configuration are
applied by this project. The Envoy fragment is documentation and is not included
in the executed Dart test suite.

The configuration fields are described by the official Envoy v3 API references
for [UDS pipe addresses](https://www.envoyproxy.io/docs/envoy/latest/api-v3/config/core/v3/address.proto),
[TLS validation and client certificates](https://www.envoyproxy.io/docs/envoy/latest/api-v3/extensions/transport_sockets/tls/v3/common.proto),
and [explicit upstream HTTP/2](https://www.envoyproxy.io/docs/envoy/latest/api-v3/extensions/upstreams/http/v3/http_protocol_options.proto).
