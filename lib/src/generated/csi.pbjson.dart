// This is a generated file - do not edit.
//
// Generated from csi.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports
// ignore_for_file: unused_import

import 'dart:convert' as $convert;
import 'dart:core' as $core;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use getPluginInfoRequestDescriptor instead')
const GetPluginInfoRequest$json = {
  '1': 'GetPluginInfoRequest',
};

/// Descriptor for `GetPluginInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPluginInfoRequestDescriptor =
    $convert.base64Decode('ChRHZXRQbHVnaW5JbmZvUmVxdWVzdA==');

@$core.Deprecated('Use getPluginInfoResponseDescriptor instead')
const GetPluginInfoResponse$json = {
  '1': 'GetPluginInfoResponse',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'vendor_version', '3': 2, '4': 1, '5': 9, '10': 'vendorVersion'},
    {
      '1': 'manifest',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.GetPluginInfoResponse.ManifestEntry',
      '10': 'manifest'
    },
  ],
  '3': [GetPluginInfoResponse_ManifestEntry$json],
};

@$core.Deprecated('Use getPluginInfoResponseDescriptor instead')
const GetPluginInfoResponse_ManifestEntry$json = {
  '1': 'ManifestEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetPluginInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPluginInfoResponseDescriptor = $convert.base64Decode(
    'ChVHZXRQbHVnaW5JbmZvUmVzcG9uc2USEgoEbmFtZRgBIAEoCVIEbmFtZRIlCg52ZW5kb3Jfdm'
    'Vyc2lvbhgCIAEoCVINdmVuZG9yVmVyc2lvbhJHCghtYW5pZmVzdBgDIAMoCzIrLmNzaS52MS5H'
    'ZXRQbHVnaW5JbmZvUmVzcG9uc2UuTWFuaWZlc3RFbnRyeVIIbWFuaWZlc3QaOwoNTWFuaWZlc3'
    'RFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use getPluginCapabilitiesRequestDescriptor instead')
const GetPluginCapabilitiesRequest$json = {
  '1': 'GetPluginCapabilitiesRequest',
};

/// Descriptor for `GetPluginCapabilitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPluginCapabilitiesRequestDescriptor =
    $convert.base64Decode('ChxHZXRQbHVnaW5DYXBhYmlsaXRpZXNSZXF1ZXN0');

@$core.Deprecated('Use getPluginCapabilitiesResponseDescriptor instead')
const GetPluginCapabilitiesResponse$json = {
  '1': 'GetPluginCapabilitiesResponse',
  '2': [
    {
      '1': 'capabilities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.PluginCapability',
      '10': 'capabilities'
    },
  ],
};

/// Descriptor for `GetPluginCapabilitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPluginCapabilitiesResponseDescriptor =
    $convert.base64Decode(
        'Ch1HZXRQbHVnaW5DYXBhYmlsaXRpZXNSZXNwb25zZRI8CgxjYXBhYmlsaXRpZXMYASADKAsyGC'
        '5jc2kudjEuUGx1Z2luQ2FwYWJpbGl0eVIMY2FwYWJpbGl0aWVz');

@$core.Deprecated('Use pluginCapabilityDescriptor instead')
const PluginCapability$json = {
  '1': 'PluginCapability',
  '2': [
    {
      '1': 'service',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.PluginCapability.Service',
      '9': 0,
      '10': 'service'
    },
    {
      '1': 'volume_expansion',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.PluginCapability.VolumeExpansion',
      '9': 0,
      '10': 'volumeExpansion'
    },
  ],
  '3': [PluginCapability_Service$json, PluginCapability_VolumeExpansion$json],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use pluginCapabilityDescriptor instead')
const PluginCapability_Service$json = {
  '1': 'Service',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.PluginCapability.Service.Type',
      '10': 'type'
    },
  ],
  '4': [PluginCapability_Service_Type$json],
};

@$core.Deprecated('Use pluginCapabilityDescriptor instead')
const PluginCapability_Service_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'CONTROLLER_SERVICE', '2': 1},
    {'1': 'VOLUME_ACCESSIBILITY_CONSTRAINTS', '2': 2},
    {'1': 'GROUP_CONTROLLER_SERVICE', '2': 3, '3': {}},
  ],
};

@$core.Deprecated('Use pluginCapabilityDescriptor instead')
const PluginCapability_VolumeExpansion$json = {
  '1': 'VolumeExpansion',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.PluginCapability.VolumeExpansion.Type',
      '10': 'type'
    },
  ],
  '4': [PluginCapability_VolumeExpansion_Type$json],
};

@$core.Deprecated('Use pluginCapabilityDescriptor instead')
const PluginCapability_VolumeExpansion_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'ONLINE', '2': 1},
    {'1': 'OFFLINE', '2': 2},
  ],
};

/// Descriptor for `PluginCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pluginCapabilityDescriptor = $convert.base64Decode(
    'ChBQbHVnaW5DYXBhYmlsaXR5EjwKB3NlcnZpY2UYASABKAsyIC5jc2kudjEuUGx1Z2luQ2FwYW'
    'JpbGl0eS5TZXJ2aWNlSABSB3NlcnZpY2USVQoQdm9sdW1lX2V4cGFuc2lvbhgCIAEoCzIoLmNz'
    'aS52MS5QbHVnaW5DYXBhYmlsaXR5LlZvbHVtZUV4cGFuc2lvbkgAUg92b2x1bWVFeHBhbnNpb2'
    '4augEKB1NlcnZpY2USOQoEdHlwZRgBIAEoDjIlLmNzaS52MS5QbHVnaW5DYXBhYmlsaXR5LlNl'
    'cnZpY2UuVHlwZVIEdHlwZSJ0CgRUeXBlEgsKB1VOS05PV04QABIWChJDT05UUk9MTEVSX1NFUl'
    'ZJQ0UQARIkCiBWT0xVTUVfQUNDRVNTSUJJTElUWV9DT05TVFJBSU5UUxACEiEKGEdST1VQX0NP'
    'TlRST0xMRVJfU0VSVklDRRADGgOgQgEaggEKD1ZvbHVtZUV4cGFuc2lvbhJBCgR0eXBlGAEgAS'
    'gOMi0uY3NpLnYxLlBsdWdpbkNhcGFiaWxpdHkuVm9sdW1lRXhwYW5zaW9uLlR5cGVSBHR5cGUi'
    'LAoEVHlwZRILCgdVTktOT1dOEAASCgoGT05MSU5FEAESCwoHT0ZGTElORRACQgYKBHR5cGU=');

@$core.Deprecated('Use probeRequestDescriptor instead')
const ProbeRequest$json = {
  '1': 'ProbeRequest',
};

/// Descriptor for `ProbeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List probeRequestDescriptor =
    $convert.base64Decode('CgxQcm9iZVJlcXVlc3Q=');

@$core.Deprecated('Use probeResponseDescriptor instead')
const ProbeResponse$json = {
  '1': 'ProbeResponse',
  '2': [
    {
      '1': 'ready',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.BoolValue',
      '10': 'ready'
    },
  ],
};

/// Descriptor for `ProbeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List probeResponseDescriptor = $convert.base64Decode(
    'Cg1Qcm9iZVJlc3BvbnNlEjAKBXJlYWR5GAEgASgLMhouZ29vZ2xlLnByb3RvYnVmLkJvb2xWYW'
    'x1ZVIFcmVhZHk=');

@$core.Deprecated('Use createVolumeRequestDescriptor instead')
const CreateVolumeRequest$json = {
  '1': 'CreateVolumeRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'capacity_range',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.CapacityRange',
      '10': 'capacityRange'
    },
    {
      '1': 'volume_capabilities',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapabilities'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateVolumeRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'secrets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'volume_content_source',
      '3': 6,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeContentSource',
      '10': 'volumeContentSource'
    },
    {
      '1': 'accessibility_requirements',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.TopologyRequirement',
      '10': 'accessibilityRequirements'
    },
    {
      '1': 'mutable_parameters',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateVolumeRequest.MutableParametersEntry',
      '8': {},
      '10': 'mutableParameters'
    },
  ],
  '3': [
    CreateVolumeRequest_ParametersEntry$json,
    CreateVolumeRequest_SecretsEntry$json,
    CreateVolumeRequest_MutableParametersEntry$json
  ],
};

@$core.Deprecated('Use createVolumeRequestDescriptor instead')
const CreateVolumeRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use createVolumeRequestDescriptor instead')
const CreateVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use createVolumeRequestDescriptor instead')
const CreateVolumeRequest_MutableParametersEntry$json = {
  '1': 'MutableParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVolumeRequestDescriptor = $convert.base64Decode(
    'ChNDcmVhdGVWb2x1bWVSZXF1ZXN0EhIKBG5hbWUYASABKAlSBG5hbWUSPAoOY2FwYWNpdHlfcm'
    'FuZ2UYAiABKAsyFS5jc2kudjEuQ2FwYWNpdHlSYW5nZVINY2FwYWNpdHlSYW5nZRJJChN2b2x1'
    'bWVfY2FwYWJpbGl0aWVzGAMgAygLMhguY3NpLnYxLlZvbHVtZUNhcGFiaWxpdHlSEnZvbHVtZU'
    'NhcGFiaWxpdGllcxJLCgpwYXJhbWV0ZXJzGAQgAygLMisuY3NpLnYxLkNyZWF0ZVZvbHVtZVJl'
    'cXVlc3QuUGFyYW1ldGVyc0VudHJ5UgpwYXJhbWV0ZXJzEkcKB3NlY3JldHMYBSADKAsyKC5jc2'
    'kudjEuQ3JlYXRlVm9sdW1lUmVxdWVzdC5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxJPChV2'
    'b2x1bWVfY29udGVudF9zb3VyY2UYBiABKAsyGy5jc2kudjEuVm9sdW1lQ29udGVudFNvdXJjZV'
    'ITdm9sdW1lQ29udGVudFNvdXJjZRJaChphY2Nlc3NpYmlsaXR5X3JlcXVpcmVtZW50cxgHIAEo'
    'CzIbLmNzaS52MS5Ub3BvbG9neVJlcXVpcmVtZW50UhlhY2Nlc3NpYmlsaXR5UmVxdWlyZW1lbn'
    'RzEmYKEm11dGFibGVfcGFyYW1ldGVycxgIIAMoCzIyLmNzaS52MS5DcmVhdGVWb2x1bWVSZXF1'
    'ZXN0Lk11dGFibGVQYXJhbWV0ZXJzRW50cnlCA6BCAVIRbXV0YWJsZVBhcmFtZXRlcnMaPQoPUG'
    'FyYW1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToC'
    'OAEaOgoMU2VjcmV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YW'
    'x1ZToCOAEaRAoWTXV0YWJsZVBhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2'
    'YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use volumeContentSourceDescriptor instead')
const VolumeContentSource$json = {
  '1': 'VolumeContentSource',
  '2': [
    {
      '1': 'snapshot',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeContentSource.SnapshotSource',
      '9': 0,
      '10': 'snapshot'
    },
    {
      '1': 'volume',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeContentSource.VolumeSource',
      '9': 0,
      '10': 'volume'
    },
  ],
  '3': [
    VolumeContentSource_SnapshotSource$json,
    VolumeContentSource_VolumeSource$json
  ],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use volumeContentSourceDescriptor instead')
const VolumeContentSource_SnapshotSource$json = {
  '1': 'SnapshotSource',
  '2': [
    {'1': 'snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'snapshotId'},
  ],
};

@$core.Deprecated('Use volumeContentSourceDescriptor instead')
const VolumeContentSource_VolumeSource$json = {
  '1': 'VolumeSource',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
  ],
};

/// Descriptor for `VolumeContentSource`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeContentSourceDescriptor = $convert.base64Decode(
    'ChNWb2x1bWVDb250ZW50U291cmNlEkgKCHNuYXBzaG90GAEgASgLMiouY3NpLnYxLlZvbHVtZU'
    'NvbnRlbnRTb3VyY2UuU25hcHNob3RTb3VyY2VIAFIIc25hcHNob3QSQgoGdm9sdW1lGAIgASgL'
    'MiguY3NpLnYxLlZvbHVtZUNvbnRlbnRTb3VyY2UuVm9sdW1lU291cmNlSABSBnZvbHVtZRoxCg'
    '5TbmFwc2hvdFNvdXJjZRIfCgtzbmFwc2hvdF9pZBgBIAEoCVIKc25hcHNob3RJZBorCgxWb2x1'
    'bWVTb3VyY2USGwoJdm9sdW1lX2lkGAEgASgJUgh2b2x1bWVJZEIGCgR0eXBl');

@$core.Deprecated('Use createVolumeResponseDescriptor instead')
const CreateVolumeResponse$json = {
  '1': 'CreateVolumeResponse',
  '2': [
    {
      '1': 'volume',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Volume',
      '10': 'volume'
    },
  ],
};

/// Descriptor for `CreateVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVolumeResponseDescriptor = $convert.base64Decode(
    'ChRDcmVhdGVWb2x1bWVSZXNwb25zZRImCgZ2b2x1bWUYASABKAsyDi5jc2kudjEuVm9sdW1lUg'
    'Z2b2x1bWU=');

@$core.Deprecated('Use volumeCapabilityDescriptor instead')
const VolumeCapability$json = {
  '1': 'VolumeCapability',
  '2': [
    {
      '1': 'block',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability.BlockVolume',
      '9': 0,
      '10': 'block'
    },
    {
      '1': 'mount',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability.MountVolume',
      '9': 0,
      '10': 'mount'
    },
    {
      '1': 'access_mode',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability.AccessMode',
      '10': 'accessMode'
    },
  ],
  '3': [
    VolumeCapability_BlockVolume$json,
    VolumeCapability_MountVolume$json,
    VolumeCapability_AccessMode$json
  ],
  '8': [
    {'1': 'access_type'},
  ],
};

@$core.Deprecated('Use volumeCapabilityDescriptor instead')
const VolumeCapability_BlockVolume$json = {
  '1': 'BlockVolume',
};

@$core.Deprecated('Use volumeCapabilityDescriptor instead')
const VolumeCapability_MountVolume$json = {
  '1': 'MountVolume',
  '2': [
    {'1': 'fs_type', '3': 1, '4': 1, '5': 9, '10': 'fsType'},
    {'1': 'mount_flags', '3': 2, '4': 3, '5': 9, '10': 'mountFlags'},
    {
      '1': 'volume_mount_group',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'volumeMountGroup'
    },
  ],
};

@$core.Deprecated('Use volumeCapabilityDescriptor instead')
const VolumeCapability_AccessMode$json = {
  '1': 'AccessMode',
  '2': [
    {
      '1': 'mode',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.VolumeCapability.AccessMode.Mode',
      '10': 'mode'
    },
  ],
  '4': [VolumeCapability_AccessMode_Mode$json],
};

@$core.Deprecated('Use volumeCapabilityDescriptor instead')
const VolumeCapability_AccessMode_Mode$json = {
  '1': 'Mode',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'SINGLE_NODE_WRITER', '2': 1},
    {'1': 'SINGLE_NODE_READER_ONLY', '2': 2},
    {'1': 'MULTI_NODE_READER_ONLY', '2': 3},
    {'1': 'MULTI_NODE_SINGLE_WRITER', '2': 4},
    {'1': 'MULTI_NODE_MULTI_WRITER', '2': 5},
    {'1': 'SINGLE_NODE_SINGLE_WRITER', '2': 6, '3': {}},
    {'1': 'SINGLE_NODE_MULTI_WRITER', '2': 7, '3': {}},
  ],
};

/// Descriptor for `VolumeCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeCapabilityDescriptor = $convert.base64Decode(
    'ChBWb2x1bWVDYXBhYmlsaXR5EjwKBWJsb2NrGAEgASgLMiQuY3NpLnYxLlZvbHVtZUNhcGFiaW'
    'xpdHkuQmxvY2tWb2x1bWVIAFIFYmxvY2sSPAoFbW91bnQYAiABKAsyJC5jc2kudjEuVm9sdW1l'
    'Q2FwYWJpbGl0eS5Nb3VudFZvbHVtZUgAUgVtb3VudBJECgthY2Nlc3NfbW9kZRgDIAEoCzIjLm'
    'NzaS52MS5Wb2x1bWVDYXBhYmlsaXR5LkFjY2Vzc01vZGVSCmFjY2Vzc01vZGUaDQoLQmxvY2tW'
    'b2x1bWUadQoLTW91bnRWb2x1bWUSFwoHZnNfdHlwZRgBIAEoCVIGZnNUeXBlEh8KC21vdW50X2'
    'ZsYWdzGAIgAygJUgptb3VudEZsYWdzEiwKEnZvbHVtZV9tb3VudF9ncm91cBgDIAEoCVIQdm9s'
    'dW1lTW91bnRHcm91cBqzAgoKQWNjZXNzTW9kZRI8CgRtb2RlGAEgASgOMiguY3NpLnYxLlZvbH'
    'VtZUNhcGFiaWxpdHkuQWNjZXNzTW9kZS5Nb2RlUgRtb2RlIuYBCgRNb2RlEgsKB1VOS05PV04Q'
    'ABIWChJTSU5HTEVfTk9ERV9XUklURVIQARIbChdTSU5HTEVfTk9ERV9SRUFERVJfT05MWRACEh'
    'oKFk1VTFRJX05PREVfUkVBREVSX09OTFkQAxIcChhNVUxUSV9OT0RFX1NJTkdMRV9XUklURVIQ'
    'BBIbChdNVUxUSV9OT0RFX01VTFRJX1dSSVRFUhAFEiIKGVNJTkdMRV9OT0RFX1NJTkdMRV9XUk'
    'lURVIQBhoDoEIBEiEKGFNJTkdMRV9OT0RFX01VTFRJX1dSSVRFUhAHGgOgQgFCDQoLYWNjZXNz'
    'X3R5cGU=');

@$core.Deprecated('Use capacityRangeDescriptor instead')
const CapacityRange$json = {
  '1': 'CapacityRange',
  '2': [
    {'1': 'required_bytes', '3': 1, '4': 1, '5': 3, '10': 'requiredBytes'},
    {'1': 'limit_bytes', '3': 2, '4': 1, '5': 3, '10': 'limitBytes'},
  ],
};

/// Descriptor for `CapacityRange`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List capacityRangeDescriptor = $convert.base64Decode(
    'Cg1DYXBhY2l0eVJhbmdlEiUKDnJlcXVpcmVkX2J5dGVzGAEgASgDUg1yZXF1aXJlZEJ5dGVzEh'
    '8KC2xpbWl0X2J5dGVzGAIgASgDUgpsaW1pdEJ5dGVz');

@$core.Deprecated('Use volumeDescriptor instead')
const Volume$json = {
  '1': 'Volume',
  '2': [
    {'1': 'capacity_bytes', '3': 1, '4': 1, '5': 3, '10': 'capacityBytes'},
    {'1': 'volume_id', '3': 2, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'volume_context',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Volume.VolumeContextEntry',
      '10': 'volumeContext'
    },
    {
      '1': 'content_source',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeContentSource',
      '10': 'contentSource'
    },
    {
      '1': 'accessible_topology',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Topology',
      '10': 'accessibleTopology'
    },
  ],
  '3': [Volume_VolumeContextEntry$json],
};

@$core.Deprecated('Use volumeDescriptor instead')
const Volume_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Volume`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeDescriptor = $convert.base64Decode(
    'CgZWb2x1bWUSJQoOY2FwYWNpdHlfYnl0ZXMYASABKANSDWNhcGFjaXR5Qnl0ZXMSGwoJdm9sdW'
    '1lX2lkGAIgASgJUgh2b2x1bWVJZBJICg52b2x1bWVfY29udGV4dBgDIAMoCzIhLmNzaS52MS5W'
    'b2x1bWUuVm9sdW1lQ29udGV4dEVudHJ5Ug12b2x1bWVDb250ZXh0EkIKDmNvbnRlbnRfc291cm'
    'NlGAQgASgLMhsuY3NpLnYxLlZvbHVtZUNvbnRlbnRTb3VyY2VSDWNvbnRlbnRTb3VyY2USQQoT'
    'YWNjZXNzaWJsZV90b3BvbG9neRgFIAMoCzIQLmNzaS52MS5Ub3BvbG9neVISYWNjZXNzaWJsZV'
    'RvcG9sb2d5GkAKElZvbHVtZUNvbnRleHRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1'
    'ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use topologyRequirementDescriptor instead')
const TopologyRequirement$json = {
  '1': 'TopologyRequirement',
  '2': [
    {
      '1': 'requisite',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Topology',
      '10': 'requisite'
    },
    {
      '1': 'preferred',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Topology',
      '10': 'preferred'
    },
  ],
};

/// Descriptor for `TopologyRequirement`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topologyRequirementDescriptor = $convert.base64Decode(
    'ChNUb3BvbG9neVJlcXVpcmVtZW50Ei4KCXJlcXVpc2l0ZRgBIAMoCzIQLmNzaS52MS5Ub3BvbG'
    '9neVIJcmVxdWlzaXRlEi4KCXByZWZlcnJlZBgCIAMoCzIQLmNzaS52MS5Ub3BvbG9neVIJcHJl'
    'ZmVycmVk');

@$core.Deprecated('Use topologyDescriptor instead')
const Topology$json = {
  '1': 'Topology',
  '2': [
    {
      '1': 'segments',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Topology.SegmentsEntry',
      '10': 'segments'
    },
  ],
  '3': [Topology_SegmentsEntry$json],
};

@$core.Deprecated('Use topologyDescriptor instead')
const Topology_SegmentsEntry$json = {
  '1': 'SegmentsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `Topology`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List topologyDescriptor = $convert.base64Decode(
    'CghUb3BvbG9neRI6CghzZWdtZW50cxgBIAMoCzIeLmNzaS52MS5Ub3BvbG9neS5TZWdtZW50c0'
    'VudHJ5UghzZWdtZW50cxo7Cg1TZWdtZW50c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZh'
    'bHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use deleteVolumeRequestDescriptor instead')
const DeleteVolumeRequest$json = {
  '1': 'DeleteVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'secrets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.DeleteVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [DeleteVolumeRequest_SecretsEntry$json],
};

@$core.Deprecated('Use deleteVolumeRequestDescriptor instead')
const DeleteVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeleteVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVolumeRequestDescriptor = $convert.base64Decode(
    'ChNEZWxldGVWb2x1bWVSZXF1ZXN0EhsKCXZvbHVtZV9pZBgBIAEoCVIIdm9sdW1lSWQSRwoHc2'
    'VjcmV0cxgCIAMoCzIoLmNzaS52MS5EZWxldGVWb2x1bWVSZXF1ZXN0LlNlY3JldHNFbnRyeUID'
    'mEIBUgdzZWNyZXRzGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZR'
    'gCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use deleteVolumeResponseDescriptor instead')
const DeleteVolumeResponse$json = {
  '1': 'DeleteVolumeResponse',
};

/// Descriptor for `DeleteVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVolumeResponseDescriptor =
    $convert.base64Decode('ChREZWxldGVWb2x1bWVSZXNwb25zZQ==');

@$core.Deprecated('Use controllerPublishVolumeRequestDescriptor instead')
const ControllerPublishVolumeRequest$json = {
  '1': 'ControllerPublishVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 9, '10': 'nodeId'},
    {
      '1': 'volume_capability',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapability'
    },
    {'1': 'readonly', '3': 4, '4': 1, '5': 8, '10': 'readonly'},
    {
      '1': 'secrets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerPublishVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'volume_context',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerPublishVolumeRequest.VolumeContextEntry',
      '10': 'volumeContext'
    },
  ],
  '3': [
    ControllerPublishVolumeRequest_SecretsEntry$json,
    ControllerPublishVolumeRequest_VolumeContextEntry$json
  ],
};

@$core.Deprecated('Use controllerPublishVolumeRequestDescriptor instead')
const ControllerPublishVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use controllerPublishVolumeRequestDescriptor instead')
const ControllerPublishVolumeRequest_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ControllerPublishVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerPublishVolumeRequestDescriptor = $convert.base64Decode(
    'Ch5Db250cm9sbGVyUHVibGlzaFZvbHVtZVJlcXVlc3QSGwoJdm9sdW1lX2lkGAEgASgJUgh2b2'
    'x1bWVJZBIXCgdub2RlX2lkGAIgASgJUgZub2RlSWQSRQoRdm9sdW1lX2NhcGFiaWxpdHkYAyAB'
    'KAsyGC5jc2kudjEuVm9sdW1lQ2FwYWJpbGl0eVIQdm9sdW1lQ2FwYWJpbGl0eRIaCghyZWFkb2'
    '5seRgEIAEoCFIIcmVhZG9ubHkSUgoHc2VjcmV0cxgFIAMoCzIzLmNzaS52MS5Db250cm9sbGVy'
    'UHVibGlzaFZvbHVtZVJlcXVlc3QuU2VjcmV0c0VudHJ5QgOYQgFSB3NlY3JldHMSYAoOdm9sdW'
    '1lX2NvbnRleHQYBiADKAsyOS5jc2kudjEuQ29udHJvbGxlclB1Ymxpc2hWb2x1bWVSZXF1ZXN0'
    'LlZvbHVtZUNvbnRleHRFbnRyeVINdm9sdW1lQ29udGV4dBo6CgxTZWNyZXRzRW50cnkSEAoDa2'
    'V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4ARpAChJWb2x1bWVDb250ZXh0'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use controllerPublishVolumeResponseDescriptor instead')
const ControllerPublishVolumeResponse$json = {
  '1': 'ControllerPublishVolumeResponse',
  '2': [
    {
      '1': 'publish_context',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerPublishVolumeResponse.PublishContextEntry',
      '10': 'publishContext'
    },
  ],
  '3': [ControllerPublishVolumeResponse_PublishContextEntry$json],
};

@$core.Deprecated('Use controllerPublishVolumeResponseDescriptor instead')
const ControllerPublishVolumeResponse_PublishContextEntry$json = {
  '1': 'PublishContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ControllerPublishVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerPublishVolumeResponseDescriptor =
    $convert.base64Decode(
        'Ch9Db250cm9sbGVyUHVibGlzaFZvbHVtZVJlc3BvbnNlEmQKD3B1Ymxpc2hfY29udGV4dBgBIA'
        'MoCzI7LmNzaS52MS5Db250cm9sbGVyUHVibGlzaFZvbHVtZVJlc3BvbnNlLlB1Ymxpc2hDb250'
        'ZXh0RW50cnlSDnB1Ymxpc2hDb250ZXh0GkEKE1B1Ymxpc2hDb250ZXh0RW50cnkSEAoDa2V5GA'
        'EgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use controllerUnpublishVolumeRequestDescriptor instead')
const ControllerUnpublishVolumeRequest$json = {
  '1': 'ControllerUnpublishVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {'1': 'node_id', '3': 2, '4': 1, '5': 9, '10': 'nodeId'},
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerUnpublishVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [ControllerUnpublishVolumeRequest_SecretsEntry$json],
};

@$core.Deprecated('Use controllerUnpublishVolumeRequestDescriptor instead')
const ControllerUnpublishVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ControllerUnpublishVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerUnpublishVolumeRequestDescriptor = $convert.base64Decode(
    'CiBDb250cm9sbGVyVW5wdWJsaXNoVm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCH'
    'ZvbHVtZUlkEhcKB25vZGVfaWQYAiABKAlSBm5vZGVJZBJUCgdzZWNyZXRzGAMgAygLMjUuY3Np'
    'LnYxLkNvbnRyb2xsZXJVbnB1Ymxpc2hWb2x1bWVSZXF1ZXN0LlNlY3JldHNFbnRyeUIDmEIBUg'
    'dzZWNyZXRzGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEo'
    'CVIFdmFsdWU6AjgB');

@$core.Deprecated('Use controllerUnpublishVolumeResponseDescriptor instead')
const ControllerUnpublishVolumeResponse$json = {
  '1': 'ControllerUnpublishVolumeResponse',
};

/// Descriptor for `ControllerUnpublishVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerUnpublishVolumeResponseDescriptor =
    $convert.base64Decode('CiFDb250cm9sbGVyVW5wdWJsaXNoVm9sdW1lUmVzcG9uc2U=');

@$core.Deprecated('Use validateVolumeCapabilitiesRequestDescriptor instead')
const ValidateVolumeCapabilitiesRequest$json = {
  '1': 'ValidateVolumeCapabilitiesRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'volume_context',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ValidateVolumeCapabilitiesRequest.VolumeContextEntry',
      '10': 'volumeContext'
    },
    {
      '1': 'volume_capabilities',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapabilities'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ValidateVolumeCapabilitiesRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'secrets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ValidateVolumeCapabilitiesRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'mutable_parameters',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ValidateVolumeCapabilitiesRequest.MutableParametersEntry',
      '8': {},
      '10': 'mutableParameters'
    },
  ],
  '3': [
    ValidateVolumeCapabilitiesRequest_VolumeContextEntry$json,
    ValidateVolumeCapabilitiesRequest_ParametersEntry$json,
    ValidateVolumeCapabilitiesRequest_SecretsEntry$json,
    ValidateVolumeCapabilitiesRequest_MutableParametersEntry$json
  ],
};

@$core.Deprecated('Use validateVolumeCapabilitiesRequestDescriptor instead')
const ValidateVolumeCapabilitiesRequest_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use validateVolumeCapabilitiesRequestDescriptor instead')
const ValidateVolumeCapabilitiesRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use validateVolumeCapabilitiesRequestDescriptor instead')
const ValidateVolumeCapabilitiesRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use validateVolumeCapabilitiesRequestDescriptor instead')
const ValidateVolumeCapabilitiesRequest_MutableParametersEntry$json = {
  '1': 'MutableParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ValidateVolumeCapabilitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateVolumeCapabilitiesRequestDescriptor = $convert.base64Decode(
    'CiFWYWxpZGF0ZVZvbHVtZUNhcGFiaWxpdGllc1JlcXVlc3QSGwoJdm9sdW1lX2lkGAEgASgJUg'
    'h2b2x1bWVJZBJjCg52b2x1bWVfY29udGV4dBgCIAMoCzI8LmNzaS52MS5WYWxpZGF0ZVZvbHVt'
    'ZUNhcGFiaWxpdGllc1JlcXVlc3QuVm9sdW1lQ29udGV4dEVudHJ5Ug12b2x1bWVDb250ZXh0Ek'
    'kKE3ZvbHVtZV9jYXBhYmlsaXRpZXMYAyADKAsyGC5jc2kudjEuVm9sdW1lQ2FwYWJpbGl0eVIS'
    'dm9sdW1lQ2FwYWJpbGl0aWVzElkKCnBhcmFtZXRlcnMYBCADKAsyOS5jc2kudjEuVmFsaWRhdG'
    'VWb2x1bWVDYXBhYmlsaXRpZXNSZXF1ZXN0LlBhcmFtZXRlcnNFbnRyeVIKcGFyYW1ldGVycxJV'
    'CgdzZWNyZXRzGAUgAygLMjYuY3NpLnYxLlZhbGlkYXRlVm9sdW1lQ2FwYWJpbGl0aWVzUmVxdW'
    'VzdC5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxJ0ChJtdXRhYmxlX3BhcmFtZXRlcnMYBiAD'
    'KAsyQC5jc2kudjEuVmFsaWRhdGVWb2x1bWVDYXBhYmlsaXRpZXNSZXF1ZXN0Lk11dGFibGVQYX'
    'JhbWV0ZXJzRW50cnlCA6BCAVIRbXV0YWJsZVBhcmFtZXRlcnMaQAoSVm9sdW1lQ29udGV4dEVu'
    'dHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaPQoPUGFyYW'
    '1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEa'
    'OgoMU2VjcmV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZT'
    'oCOAEaRAoWTXV0YWJsZVBhcmFtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1'
    'ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use validateVolumeCapabilitiesResponseDescriptor instead')
const ValidateVolumeCapabilitiesResponse$json = {
  '1': 'ValidateVolumeCapabilitiesResponse',
  '2': [
    {
      '1': 'confirmed',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.ValidateVolumeCapabilitiesResponse.Confirmed',
      '10': 'confirmed'
    },
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
  '3': [ValidateVolumeCapabilitiesResponse_Confirmed$json],
};

@$core.Deprecated('Use validateVolumeCapabilitiesResponseDescriptor instead')
const ValidateVolumeCapabilitiesResponse_Confirmed$json = {
  '1': 'Confirmed',
  '2': [
    {
      '1': 'volume_context',
      '3': 1,
      '4': 3,
      '5': 11,
      '6':
          '.csi.v1.ValidateVolumeCapabilitiesResponse.Confirmed.VolumeContextEntry',
      '10': 'volumeContext'
    },
    {
      '1': 'volume_capabilities',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapabilities'
    },
    {
      '1': 'parameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6':
          '.csi.v1.ValidateVolumeCapabilitiesResponse.Confirmed.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'mutable_parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6':
          '.csi.v1.ValidateVolumeCapabilitiesResponse.Confirmed.MutableParametersEntry',
      '8': {},
      '10': 'mutableParameters'
    },
  ],
  '3': [
    ValidateVolumeCapabilitiesResponse_Confirmed_VolumeContextEntry$json,
    ValidateVolumeCapabilitiesResponse_Confirmed_ParametersEntry$json,
    ValidateVolumeCapabilitiesResponse_Confirmed_MutableParametersEntry$json
  ],
};

@$core.Deprecated('Use validateVolumeCapabilitiesResponseDescriptor instead')
const ValidateVolumeCapabilitiesResponse_Confirmed_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use validateVolumeCapabilitiesResponseDescriptor instead')
const ValidateVolumeCapabilitiesResponse_Confirmed_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use validateVolumeCapabilitiesResponseDescriptor instead')
const ValidateVolumeCapabilitiesResponse_Confirmed_MutableParametersEntry$json =
    {
  '1': 'MutableParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ValidateVolumeCapabilitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List validateVolumeCapabilitiesResponseDescriptor = $convert.base64Decode(
    'CiJWYWxpZGF0ZVZvbHVtZUNhcGFiaWxpdGllc1Jlc3BvbnNlElIKCWNvbmZpcm1lZBgBIAEoCz'
    'I0LmNzaS52MS5WYWxpZGF0ZVZvbHVtZUNhcGFiaWxpdGllc1Jlc3BvbnNlLkNvbmZpcm1lZFIJ'
    'Y29uZmlybWVkEhgKB21lc3NhZ2UYAiABKAlSB21lc3NhZ2Ua9AQKCUNvbmZpcm1lZBJuCg52b2'
    'x1bWVfY29udGV4dBgBIAMoCzJHLmNzaS52MS5WYWxpZGF0ZVZvbHVtZUNhcGFiaWxpdGllc1Jl'
    'c3BvbnNlLkNvbmZpcm1lZC5Wb2x1bWVDb250ZXh0RW50cnlSDXZvbHVtZUNvbnRleHQSSQoTdm'
    '9sdW1lX2NhcGFiaWxpdGllcxgCIAMoCzIYLmNzaS52MS5Wb2x1bWVDYXBhYmlsaXR5UhJ2b2x1'
    'bWVDYXBhYmlsaXRpZXMSZAoKcGFyYW1ldGVycxgDIAMoCzJELmNzaS52MS5WYWxpZGF0ZVZvbH'
    'VtZUNhcGFiaWxpdGllc1Jlc3BvbnNlLkNvbmZpcm1lZC5QYXJhbWV0ZXJzRW50cnlSCnBhcmFt'
    'ZXRlcnMSfwoSbXV0YWJsZV9wYXJhbWV0ZXJzGAQgAygLMksuY3NpLnYxLlZhbGlkYXRlVm9sdW'
    '1lQ2FwYWJpbGl0aWVzUmVzcG9uc2UuQ29uZmlybWVkLk11dGFibGVQYXJhbWV0ZXJzRW50cnlC'
    'A6BCAVIRbXV0YWJsZVBhcmFtZXRlcnMaQAoSVm9sdW1lQ29udGV4dEVudHJ5EhAKA2tleRgBIA'
    'EoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaPQoPUGFyYW1ldGVyc0VudHJ5EhAK'
    'A2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAEaRAoWTXV0YWJsZVBhcm'
    'FtZXRlcnNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use listVolumesRequestDescriptor instead')
const ListVolumesRequest$json = {
  '1': 'ListVolumesRequest',
  '2': [
    {'1': 'max_entries', '3': 1, '4': 1, '5': 5, '10': 'maxEntries'},
    {'1': 'starting_token', '3': 2, '4': 1, '5': 9, '10': 'startingToken'},
  ],
};

/// Descriptor for `ListVolumesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVolumesRequestDescriptor = $convert.base64Decode(
    'ChJMaXN0Vm9sdW1lc1JlcXVlc3QSHwoLbWF4X2VudHJpZXMYASABKAVSCm1heEVudHJpZXMSJQ'
    'oOc3RhcnRpbmdfdG9rZW4YAiABKAlSDXN0YXJ0aW5nVG9rZW4=');

@$core.Deprecated('Use listVolumesResponseDescriptor instead')
const ListVolumesResponse$json = {
  '1': 'ListVolumesResponse',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ListVolumesResponse.Entry',
      '10': 'entries'
    },
    {'1': 'next_token', '3': 2, '4': 1, '5': 9, '10': 'nextToken'},
  ],
  '3': [ListVolumesResponse_VolumeStatus$json, ListVolumesResponse_Entry$json],
};

@$core.Deprecated('Use listVolumesResponseDescriptor instead')
const ListVolumesResponse_VolumeStatus$json = {
  '1': 'VolumeStatus',
  '2': [
    {
      '1': 'published_node_ids',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'publishedNodeIds'
    },
    {
      '1': 'volume_condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCondition',
      '8': {},
      '10': 'volumeCondition'
    },
  ],
};

@$core.Deprecated('Use listVolumesResponseDescriptor instead')
const ListVolumesResponse_Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'volume',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Volume',
      '10': 'volume'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.ListVolumesResponse.VolumeStatus',
      '10': 'status'
    },
  ],
};

/// Descriptor for `ListVolumesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listVolumesResponseDescriptor = $convert.base64Decode(
    'ChNMaXN0Vm9sdW1lc1Jlc3BvbnNlEjsKB2VudHJpZXMYASADKAsyIS5jc2kudjEuTGlzdFZvbH'
    'VtZXNSZXNwb25zZS5FbnRyeVIHZW50cmllcxIdCgpuZXh0X3Rva2VuGAIgASgJUgluZXh0VG9r'
    'ZW4ahQEKDFZvbHVtZVN0YXR1cxIsChJwdWJsaXNoZWRfbm9kZV9pZHMYASADKAlSEHB1Ymxpc2'
    'hlZE5vZGVJZHMSRwoQdm9sdW1lX2NvbmRpdGlvbhgCIAEoCzIXLmNzaS52MS5Wb2x1bWVDb25k'
    'aXRpb25CA6BCAVIPdm9sdW1lQ29uZGl0aW9uGnEKBUVudHJ5EiYKBnZvbHVtZRgBIAEoCzIOLm'
    'NzaS52MS5Wb2x1bWVSBnZvbHVtZRJACgZzdGF0dXMYAiABKAsyKC5jc2kudjEuTGlzdFZvbHVt'
    'ZXNSZXNwb25zZS5Wb2x1bWVTdGF0dXNSBnN0YXR1cw==');

@$core.Deprecated('Use controllerGetVolumeRequestDescriptor instead')
const ControllerGetVolumeRequest$json = {
  '1': 'ControllerGetVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
  ],
  '7': {},
};

/// Descriptor for `ControllerGetVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerGetVolumeRequestDescriptor =
    $convert.base64Decode(
        'ChpDb250cm9sbGVyR2V0Vm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCHZvbHVtZU'
        'lkOgOgQgE=');

@$core.Deprecated('Use controllerGetVolumeResponseDescriptor instead')
const ControllerGetVolumeResponse$json = {
  '1': 'ControllerGetVolumeResponse',
  '2': [
    {
      '1': 'volume',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Volume',
      '10': 'volume'
    },
    {
      '1': 'status',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.ControllerGetVolumeResponse.VolumeStatus',
      '10': 'status'
    },
  ],
  '3': [ControllerGetVolumeResponse_VolumeStatus$json],
  '7': {},
};

@$core.Deprecated('Use controllerGetVolumeResponseDescriptor instead')
const ControllerGetVolumeResponse_VolumeStatus$json = {
  '1': 'VolumeStatus',
  '2': [
    {
      '1': 'published_node_ids',
      '3': 1,
      '4': 3,
      '5': 9,
      '10': 'publishedNodeIds'
    },
    {
      '1': 'volume_condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCondition',
      '10': 'volumeCondition'
    },
  ],
};

/// Descriptor for `ControllerGetVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerGetVolumeResponseDescriptor = $convert.base64Decode(
    'ChtDb250cm9sbGVyR2V0Vm9sdW1lUmVzcG9uc2USJgoGdm9sdW1lGAEgASgLMg4uY3NpLnYxLl'
    'ZvbHVtZVIGdm9sdW1lEkgKBnN0YXR1cxgCIAEoCzIwLmNzaS52MS5Db250cm9sbGVyR2V0Vm9s'
    'dW1lUmVzcG9uc2UuVm9sdW1lU3RhdHVzUgZzdGF0dXMagAEKDFZvbHVtZVN0YXR1cxIsChJwdW'
    'JsaXNoZWRfbm9kZV9pZHMYASADKAlSEHB1Ymxpc2hlZE5vZGVJZHMSQgoQdm9sdW1lX2NvbmRp'
    'dGlvbhgCIAEoCzIXLmNzaS52MS5Wb2x1bWVDb25kaXRpb25SD3ZvbHVtZUNvbmRpdGlvbjoDoE'
    'IB');

@$core.Deprecated('Use controllerModifyVolumeRequestDescriptor instead')
const ControllerModifyVolumeRequest$json = {
  '1': 'ControllerModifyVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'secrets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerModifyVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'mutable_parameters',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerModifyVolumeRequest.MutableParametersEntry',
      '10': 'mutableParameters'
    },
  ],
  '3': [
    ControllerModifyVolumeRequest_SecretsEntry$json,
    ControllerModifyVolumeRequest_MutableParametersEntry$json
  ],
  '7': {},
};

@$core.Deprecated('Use controllerModifyVolumeRequestDescriptor instead')
const ControllerModifyVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use controllerModifyVolumeRequestDescriptor instead')
const ControllerModifyVolumeRequest_MutableParametersEntry$json = {
  '1': 'MutableParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ControllerModifyVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerModifyVolumeRequestDescriptor = $convert.base64Decode(
    'Ch1Db250cm9sbGVyTW9kaWZ5Vm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCHZvbH'
    'VtZUlkElEKB3NlY3JldHMYAiADKAsyMi5jc2kudjEuQ29udHJvbGxlck1vZGlmeVZvbHVtZVJl'
    'cXVlc3QuU2VjcmV0c0VudHJ5QgOYQgFSB3NlY3JldHMSawoSbXV0YWJsZV9wYXJhbWV0ZXJzGA'
    'MgAygLMjwuY3NpLnYxLkNvbnRyb2xsZXJNb2RpZnlWb2x1bWVSZXF1ZXN0Lk11dGFibGVQYXJh'
    'bWV0ZXJzRW50cnlSEW11dGFibGVQYXJhbWV0ZXJzGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYAS'
    'ABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGkQKFk11dGFibGVQYXJhbWV0ZXJz'
    'RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AToDoEIB');

@$core.Deprecated('Use controllerModifyVolumeResponseDescriptor instead')
const ControllerModifyVolumeResponse$json = {
  '1': 'ControllerModifyVolumeResponse',
  '7': {},
};

/// Descriptor for `ControllerModifyVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerModifyVolumeResponseDescriptor = $convert
    .base64Decode('Ch5Db250cm9sbGVyTW9kaWZ5Vm9sdW1lUmVzcG9uc2U6A6BCAQ==');

@$core.Deprecated('Use getCapacityRequestDescriptor instead')
const GetCapacityRequest$json = {
  '1': 'GetCapacityRequest',
  '2': [
    {
      '1': 'volume_capabilities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapabilities'
    },
    {
      '1': 'parameters',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.GetCapacityRequest.ParametersEntry',
      '10': 'parameters'
    },
    {
      '1': 'accessible_topology',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Topology',
      '10': 'accessibleTopology'
    },
  ],
  '3': [GetCapacityRequest_ParametersEntry$json],
};

@$core.Deprecated('Use getCapacityRequestDescriptor instead')
const GetCapacityRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetCapacityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCapacityRequestDescriptor = $convert.base64Decode(
    'ChJHZXRDYXBhY2l0eVJlcXVlc3QSSQoTdm9sdW1lX2NhcGFiaWxpdGllcxgBIAMoCzIYLmNzaS'
    '52MS5Wb2x1bWVDYXBhYmlsaXR5UhJ2b2x1bWVDYXBhYmlsaXRpZXMSSgoKcGFyYW1ldGVycxgC'
    'IAMoCzIqLmNzaS52MS5HZXRDYXBhY2l0eVJlcXVlc3QuUGFyYW1ldGVyc0VudHJ5UgpwYXJhbW'
    'V0ZXJzEkEKE2FjY2Vzc2libGVfdG9wb2xvZ3kYAyABKAsyEC5jc2kudjEuVG9wb2xvZ3lSEmFj'
    'Y2Vzc2libGVUb3BvbG9neRo9Cg9QYXJhbWV0ZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFA'
    'oFdmFsdWUYAiABKAlSBXZhbHVlOgI4AQ==');

@$core.Deprecated('Use getCapacityResponseDescriptor instead')
const GetCapacityResponse$json = {
  '1': 'GetCapacityResponse',
  '2': [
    {
      '1': 'available_capacity',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'availableCapacity'
    },
    {
      '1': 'maximum_volume_size',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '10': 'maximumVolumeSize'
    },
    {
      '1': 'minimum_volume_size',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Int64Value',
      '8': {},
      '10': 'minimumVolumeSize'
    },
  ],
};

/// Descriptor for `GetCapacityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getCapacityResponseDescriptor = $convert.base64Decode(
    'ChNHZXRDYXBhY2l0eVJlc3BvbnNlEi0KEmF2YWlsYWJsZV9jYXBhY2l0eRgBIAEoA1IRYXZhaW'
    'xhYmxlQ2FwYWNpdHkSSwoTbWF4aW11bV92b2x1bWVfc2l6ZRgCIAEoCzIbLmdvb2dsZS5wcm90'
    'b2J1Zi5JbnQ2NFZhbHVlUhFtYXhpbXVtVm9sdW1lU2l6ZRJQChNtaW5pbXVtX3ZvbHVtZV9zaX'
    'plGAMgASgLMhsuZ29vZ2xlLnByb3RvYnVmLkludDY0VmFsdWVCA6BCAVIRbWluaW11bVZvbHVt'
    'ZVNpemU=');

@$core.Deprecated('Use controllerGetCapabilitiesRequestDescriptor instead')
const ControllerGetCapabilitiesRequest$json = {
  '1': 'ControllerGetCapabilitiesRequest',
};

/// Descriptor for `ControllerGetCapabilitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerGetCapabilitiesRequestDescriptor =
    $convert.base64Decode('CiBDb250cm9sbGVyR2V0Q2FwYWJpbGl0aWVzUmVxdWVzdA==');

@$core.Deprecated('Use controllerGetCapabilitiesResponseDescriptor instead')
const ControllerGetCapabilitiesResponse$json = {
  '1': 'ControllerGetCapabilitiesResponse',
  '2': [
    {
      '1': 'capabilities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerServiceCapability',
      '10': 'capabilities'
    },
  ],
};

/// Descriptor for `ControllerGetCapabilitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerGetCapabilitiesResponseDescriptor =
    $convert.base64Decode(
        'CiFDb250cm9sbGVyR2V0Q2FwYWJpbGl0aWVzUmVzcG9uc2USRwoMY2FwYWJpbGl0aWVzGAEgAy'
        'gLMiMuY3NpLnYxLkNvbnRyb2xsZXJTZXJ2aWNlQ2FwYWJpbGl0eVIMY2FwYWJpbGl0aWVz');

@$core.Deprecated('Use controllerServiceCapabilityDescriptor instead')
const ControllerServiceCapability$json = {
  '1': 'ControllerServiceCapability',
  '2': [
    {
      '1': 'rpc',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.ControllerServiceCapability.RPC',
      '9': 0,
      '10': 'rpc'
    },
  ],
  '3': [ControllerServiceCapability_RPC$json],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use controllerServiceCapabilityDescriptor instead')
const ControllerServiceCapability_RPC$json = {
  '1': 'RPC',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.ControllerServiceCapability.RPC.Type',
      '10': 'type'
    },
  ],
  '4': [ControllerServiceCapability_RPC_Type$json],
};

@$core.Deprecated('Use controllerServiceCapabilityDescriptor instead')
const ControllerServiceCapability_RPC_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'CREATE_DELETE_VOLUME', '2': 1},
    {'1': 'PUBLISH_UNPUBLISH_VOLUME', '2': 2},
    {'1': 'LIST_VOLUMES', '2': 3},
    {'1': 'GET_CAPACITY', '2': 4},
    {'1': 'CREATE_DELETE_SNAPSHOT', '2': 5},
    {'1': 'LIST_SNAPSHOTS', '2': 6},
    {'1': 'CLONE_VOLUME', '2': 7},
    {'1': 'PUBLISH_READONLY', '2': 8},
    {'1': 'EXPAND_VOLUME', '2': 9},
    {'1': 'LIST_VOLUMES_PUBLISHED_NODES', '2': 10},
    {'1': 'VOLUME_CONDITION', '2': 11, '3': {}},
    {'1': 'GET_VOLUME', '2': 12, '3': {}},
    {'1': 'SINGLE_NODE_MULTI_WRITER', '2': 13, '3': {}},
    {'1': 'MODIFY_VOLUME', '2': 14, '3': {}},
  ],
};

/// Descriptor for `ControllerServiceCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerServiceCapabilityDescriptor = $convert.base64Decode(
    'ChtDb250cm9sbGVyU2VydmljZUNhcGFiaWxpdHkSOwoDcnBjGAEgASgLMicuY3NpLnYxLkNvbn'
    'Ryb2xsZXJTZXJ2aWNlQ2FwYWJpbGl0eS5SUENIAFIDcnBjGrEDCgNSUEMSQAoEdHlwZRgBIAEo'
    'DjIsLmNzaS52MS5Db250cm9sbGVyU2VydmljZUNhcGFiaWxpdHkuUlBDLlR5cGVSBHR5cGUi5w'
    'IKBFR5cGUSCwoHVU5LTk9XThAAEhgKFENSRUFURV9ERUxFVEVfVk9MVU1FEAESHAoYUFVCTElT'
    'SF9VTlBVQkxJU0hfVk9MVU1FEAISEAoMTElTVF9WT0xVTUVTEAMSEAoMR0VUX0NBUEFDSVRZEA'
    'QSGgoWQ1JFQVRFX0RFTEVURV9TTkFQU0hPVBAFEhIKDkxJU1RfU05BUFNIT1RTEAYSEAoMQ0xP'
    'TkVfVk9MVU1FEAcSFAoQUFVCTElTSF9SRUFET05MWRAIEhEKDUVYUEFORF9WT0xVTUUQCRIgCh'
    'xMSVNUX1ZPTFVNRVNfUFVCTElTSEVEX05PREVTEAoSGQoQVk9MVU1FX0NPTkRJVElPThALGgOg'
    'QgESEwoKR0VUX1ZPTFVNRRAMGgOgQgESIQoYU0lOR0xFX05PREVfTVVMVElfV1JJVEVSEA0aA6'
    'BCARIWCg1NT0RJRllfVk9MVU1FEA4aA6BCAUIGCgR0eXBl');

@$core.Deprecated('Use createSnapshotRequestDescriptor instead')
const CreateSnapshotRequest$json = {
  '1': 'CreateSnapshotRequest',
  '2': [
    {'1': 'source_volume_id', '3': 1, '4': 1, '5': 9, '10': 'sourceVolumeId'},
    {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateSnapshotRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateSnapshotRequest.ParametersEntry',
      '10': 'parameters'
    },
  ],
  '3': [
    CreateSnapshotRequest_SecretsEntry$json,
    CreateSnapshotRequest_ParametersEntry$json
  ],
};

@$core.Deprecated('Use createSnapshotRequestDescriptor instead')
const CreateSnapshotRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use createSnapshotRequestDescriptor instead')
const CreateSnapshotRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSnapshotRequestDescriptor = $convert.base64Decode(
    'ChVDcmVhdGVTbmFwc2hvdFJlcXVlc3QSKAoQc291cmNlX3ZvbHVtZV9pZBgBIAEoCVIOc291cm'
    'NlVm9sdW1lSWQSEgoEbmFtZRgCIAEoCVIEbmFtZRJJCgdzZWNyZXRzGAMgAygLMiouY3NpLnYx'
    'LkNyZWF0ZVNuYXBzaG90UmVxdWVzdC5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxJNCgpwYX'
    'JhbWV0ZXJzGAQgAygLMi0uY3NpLnYxLkNyZWF0ZVNuYXBzaG90UmVxdWVzdC5QYXJhbWV0ZXJz'
    'RW50cnlSCnBhcmFtZXRlcnMaOgoMU2VjcmV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBX'
    'ZhbHVlGAIgASgJUgV2YWx1ZToCOAEaPQoPUGFyYW1ldGVyc0VudHJ5EhAKA2tleRgBIAEoCVID'
    'a2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use createSnapshotResponseDescriptor instead')
const CreateSnapshotResponse$json = {
  '1': 'CreateSnapshotResponse',
  '2': [
    {
      '1': 'snapshot',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Snapshot',
      '10': 'snapshot'
    },
  ],
};

/// Descriptor for `CreateSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createSnapshotResponseDescriptor =
    $convert.base64Decode(
        'ChZDcmVhdGVTbmFwc2hvdFJlc3BvbnNlEiwKCHNuYXBzaG90GAEgASgLMhAuY3NpLnYxLlNuYX'
        'BzaG90UghzbmFwc2hvdA==');

@$core.Deprecated('Use snapshotDescriptor instead')
const Snapshot$json = {
  '1': 'Snapshot',
  '2': [
    {'1': 'size_bytes', '3': 1, '4': 1, '5': 3, '10': 'sizeBytes'},
    {'1': 'snapshot_id', '3': 2, '4': 1, '5': 9, '10': 'snapshotId'},
    {'1': 'source_volume_id', '3': 3, '4': 1, '5': 9, '10': 'sourceVolumeId'},
    {
      '1': 'creation_time',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'creationTime'
    },
    {'1': 'ready_to_use', '3': 5, '4': 1, '5': 8, '10': 'readyToUse'},
    {
      '1': 'group_snapshot_id',
      '3': 6,
      '4': 1,
      '5': 9,
      '8': {},
      '10': 'groupSnapshotId'
    },
  ],
};

/// Descriptor for `Snapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List snapshotDescriptor = $convert.base64Decode(
    'CghTbmFwc2hvdBIdCgpzaXplX2J5dGVzGAEgASgDUglzaXplQnl0ZXMSHwoLc25hcHNob3RfaW'
    'QYAiABKAlSCnNuYXBzaG90SWQSKAoQc291cmNlX3ZvbHVtZV9pZBgDIAEoCVIOc291cmNlVm9s'
    'dW1lSWQSPwoNY3JlYXRpb25fdGltZRgEIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbX'
    'BSDGNyZWF0aW9uVGltZRIgCgxyZWFkeV90b191c2UYBSABKAhSCnJlYWR5VG9Vc2USLwoRZ3Jv'
    'dXBfc25hcHNob3RfaWQYBiABKAlCA6BCAVIPZ3JvdXBTbmFwc2hvdElk');

@$core.Deprecated('Use deleteSnapshotRequestDescriptor instead')
const DeleteSnapshotRequest$json = {
  '1': 'DeleteSnapshotRequest',
  '2': [
    {'1': 'snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'snapshotId'},
    {
      '1': 'secrets',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.DeleteSnapshotRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [DeleteSnapshotRequest_SecretsEntry$json],
};

@$core.Deprecated('Use deleteSnapshotRequestDescriptor instead')
const DeleteSnapshotRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeleteSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSnapshotRequestDescriptor = $convert.base64Decode(
    'ChVEZWxldGVTbmFwc2hvdFJlcXVlc3QSHwoLc25hcHNob3RfaWQYASABKAlSCnNuYXBzaG90SW'
    'QSSQoHc2VjcmV0cxgCIAMoCzIqLmNzaS52MS5EZWxldGVTbmFwc2hvdFJlcXVlc3QuU2VjcmV0'
    'c0VudHJ5QgOYQgFSB3NlY3JldHMaOgoMU2VjcmV0c0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5Eh'
    'QKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');

@$core.Deprecated('Use deleteSnapshotResponseDescriptor instead')
const DeleteSnapshotResponse$json = {
  '1': 'DeleteSnapshotResponse',
};

/// Descriptor for `DeleteSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteSnapshotResponseDescriptor =
    $convert.base64Decode('ChZEZWxldGVTbmFwc2hvdFJlc3BvbnNl');

@$core.Deprecated('Use listSnapshotsRequestDescriptor instead')
const ListSnapshotsRequest$json = {
  '1': 'ListSnapshotsRequest',
  '2': [
    {'1': 'max_entries', '3': 1, '4': 1, '5': 5, '10': 'maxEntries'},
    {'1': 'starting_token', '3': 2, '4': 1, '5': 9, '10': 'startingToken'},
    {'1': 'source_volume_id', '3': 3, '4': 1, '5': 9, '10': 'sourceVolumeId'},
    {'1': 'snapshot_id', '3': 4, '4': 1, '5': 9, '10': 'snapshotId'},
    {
      '1': 'secrets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ListSnapshotsRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [ListSnapshotsRequest_SecretsEntry$json],
};

@$core.Deprecated('Use listSnapshotsRequestDescriptor instead')
const ListSnapshotsRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ListSnapshotsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSnapshotsRequestDescriptor = $convert.base64Decode(
    'ChRMaXN0U25hcHNob3RzUmVxdWVzdBIfCgttYXhfZW50cmllcxgBIAEoBVIKbWF4RW50cmllcx'
    'IlCg5zdGFydGluZ190b2tlbhgCIAEoCVINc3RhcnRpbmdUb2tlbhIoChBzb3VyY2Vfdm9sdW1l'
    'X2lkGAMgASgJUg5zb3VyY2VWb2x1bWVJZBIfCgtzbmFwc2hvdF9pZBgEIAEoCVIKc25hcHNob3'
    'RJZBJICgdzZWNyZXRzGAUgAygLMikuY3NpLnYxLkxpc3RTbmFwc2hvdHNSZXF1ZXN0LlNlY3Jl'
    'dHNFbnRyeUIDmEIBUgdzZWNyZXRzGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleR'
    'IUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use listSnapshotsResponseDescriptor instead')
const ListSnapshotsResponse$json = {
  '1': 'ListSnapshotsResponse',
  '2': [
    {
      '1': 'entries',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ListSnapshotsResponse.Entry',
      '10': 'entries'
    },
    {'1': 'next_token', '3': 2, '4': 1, '5': 9, '10': 'nextToken'},
  ],
  '3': [ListSnapshotsResponse_Entry$json],
};

@$core.Deprecated('Use listSnapshotsResponseDescriptor instead')
const ListSnapshotsResponse_Entry$json = {
  '1': 'Entry',
  '2': [
    {
      '1': 'snapshot',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Snapshot',
      '10': 'snapshot'
    },
  ],
};

/// Descriptor for `ListSnapshotsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSnapshotsResponseDescriptor = $convert.base64Decode(
    'ChVMaXN0U25hcHNob3RzUmVzcG9uc2USPQoHZW50cmllcxgBIAMoCzIjLmNzaS52MS5MaXN0U2'
    '5hcHNob3RzUmVzcG9uc2UuRW50cnlSB2VudHJpZXMSHQoKbmV4dF90b2tlbhgCIAEoCVIJbmV4'
    'dFRva2VuGjUKBUVudHJ5EiwKCHNuYXBzaG90GAEgASgLMhAuY3NpLnYxLlNuYXBzaG90Ughzbm'
    'Fwc2hvdA==');

@$core.Deprecated('Use controllerExpandVolumeRequestDescriptor instead')
const ControllerExpandVolumeRequest$json = {
  '1': 'ControllerExpandVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'capacity_range',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.CapacityRange',
      '10': 'capacityRange'
    },
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.ControllerExpandVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'volume_capability',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapability'
    },
  ],
  '3': [ControllerExpandVolumeRequest_SecretsEntry$json],
};

@$core.Deprecated('Use controllerExpandVolumeRequestDescriptor instead')
const ControllerExpandVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `ControllerExpandVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerExpandVolumeRequestDescriptor = $convert.base64Decode(
    'Ch1Db250cm9sbGVyRXhwYW5kVm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCHZvbH'
    'VtZUlkEjwKDmNhcGFjaXR5X3JhbmdlGAIgASgLMhUuY3NpLnYxLkNhcGFjaXR5UmFuZ2VSDWNh'
    'cGFjaXR5UmFuZ2USUQoHc2VjcmV0cxgDIAMoCzIyLmNzaS52MS5Db250cm9sbGVyRXhwYW5kVm'
    '9sdW1lUmVxdWVzdC5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxJFChF2b2x1bWVfY2FwYWJp'
    'bGl0eRgEIAEoCzIYLmNzaS52MS5Wb2x1bWVDYXBhYmlsaXR5UhB2b2x1bWVDYXBhYmlsaXR5Gj'
    'oKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6'
    'AjgB');

@$core.Deprecated('Use controllerExpandVolumeResponseDescriptor instead')
const ControllerExpandVolumeResponse$json = {
  '1': 'ControllerExpandVolumeResponse',
  '2': [
    {'1': 'capacity_bytes', '3': 1, '4': 1, '5': 3, '10': 'capacityBytes'},
    {
      '1': 'node_expansion_required',
      '3': 2,
      '4': 1,
      '5': 8,
      '10': 'nodeExpansionRequired'
    },
  ],
};

/// Descriptor for `ControllerExpandVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List controllerExpandVolumeResponseDescriptor =
    $convert.base64Decode(
        'Ch5Db250cm9sbGVyRXhwYW5kVm9sdW1lUmVzcG9uc2USJQoOY2FwYWNpdHlfYnl0ZXMYASABKA'
        'NSDWNhcGFjaXR5Qnl0ZXMSNgoXbm9kZV9leHBhbnNpb25fcmVxdWlyZWQYAiABKAhSFW5vZGVF'
        'eHBhbnNpb25SZXF1aXJlZA==');

@$core.Deprecated('Use nodeStageVolumeRequestDescriptor instead')
const NodeStageVolumeRequest$json = {
  '1': 'NodeStageVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'publish_context',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodeStageVolumeRequest.PublishContextEntry',
      '10': 'publishContext'
    },
    {
      '1': 'staging_target_path',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'stagingTargetPath'
    },
    {
      '1': 'volume_capability',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapability'
    },
    {
      '1': 'secrets',
      '3': 5,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodeStageVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'volume_context',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodeStageVolumeRequest.VolumeContextEntry',
      '10': 'volumeContext'
    },
  ],
  '3': [
    NodeStageVolumeRequest_PublishContextEntry$json,
    NodeStageVolumeRequest_SecretsEntry$json,
    NodeStageVolumeRequest_VolumeContextEntry$json
  ],
};

@$core.Deprecated('Use nodeStageVolumeRequestDescriptor instead')
const NodeStageVolumeRequest_PublishContextEntry$json = {
  '1': 'PublishContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use nodeStageVolumeRequestDescriptor instead')
const NodeStageVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use nodeStageVolumeRequestDescriptor instead')
const NodeStageVolumeRequest_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NodeStageVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeStageVolumeRequestDescriptor = $convert.base64Decode(
    'ChZOb2RlU3RhZ2VWb2x1bWVSZXF1ZXN0EhsKCXZvbHVtZV9pZBgBIAEoCVIIdm9sdW1lSWQSWw'
    'oPcHVibGlzaF9jb250ZXh0GAIgAygLMjIuY3NpLnYxLk5vZGVTdGFnZVZvbHVtZVJlcXVlc3Qu'
    'UHVibGlzaENvbnRleHRFbnRyeVIOcHVibGlzaENvbnRleHQSLgoTc3RhZ2luZ190YXJnZXRfcG'
    'F0aBgDIAEoCVIRc3RhZ2luZ1RhcmdldFBhdGgSRQoRdm9sdW1lX2NhcGFiaWxpdHkYBCABKAsy'
    'GC5jc2kudjEuVm9sdW1lQ2FwYWJpbGl0eVIQdm9sdW1lQ2FwYWJpbGl0eRJKCgdzZWNyZXRzGA'
    'UgAygLMisuY3NpLnYxLk5vZGVTdGFnZVZvbHVtZVJlcXVlc3QuU2VjcmV0c0VudHJ5QgOYQgFS'
    'B3NlY3JldHMSWAoOdm9sdW1lX2NvbnRleHQYBiADKAsyMS5jc2kudjEuTm9kZVN0YWdlVm9sdW'
    '1lUmVxdWVzdC5Wb2x1bWVDb250ZXh0RW50cnlSDXZvbHVtZUNvbnRleHQaQQoTUHVibGlzaENv'
    'bnRleHRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgBGj'
    'oKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6'
    'AjgBGkAKElZvbHVtZUNvbnRleHRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIA'
    'EoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use nodeStageVolumeResponseDescriptor instead')
const NodeStageVolumeResponse$json = {
  '1': 'NodeStageVolumeResponse',
};

/// Descriptor for `NodeStageVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeStageVolumeResponseDescriptor =
    $convert.base64Decode('ChdOb2RlU3RhZ2VWb2x1bWVSZXNwb25zZQ==');

@$core.Deprecated('Use nodeUnstageVolumeRequestDescriptor instead')
const NodeUnstageVolumeRequest$json = {
  '1': 'NodeUnstageVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'staging_target_path',
      '3': 2,
      '4': 1,
      '5': 9,
      '10': 'stagingTargetPath'
    },
  ],
};

/// Descriptor for `NodeUnstageVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUnstageVolumeRequestDescriptor =
    $convert.base64Decode(
        'ChhOb2RlVW5zdGFnZVZvbHVtZVJlcXVlc3QSGwoJdm9sdW1lX2lkGAEgASgJUgh2b2x1bWVJZB'
        'IuChNzdGFnaW5nX3RhcmdldF9wYXRoGAIgASgJUhFzdGFnaW5nVGFyZ2V0UGF0aA==');

@$core.Deprecated('Use nodeUnstageVolumeResponseDescriptor instead')
const NodeUnstageVolumeResponse$json = {
  '1': 'NodeUnstageVolumeResponse',
};

/// Descriptor for `NodeUnstageVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUnstageVolumeResponseDescriptor =
    $convert.base64Decode('ChlOb2RlVW5zdGFnZVZvbHVtZVJlc3BvbnNl');

@$core.Deprecated('Use nodePublishVolumeRequestDescriptor instead')
const NodePublishVolumeRequest$json = {
  '1': 'NodePublishVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {
      '1': 'publish_context',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodePublishVolumeRequest.PublishContextEntry',
      '10': 'publishContext'
    },
    {
      '1': 'staging_target_path',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'stagingTargetPath'
    },
    {'1': 'target_path', '3': 4, '4': 1, '5': 9, '10': 'targetPath'},
    {
      '1': 'volume_capability',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapability'
    },
    {'1': 'readonly', '3': 6, '4': 1, '5': 8, '10': 'readonly'},
    {
      '1': 'secrets',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodePublishVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'volume_context',
      '3': 8,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodePublishVolumeRequest.VolumeContextEntry',
      '10': 'volumeContext'
    },
  ],
  '3': [
    NodePublishVolumeRequest_PublishContextEntry$json,
    NodePublishVolumeRequest_SecretsEntry$json,
    NodePublishVolumeRequest_VolumeContextEntry$json
  ],
};

@$core.Deprecated('Use nodePublishVolumeRequestDescriptor instead')
const NodePublishVolumeRequest_PublishContextEntry$json = {
  '1': 'PublishContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use nodePublishVolumeRequestDescriptor instead')
const NodePublishVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use nodePublishVolumeRequestDescriptor instead')
const NodePublishVolumeRequest_VolumeContextEntry$json = {
  '1': 'VolumeContextEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NodePublishVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePublishVolumeRequestDescriptor = $convert.base64Decode(
    'ChhOb2RlUHVibGlzaFZvbHVtZVJlcXVlc3QSGwoJdm9sdW1lX2lkGAEgASgJUgh2b2x1bWVJZB'
    'JdCg9wdWJsaXNoX2NvbnRleHQYAiADKAsyNC5jc2kudjEuTm9kZVB1Ymxpc2hWb2x1bWVSZXF1'
    'ZXN0LlB1Ymxpc2hDb250ZXh0RW50cnlSDnB1Ymxpc2hDb250ZXh0Ei4KE3N0YWdpbmdfdGFyZ2'
    'V0X3BhdGgYAyABKAlSEXN0YWdpbmdUYXJnZXRQYXRoEh8KC3RhcmdldF9wYXRoGAQgASgJUgp0'
    'YXJnZXRQYXRoEkUKEXZvbHVtZV9jYXBhYmlsaXR5GAUgASgLMhguY3NpLnYxLlZvbHVtZUNhcG'
    'FiaWxpdHlSEHZvbHVtZUNhcGFiaWxpdHkSGgoIcmVhZG9ubHkYBiABKAhSCHJlYWRvbmx5EkwK'
    'B3NlY3JldHMYByADKAsyLS5jc2kudjEuTm9kZVB1Ymxpc2hWb2x1bWVSZXF1ZXN0LlNlY3JldH'
    'NFbnRyeUIDmEIBUgdzZWNyZXRzEloKDnZvbHVtZV9jb250ZXh0GAggAygLMjMuY3NpLnYxLk5v'
    'ZGVQdWJsaXNoVm9sdW1lUmVxdWVzdC5Wb2x1bWVDb250ZXh0RW50cnlSDXZvbHVtZUNvbnRleH'
    'QaQQoTUHVibGlzaENvbnRleHRFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEo'
    'CVIFdmFsdWU6AjgBGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZR'
    'gCIAEoCVIFdmFsdWU6AjgBGkAKElZvbHVtZUNvbnRleHRFbnRyeRIQCgNrZXkYASABKAlSA2tl'
    'eRIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use nodePublishVolumeResponseDescriptor instead')
const NodePublishVolumeResponse$json = {
  '1': 'NodePublishVolumeResponse',
};

/// Descriptor for `NodePublishVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePublishVolumeResponseDescriptor =
    $convert.base64Decode('ChlOb2RlUHVibGlzaFZvbHVtZVJlc3BvbnNl');

@$core.Deprecated('Use nodeUnpublishVolumeRequestDescriptor instead')
const NodeUnpublishVolumeRequest$json = {
  '1': 'NodeUnpublishVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {'1': 'target_path', '3': 2, '4': 1, '5': 9, '10': 'targetPath'},
  ],
};

/// Descriptor for `NodeUnpublishVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUnpublishVolumeRequestDescriptor =
    $convert.base64Decode(
        'ChpOb2RlVW5wdWJsaXNoVm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCHZvbHVtZU'
        'lkEh8KC3RhcmdldF9wYXRoGAIgASgJUgp0YXJnZXRQYXRo');

@$core.Deprecated('Use nodeUnpublishVolumeResponseDescriptor instead')
const NodeUnpublishVolumeResponse$json = {
  '1': 'NodeUnpublishVolumeResponse',
};

/// Descriptor for `NodeUnpublishVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUnpublishVolumeResponseDescriptor =
    $convert.base64Decode('ChtOb2RlVW5wdWJsaXNoVm9sdW1lUmVzcG9uc2U=');

@$core.Deprecated('Use nodeGetVolumeStatsRequestDescriptor instead')
const NodeGetVolumeStatsRequest$json = {
  '1': 'NodeGetVolumeStatsRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {'1': 'volume_path', '3': 2, '4': 1, '5': 9, '10': 'volumePath'},
    {
      '1': 'staging_target_path',
      '3': 3,
      '4': 1,
      '5': 9,
      '10': 'stagingTargetPath'
    },
  ],
};

/// Descriptor for `NodeGetVolumeStatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetVolumeStatsRequestDescriptor = $convert.base64Decode(
    'ChlOb2RlR2V0Vm9sdW1lU3RhdHNSZXF1ZXN0EhsKCXZvbHVtZV9pZBgBIAEoCVIIdm9sdW1lSW'
    'QSHwoLdm9sdW1lX3BhdGgYAiABKAlSCnZvbHVtZVBhdGgSLgoTc3RhZ2luZ190YXJnZXRfcGF0'
    'aBgDIAEoCVIRc3RhZ2luZ1RhcmdldFBhdGg=');

@$core.Deprecated('Use nodeGetVolumeStatsResponseDescriptor instead')
const NodeGetVolumeStatsResponse$json = {
  '1': 'NodeGetVolumeStatsResponse',
  '2': [
    {
      '1': 'usage',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.VolumeUsage',
      '10': 'usage'
    },
    {
      '1': 'volume_condition',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCondition',
      '8': {},
      '10': 'volumeCondition'
    },
  ],
};

/// Descriptor for `NodeGetVolumeStatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetVolumeStatsResponseDescriptor =
    $convert.base64Decode(
        'ChpOb2RlR2V0Vm9sdW1lU3RhdHNSZXNwb25zZRIpCgV1c2FnZRgBIAMoCzITLmNzaS52MS5Wb2'
        'x1bWVVc2FnZVIFdXNhZ2USRwoQdm9sdW1lX2NvbmRpdGlvbhgCIAEoCzIXLmNzaS52MS5Wb2x1'
        'bWVDb25kaXRpb25CA6BCAVIPdm9sdW1lQ29uZGl0aW9u');

@$core.Deprecated('Use volumeUsageDescriptor instead')
const VolumeUsage$json = {
  '1': 'VolumeUsage',
  '2': [
    {'1': 'available', '3': 1, '4': 1, '5': 3, '10': 'available'},
    {'1': 'total', '3': 2, '4': 1, '5': 3, '10': 'total'},
    {'1': 'used', '3': 3, '4': 1, '5': 3, '10': 'used'},
    {
      '1': 'unit',
      '3': 4,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.VolumeUsage.Unit',
      '10': 'unit'
    },
  ],
  '4': [VolumeUsage_Unit$json],
};

@$core.Deprecated('Use volumeUsageDescriptor instead')
const VolumeUsage_Unit$json = {
  '1': 'Unit',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'BYTES', '2': 1},
    {'1': 'INODES', '2': 2},
  ],
};

/// Descriptor for `VolumeUsage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeUsageDescriptor = $convert.base64Decode(
    'CgtWb2x1bWVVc2FnZRIcCglhdmFpbGFibGUYASABKANSCWF2YWlsYWJsZRIUCgV0b3RhbBgCIA'
    'EoA1IFdG90YWwSEgoEdXNlZBgDIAEoA1IEdXNlZBIsCgR1bml0GAQgASgOMhguY3NpLnYxLlZv'
    'bHVtZVVzYWdlLlVuaXRSBHVuaXQiKgoEVW5pdBILCgdVTktOT1dOEAASCQoFQllURVMQARIKCg'
    'ZJTk9ERVMQAg==');

@$core.Deprecated('Use volumeConditionDescriptor instead')
const VolumeCondition$json = {
  '1': 'VolumeCondition',
  '2': [
    {'1': 'abnormal', '3': 1, '4': 1, '5': 8, '10': 'abnormal'},
    {'1': 'message', '3': 2, '4': 1, '5': 9, '10': 'message'},
  ],
  '7': {},
};

/// Descriptor for `VolumeCondition`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeConditionDescriptor = $convert.base64Decode(
    'Cg9Wb2x1bWVDb25kaXRpb24SGgoIYWJub3JtYWwYASABKAhSCGFibm9ybWFsEhgKB21lc3NhZ2'
    'UYAiABKAlSB21lc3NhZ2U6A6BCAQ==');

@$core.Deprecated('Use nodeGetCapabilitiesRequestDescriptor instead')
const NodeGetCapabilitiesRequest$json = {
  '1': 'NodeGetCapabilitiesRequest',
};

/// Descriptor for `NodeGetCapabilitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetCapabilitiesRequestDescriptor =
    $convert.base64Decode('ChpOb2RlR2V0Q2FwYWJpbGl0aWVzUmVxdWVzdA==');

@$core.Deprecated('Use nodeGetCapabilitiesResponseDescriptor instead')
const NodeGetCapabilitiesResponse$json = {
  '1': 'NodeGetCapabilitiesResponse',
  '2': [
    {
      '1': 'capabilities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodeServiceCapability',
      '10': 'capabilities'
    },
  ],
};

/// Descriptor for `NodeGetCapabilitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetCapabilitiesResponseDescriptor =
    $convert.base64Decode(
        'ChtOb2RlR2V0Q2FwYWJpbGl0aWVzUmVzcG9uc2USQQoMY2FwYWJpbGl0aWVzGAEgAygLMh0uY3'
        'NpLnYxLk5vZGVTZXJ2aWNlQ2FwYWJpbGl0eVIMY2FwYWJpbGl0aWVz');

@$core.Deprecated('Use nodeServiceCapabilityDescriptor instead')
const NodeServiceCapability$json = {
  '1': 'NodeServiceCapability',
  '2': [
    {
      '1': 'rpc',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.NodeServiceCapability.RPC',
      '9': 0,
      '10': 'rpc'
    },
  ],
  '3': [NodeServiceCapability_RPC$json],
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use nodeServiceCapabilityDescriptor instead')
const NodeServiceCapability_RPC$json = {
  '1': 'RPC',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.NodeServiceCapability.RPC.Type',
      '10': 'type'
    },
  ],
  '4': [NodeServiceCapability_RPC_Type$json],
};

@$core.Deprecated('Use nodeServiceCapabilityDescriptor instead')
const NodeServiceCapability_RPC_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'STAGE_UNSTAGE_VOLUME', '2': 1},
    {'1': 'GET_VOLUME_STATS', '2': 2},
    {'1': 'EXPAND_VOLUME', '2': 3},
    {'1': 'VOLUME_CONDITION', '2': 4, '3': {}},
    {'1': 'SINGLE_NODE_MULTI_WRITER', '2': 5, '3': {}},
    {'1': 'VOLUME_MOUNT_GROUP', '2': 6},
  ],
};

/// Descriptor for `NodeServiceCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeServiceCapabilityDescriptor = $convert.base64Decode(
    'ChVOb2RlU2VydmljZUNhcGFiaWxpdHkSNQoDcnBjGAEgASgLMiEuY3NpLnYxLk5vZGVTZXJ2aW'
    'NlQ2FwYWJpbGl0eS5SUENIAFIDcnBjGvABCgNSUEMSOgoEdHlwZRgBIAEoDjImLmNzaS52MS5O'
    'b2RlU2VydmljZUNhcGFiaWxpdHkuUlBDLlR5cGVSBHR5cGUirAEKBFR5cGUSCwoHVU5LTk9XTh'
    'AAEhgKFFNUQUdFX1VOU1RBR0VfVk9MVU1FEAESFAoQR0VUX1ZPTFVNRV9TVEFUUxACEhEKDUVY'
    'UEFORF9WT0xVTUUQAxIZChBWT0xVTUVfQ09ORElUSU9OEAQaA6BCARIhChhTSU5HTEVfTk9ERV'
    '9NVUxUSV9XUklURVIQBRoDoEIBEhYKElZPTFVNRV9NT1VOVF9HUk9VUBAGQgYKBHR5cGU=');

@$core.Deprecated('Use nodeGetInfoRequestDescriptor instead')
const NodeGetInfoRequest$json = {
  '1': 'NodeGetInfoRequest',
};

/// Descriptor for `NodeGetInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetInfoRequestDescriptor =
    $convert.base64Decode('ChJOb2RlR2V0SW5mb1JlcXVlc3Q=');

@$core.Deprecated('Use nodeGetInfoResponseDescriptor instead')
const NodeGetInfoResponse$json = {
  '1': 'NodeGetInfoResponse',
  '2': [
    {'1': 'node_id', '3': 1, '4': 1, '5': 9, '10': 'nodeId'},
    {
      '1': 'max_volumes_per_node',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'maxVolumesPerNode'
    },
    {
      '1': 'accessible_topology',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.Topology',
      '10': 'accessibleTopology'
    },
  ],
};

/// Descriptor for `NodeGetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeGetInfoResponseDescriptor = $convert.base64Decode(
    'ChNOb2RlR2V0SW5mb1Jlc3BvbnNlEhcKB25vZGVfaWQYASABKAlSBm5vZGVJZBIvChRtYXhfdm'
    '9sdW1lc19wZXJfbm9kZRgCIAEoA1IRbWF4Vm9sdW1lc1Blck5vZGUSQQoTYWNjZXNzaWJsZV90'
    'b3BvbG9neRgDIAEoCzIQLmNzaS52MS5Ub3BvbG9neVISYWNjZXNzaWJsZVRvcG9sb2d5');

@$core.Deprecated('Use nodeExpandVolumeRequestDescriptor instead')
const NodeExpandVolumeRequest$json = {
  '1': 'NodeExpandVolumeRequest',
  '2': [
    {'1': 'volume_id', '3': 1, '4': 1, '5': 9, '10': 'volumeId'},
    {'1': 'volume_path', '3': 2, '4': 1, '5': 9, '10': 'volumePath'},
    {
      '1': 'capacity_range',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.CapacityRange',
      '10': 'capacityRange'
    },
    {
      '1': 'staging_target_path',
      '3': 4,
      '4': 1,
      '5': 9,
      '10': 'stagingTargetPath'
    },
    {
      '1': 'volume_capability',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeCapability',
      '10': 'volumeCapability'
    },
    {
      '1': 'secrets',
      '3': 6,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.NodeExpandVolumeRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [NodeExpandVolumeRequest_SecretsEntry$json],
};

@$core.Deprecated('Use nodeExpandVolumeRequestDescriptor instead')
const NodeExpandVolumeRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `NodeExpandVolumeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeExpandVolumeRequestDescriptor = $convert.base64Decode(
    'ChdOb2RlRXhwYW5kVm9sdW1lUmVxdWVzdBIbCgl2b2x1bWVfaWQYASABKAlSCHZvbHVtZUlkEh'
    '8KC3ZvbHVtZV9wYXRoGAIgASgJUgp2b2x1bWVQYXRoEjwKDmNhcGFjaXR5X3JhbmdlGAMgASgL'
    'MhUuY3NpLnYxLkNhcGFjaXR5UmFuZ2VSDWNhcGFjaXR5UmFuZ2USLgoTc3RhZ2luZ190YXJnZX'
    'RfcGF0aBgEIAEoCVIRc3RhZ2luZ1RhcmdldFBhdGgSRQoRdm9sdW1lX2NhcGFiaWxpdHkYBSAB'
    'KAsyGC5jc2kudjEuVm9sdW1lQ2FwYWJpbGl0eVIQdm9sdW1lQ2FwYWJpbGl0eRJOCgdzZWNyZX'
    'RzGAYgAygLMiwuY3NpLnYxLk5vZGVFeHBhbmRWb2x1bWVSZXF1ZXN0LlNlY3JldHNFbnRyeUIG'
    'mEIBoEIBUgdzZWNyZXRzGjoKDFNlY3JldHNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YW'
    'x1ZRgCIAEoCVIFdmFsdWU6AjgB');

@$core.Deprecated('Use nodeExpandVolumeResponseDescriptor instead')
const NodeExpandVolumeResponse$json = {
  '1': 'NodeExpandVolumeResponse',
  '2': [
    {'1': 'capacity_bytes', '3': 1, '4': 1, '5': 3, '10': 'capacityBytes'},
  ],
};

/// Descriptor for `NodeExpandVolumeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeExpandVolumeResponseDescriptor =
    $convert.base64Decode(
        'ChhOb2RlRXhwYW5kVm9sdW1lUmVzcG9uc2USJQoOY2FwYWNpdHlfYnl0ZXMYASABKANSDWNhcG'
        'FjaXR5Qnl0ZXM=');

@$core.Deprecated('Use groupControllerGetCapabilitiesRequestDescriptor instead')
const GroupControllerGetCapabilitiesRequest$json = {
  '1': 'GroupControllerGetCapabilitiesRequest',
  '7': {},
};

/// Descriptor for `GroupControllerGetCapabilitiesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupControllerGetCapabilitiesRequestDescriptor =
    $convert.base64Decode(
        'CiVHcm91cENvbnRyb2xsZXJHZXRDYXBhYmlsaXRpZXNSZXF1ZXN0OgOgQgE=');

@$core
    .Deprecated('Use groupControllerGetCapabilitiesResponseDescriptor instead')
const GroupControllerGetCapabilitiesResponse$json = {
  '1': 'GroupControllerGetCapabilitiesResponse',
  '2': [
    {
      '1': 'capabilities',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.GroupControllerServiceCapability',
      '10': 'capabilities'
    },
  ],
  '7': {},
};

/// Descriptor for `GroupControllerGetCapabilitiesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupControllerGetCapabilitiesResponseDescriptor =
    $convert.base64Decode(
        'CiZHcm91cENvbnRyb2xsZXJHZXRDYXBhYmlsaXRpZXNSZXNwb25zZRJMCgxjYXBhYmlsaXRpZX'
        'MYASADKAsyKC5jc2kudjEuR3JvdXBDb250cm9sbGVyU2VydmljZUNhcGFiaWxpdHlSDGNhcGFi'
        'aWxpdGllczoDoEIB');

@$core.Deprecated('Use groupControllerServiceCapabilityDescriptor instead')
const GroupControllerServiceCapability$json = {
  '1': 'GroupControllerServiceCapability',
  '2': [
    {
      '1': 'rpc',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.GroupControllerServiceCapability.RPC',
      '9': 0,
      '10': 'rpc'
    },
  ],
  '3': [GroupControllerServiceCapability_RPC$json],
  '7': {},
  '8': [
    {'1': 'type'},
  ],
};

@$core.Deprecated('Use groupControllerServiceCapabilityDescriptor instead')
const GroupControllerServiceCapability_RPC$json = {
  '1': 'RPC',
  '2': [
    {
      '1': 'type',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.csi.v1.GroupControllerServiceCapability.RPC.Type',
      '10': 'type'
    },
  ],
  '4': [GroupControllerServiceCapability_RPC_Type$json],
};

@$core.Deprecated('Use groupControllerServiceCapabilityDescriptor instead')
const GroupControllerServiceCapability_RPC_Type$json = {
  '1': 'Type',
  '2': [
    {'1': 'UNKNOWN', '2': 0},
    {'1': 'CREATE_DELETE_GET_VOLUME_GROUP_SNAPSHOT', '2': 1, '3': {}},
  ],
};

/// Descriptor for `GroupControllerServiceCapability`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List groupControllerServiceCapabilityDescriptor = $convert.base64Decode(
    'CiBHcm91cENvbnRyb2xsZXJTZXJ2aWNlQ2FwYWJpbGl0eRJACgNycGMYASABKAsyLC5jc2kudj'
    'EuR3JvdXBDb250cm9sbGVyU2VydmljZUNhcGFiaWxpdHkuUlBDSABSA3JwYxqTAQoDUlBDEkUK'
    'BHR5cGUYASABKA4yMS5jc2kudjEuR3JvdXBDb250cm9sbGVyU2VydmljZUNhcGFiaWxpdHkuUl'
    'BDLlR5cGVSBHR5cGUiRQoEVHlwZRILCgdVTktOT1dOEAASMAonQ1JFQVRFX0RFTEVURV9HRVRf'
    'Vk9MVU1FX0dST1VQX1NOQVBTSE9UEAEaA6BCAToDoEIBQgYKBHR5cGU=');

@$core.Deprecated('Use createVolumeGroupSnapshotRequestDescriptor instead')
const CreateVolumeGroupSnapshotRequest$json = {
  '1': 'CreateVolumeGroupSnapshotRequest',
  '2': [
    {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    {'1': 'source_volume_ids', '3': 2, '4': 3, '5': 9, '10': 'sourceVolumeIds'},
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateVolumeGroupSnapshotRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
    {
      '1': 'parameters',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.CreateVolumeGroupSnapshotRequest.ParametersEntry',
      '10': 'parameters'
    },
  ],
  '3': [
    CreateVolumeGroupSnapshotRequest_SecretsEntry$json,
    CreateVolumeGroupSnapshotRequest_ParametersEntry$json
  ],
  '7': {},
};

@$core.Deprecated('Use createVolumeGroupSnapshotRequestDescriptor instead')
const CreateVolumeGroupSnapshotRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

@$core.Deprecated('Use createVolumeGroupSnapshotRequestDescriptor instead')
const CreateVolumeGroupSnapshotRequest_ParametersEntry$json = {
  '1': 'ParametersEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `CreateVolumeGroupSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVolumeGroupSnapshotRequestDescriptor = $convert.base64Decode(
    'CiBDcmVhdGVWb2x1bWVHcm91cFNuYXBzaG90UmVxdWVzdBISCgRuYW1lGAEgASgJUgRuYW1lEi'
    'oKEXNvdXJjZV92b2x1bWVfaWRzGAIgAygJUg9zb3VyY2VWb2x1bWVJZHMSVAoHc2VjcmV0cxgD'
    'IAMoCzI1LmNzaS52MS5DcmVhdGVWb2x1bWVHcm91cFNuYXBzaG90UmVxdWVzdC5TZWNyZXRzRW'
    '50cnlCA5hCAVIHc2VjcmV0cxJYCgpwYXJhbWV0ZXJzGAQgAygLMjguY3NpLnYxLkNyZWF0ZVZv'
    'bHVtZUdyb3VwU25hcHNob3RSZXF1ZXN0LlBhcmFtZXRlcnNFbnRyeVIKcGFyYW1ldGVycxo6Cg'
    'xTZWNyZXRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4'
    'ARo9Cg9QYXJhbWV0ZXJzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBX'
    'ZhbHVlOgI4AToDoEIB');

@$core.Deprecated('Use createVolumeGroupSnapshotResponseDescriptor instead')
const CreateVolumeGroupSnapshotResponse$json = {
  '1': 'CreateVolumeGroupSnapshotResponse',
  '2': [
    {
      '1': 'group_snapshot',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeGroupSnapshot',
      '10': 'groupSnapshot'
    },
  ],
  '7': {},
};

/// Descriptor for `CreateVolumeGroupSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List createVolumeGroupSnapshotResponseDescriptor =
    $convert.base64Decode(
        'CiFDcmVhdGVWb2x1bWVHcm91cFNuYXBzaG90UmVzcG9uc2USQgoOZ3JvdXBfc25hcHNob3QYAS'
        'ABKAsyGy5jc2kudjEuVm9sdW1lR3JvdXBTbmFwc2hvdFINZ3JvdXBTbmFwc2hvdDoDoEIB');

@$core.Deprecated('Use volumeGroupSnapshotDescriptor instead')
const VolumeGroupSnapshot$json = {
  '1': 'VolumeGroupSnapshot',
  '2': [
    {'1': 'group_snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'groupSnapshotId'},
    {
      '1': 'snapshots',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.Snapshot',
      '10': 'snapshots'
    },
    {
      '1': 'creation_time',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.google.protobuf.Timestamp',
      '10': 'creationTime'
    },
    {'1': 'ready_to_use', '3': 4, '4': 1, '5': 8, '10': 'readyToUse'},
  ],
  '7': {},
};

/// Descriptor for `VolumeGroupSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List volumeGroupSnapshotDescriptor = $convert.base64Decode(
    'ChNWb2x1bWVHcm91cFNuYXBzaG90EioKEWdyb3VwX3NuYXBzaG90X2lkGAEgASgJUg9ncm91cF'
    'NuYXBzaG90SWQSLgoJc25hcHNob3RzGAIgAygLMhAuY3NpLnYxLlNuYXBzaG90UglzbmFwc2hv'
    'dHMSPwoNY3JlYXRpb25fdGltZRgDIAEoCzIaLmdvb2dsZS5wcm90b2J1Zi5UaW1lc3RhbXBSDG'
    'NyZWF0aW9uVGltZRIgCgxyZWFkeV90b191c2UYBCABKAhSCnJlYWR5VG9Vc2U6A6BCAQ==');

@$core.Deprecated('Use deleteVolumeGroupSnapshotRequestDescriptor instead')
const DeleteVolumeGroupSnapshotRequest$json = {
  '1': 'DeleteVolumeGroupSnapshotRequest',
  '2': [
    {'1': 'group_snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'groupSnapshotId'},
    {'1': 'snapshot_ids', '3': 2, '4': 3, '5': 9, '10': 'snapshotIds'},
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.DeleteVolumeGroupSnapshotRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [DeleteVolumeGroupSnapshotRequest_SecretsEntry$json],
  '7': {},
};

@$core.Deprecated('Use deleteVolumeGroupSnapshotRequestDescriptor instead')
const DeleteVolumeGroupSnapshotRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `DeleteVolumeGroupSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVolumeGroupSnapshotRequestDescriptor = $convert.base64Decode(
    'CiBEZWxldGVWb2x1bWVHcm91cFNuYXBzaG90UmVxdWVzdBIqChFncm91cF9zbmFwc2hvdF9pZB'
    'gBIAEoCVIPZ3JvdXBTbmFwc2hvdElkEiEKDHNuYXBzaG90X2lkcxgCIAMoCVILc25hcHNob3RJ'
    'ZHMSVAoHc2VjcmV0cxgDIAMoCzI1LmNzaS52MS5EZWxldGVWb2x1bWVHcm91cFNuYXBzaG90Um'
    'VxdWVzdC5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxo6CgxTZWNyZXRzRW50cnkSEAoDa2V5'
    'GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AToDoEIB');

@$core.Deprecated('Use deleteVolumeGroupSnapshotResponseDescriptor instead')
const DeleteVolumeGroupSnapshotResponse$json = {
  '1': 'DeleteVolumeGroupSnapshotResponse',
  '7': {},
};

/// Descriptor for `DeleteVolumeGroupSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteVolumeGroupSnapshotResponseDescriptor =
    $convert.base64Decode(
        'CiFEZWxldGVWb2x1bWVHcm91cFNuYXBzaG90UmVzcG9uc2U6A6BCAQ==');

@$core.Deprecated('Use getVolumeGroupSnapshotRequestDescriptor instead')
const GetVolumeGroupSnapshotRequest$json = {
  '1': 'GetVolumeGroupSnapshotRequest',
  '2': [
    {'1': 'group_snapshot_id', '3': 1, '4': 1, '5': 9, '10': 'groupSnapshotId'},
    {'1': 'snapshot_ids', '3': 2, '4': 3, '5': 9, '10': 'snapshotIds'},
    {
      '1': 'secrets',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.csi.v1.GetVolumeGroupSnapshotRequest.SecretsEntry',
      '8': {},
      '10': 'secrets'
    },
  ],
  '3': [GetVolumeGroupSnapshotRequest_SecretsEntry$json],
  '7': {},
};

@$core.Deprecated('Use getVolumeGroupSnapshotRequestDescriptor instead')
const GetVolumeGroupSnapshotRequest_SecretsEntry$json = {
  '1': 'SecretsEntry',
  '2': [
    {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': {'7': true},
};

/// Descriptor for `GetVolumeGroupSnapshotRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVolumeGroupSnapshotRequestDescriptor = $convert.base64Decode(
    'Ch1HZXRWb2x1bWVHcm91cFNuYXBzaG90UmVxdWVzdBIqChFncm91cF9zbmFwc2hvdF9pZBgBIA'
    'EoCVIPZ3JvdXBTbmFwc2hvdElkEiEKDHNuYXBzaG90X2lkcxgCIAMoCVILc25hcHNob3RJZHMS'
    'UQoHc2VjcmV0cxgDIAMoCzIyLmNzaS52MS5HZXRWb2x1bWVHcm91cFNuYXBzaG90UmVxdWVzdC'
    '5TZWNyZXRzRW50cnlCA5hCAVIHc2VjcmV0cxo6CgxTZWNyZXRzRW50cnkSEAoDa2V5GAEgASgJ'
    'UgNrZXkSFAoFdmFsdWUYAiABKAlSBXZhbHVlOgI4AToDoEIB');

@$core.Deprecated('Use getVolumeGroupSnapshotResponseDescriptor instead')
const GetVolumeGroupSnapshotResponse$json = {
  '1': 'GetVolumeGroupSnapshotResponse',
  '2': [
    {
      '1': 'group_snapshot',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.csi.v1.VolumeGroupSnapshot',
      '10': 'groupSnapshot'
    },
  ],
  '7': {},
};

/// Descriptor for `GetVolumeGroupSnapshotResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getVolumeGroupSnapshotResponseDescriptor =
    $convert.base64Decode(
        'Ch5HZXRWb2x1bWVHcm91cFNuYXBzaG90UmVzcG9uc2USQgoOZ3JvdXBfc25hcHNob3QYASABKA'
        'syGy5jc2kudjEuVm9sdW1lR3JvdXBTbmFwc2hvdFINZ3JvdXBTbmFwc2hvdDoDoEIB');
