// This is a generated file - do not edit.
//
// Generated from csi.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class PluginCapability_Service_Type extends $pb.ProtobufEnum {
  static const PluginCapability_Service_Type UNKNOWN =
      PluginCapability_Service_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');

  /// CONTROLLER_SERVICE indicates that the Plugin provides RPCs for
  /// the ControllerService. Plugins SHOULD provide this capability.
  /// In rare cases certain plugins MAY wish to omit the
  /// ControllerService entirely from their implementation, but such
  /// SHOULD NOT be the common case.
  /// The presence of this capability determines whether the CO will
  /// attempt to invoke the REQUIRED ControllerService RPCs, as well
  /// as specific RPCs as indicated by ControllerGetCapabilities.
  static const PluginCapability_Service_Type CONTROLLER_SERVICE =
      PluginCapability_Service_Type._(
          1, _omitEnumNames ? '' : 'CONTROLLER_SERVICE');

  /// VOLUME_ACCESSIBILITY_CONSTRAINTS indicates that the volumes for
  /// this plugin MAY NOT be equally accessible by all nodes in the
  /// cluster. The CO MUST use the topology information returned by
  /// CreateVolumeRequest along with the topology information
  /// returned by NodeGetInfo to ensure that a given volume is
  /// accessible from a given node when scheduling workloads.
  static const PluginCapability_Service_Type VOLUME_ACCESSIBILITY_CONSTRAINTS =
      PluginCapability_Service_Type._(
          2, _omitEnumNames ? '' : 'VOLUME_ACCESSIBILITY_CONSTRAINTS');

  /// GROUP_CONTROLLER_SERVICE indicates that the Plugin provides
  /// RPCs for operating on groups of volumes. Plugins MAY provide
  /// this capability.
  /// The presence of this capability determines whether the CO will
  /// attempt to invoke the REQUIRED GroupController service RPCs, as
  /// well as specific RPCs as indicated by
  /// GroupControllerGetCapabilities.
  static const PluginCapability_Service_Type GROUP_CONTROLLER_SERVICE =
      PluginCapability_Service_Type._(
          3, _omitEnumNames ? '' : 'GROUP_CONTROLLER_SERVICE');

  static const $core.List<PluginCapability_Service_Type> values =
      <PluginCapability_Service_Type>[
    UNKNOWN,
    CONTROLLER_SERVICE,
    VOLUME_ACCESSIBILITY_CONSTRAINTS,
    GROUP_CONTROLLER_SERVICE,
  ];

  static final $core.List<PluginCapability_Service_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 3);
  static PluginCapability_Service_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PluginCapability_Service_Type._(super.value, super.name);
}

class PluginCapability_VolumeExpansion_Type extends $pb.ProtobufEnum {
  static const PluginCapability_VolumeExpansion_Type UNKNOWN =
      PluginCapability_VolumeExpansion_Type._(
          0, _omitEnumNames ? '' : 'UNKNOWN');

  /// ONLINE indicates that volumes may be expanded when published to
  /// a node. When a Plugin implements this capability it MUST
  /// implement either the EXPAND_VOLUME controller capability or the
  /// EXPAND_VOLUME node capability or both. When a plugin supports
  /// ONLINE volume expansion and also has the EXPAND_VOLUME
  /// controller capability then the plugin MUST support expansion of
  /// volumes currently published and available on a node. When a
  /// plugin supports ONLINE volume expansion and also has the
  /// EXPAND_VOLUME node capability then the plugin MAY support
  /// expansion of node-published volume via NodeExpandVolume.
  ///
  /// Example 1: Given a shared filesystem volume (e.g. GlusterFs),
  ///   the Plugin may set the ONLINE volume expansion capability and
  ///   implement ControllerExpandVolume but not NodeExpandVolume.
  ///
  /// Example 2: Given a block storage volume type (e.g. EBS), the
  ///   Plugin may set the ONLINE volume expansion capability and
  ///   implement both ControllerExpandVolume and NodeExpandVolume.
  ///
  /// Example 3: Given a Plugin that supports volume expansion only
  ///   upon a node, the Plugin may set the ONLINE volume
  ///   expansion capability and implement NodeExpandVolume but not
  ///   ControllerExpandVolume.
  static const PluginCapability_VolumeExpansion_Type ONLINE =
      PluginCapability_VolumeExpansion_Type._(
          1, _omitEnumNames ? '' : 'ONLINE');

  /// OFFLINE indicates that volumes currently published and
  /// available on a node SHALL NOT be expanded via
  /// ControllerExpandVolume. When a plugin supports OFFLINE volume
  /// expansion it MUST implement either the EXPAND_VOLUME controller
  /// capability or both the EXPAND_VOLUME controller capability and
  /// the EXPAND_VOLUME node capability.
  ///
  /// Example 1: Given a block storage volume type (e.g. Azure Disk)
  ///   that does not support expansion of "node-attached" (i.e.
  ///   controller-published) volumes, the Plugin may indicate
  ///   OFFLINE volume expansion support and implement both
  ///   ControllerExpandVolume and NodeExpandVolume.
  static const PluginCapability_VolumeExpansion_Type OFFLINE =
      PluginCapability_VolumeExpansion_Type._(
          2, _omitEnumNames ? '' : 'OFFLINE');

  static const $core.List<PluginCapability_VolumeExpansion_Type> values =
      <PluginCapability_VolumeExpansion_Type>[
    UNKNOWN,
    ONLINE,
    OFFLINE,
  ];

  static final $core.List<PluginCapability_VolumeExpansion_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static PluginCapability_VolumeExpansion_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const PluginCapability_VolumeExpansion_Type._(super.value, super.name);
}

class VolumeCapability_AccessMode_Mode extends $pb.ProtobufEnum {
  static const VolumeCapability_AccessMode_Mode UNKNOWN =
      VolumeCapability_AccessMode_Mode._(0, _omitEnumNames ? '' : 'UNKNOWN');

  /// Can only be published once as read/write on a single node, at
  /// any given time.
  static const VolumeCapability_AccessMode_Mode SINGLE_NODE_WRITER =
      VolumeCapability_AccessMode_Mode._(
          1, _omitEnumNames ? '' : 'SINGLE_NODE_WRITER');

  /// Can only be published once as readonly on a single node, at
  /// any given time.
  static const VolumeCapability_AccessMode_Mode SINGLE_NODE_READER_ONLY =
      VolumeCapability_AccessMode_Mode._(
          2, _omitEnumNames ? '' : 'SINGLE_NODE_READER_ONLY');

  /// Can be published as readonly at multiple nodes simultaneously.
  static const VolumeCapability_AccessMode_Mode MULTI_NODE_READER_ONLY =
      VolumeCapability_AccessMode_Mode._(
          3, _omitEnumNames ? '' : 'MULTI_NODE_READER_ONLY');

  /// Can be published at multiple nodes simultaneously. Only one of
  /// the node can be used as read/write. The rest will be readonly.
  static const VolumeCapability_AccessMode_Mode MULTI_NODE_SINGLE_WRITER =
      VolumeCapability_AccessMode_Mode._(
          4, _omitEnumNames ? '' : 'MULTI_NODE_SINGLE_WRITER');

  /// Can be published as read/write at multiple nodes
  /// simultaneously.
  static const VolumeCapability_AccessMode_Mode MULTI_NODE_MULTI_WRITER =
      VolumeCapability_AccessMode_Mode._(
          5, _omitEnumNames ? '' : 'MULTI_NODE_MULTI_WRITER');

  /// Can only be published once as read/write at a single workload
  /// on a single node, at any given time. SHOULD be used instead of
  /// SINGLE_NODE_WRITER for COs using the experimental
  /// SINGLE_NODE_MULTI_WRITER capability.
  static const VolumeCapability_AccessMode_Mode SINGLE_NODE_SINGLE_WRITER =
      VolumeCapability_AccessMode_Mode._(
          6, _omitEnumNames ? '' : 'SINGLE_NODE_SINGLE_WRITER');

  /// Can be published as read/write at multiple workloads on a
  /// single node simultaneously. SHOULD be used instead of
  /// SINGLE_NODE_WRITER for COs using the experimental
  /// SINGLE_NODE_MULTI_WRITER capability.
  static const VolumeCapability_AccessMode_Mode SINGLE_NODE_MULTI_WRITER =
      VolumeCapability_AccessMode_Mode._(
          7, _omitEnumNames ? '' : 'SINGLE_NODE_MULTI_WRITER');

  static const $core.List<VolumeCapability_AccessMode_Mode> values =
      <VolumeCapability_AccessMode_Mode>[
    UNKNOWN,
    SINGLE_NODE_WRITER,
    SINGLE_NODE_READER_ONLY,
    MULTI_NODE_READER_ONLY,
    MULTI_NODE_SINGLE_WRITER,
    MULTI_NODE_MULTI_WRITER,
    SINGLE_NODE_SINGLE_WRITER,
    SINGLE_NODE_MULTI_WRITER,
  ];

  static final $core.List<VolumeCapability_AccessMode_Mode?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 7);
  static VolumeCapability_AccessMode_Mode? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VolumeCapability_AccessMode_Mode._(super.value, super.name);
}

class ControllerServiceCapability_RPC_Type extends $pb.ProtobufEnum {
  static const ControllerServiceCapability_RPC_Type UNKNOWN =
      ControllerServiceCapability_RPC_Type._(
          0, _omitEnumNames ? '' : 'UNKNOWN');
  static const ControllerServiceCapability_RPC_Type CREATE_DELETE_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          1, _omitEnumNames ? '' : 'CREATE_DELETE_VOLUME');
  static const ControllerServiceCapability_RPC_Type PUBLISH_UNPUBLISH_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          2, _omitEnumNames ? '' : 'PUBLISH_UNPUBLISH_VOLUME');
  static const ControllerServiceCapability_RPC_Type LIST_VOLUMES =
      ControllerServiceCapability_RPC_Type._(
          3, _omitEnumNames ? '' : 'LIST_VOLUMES');
  static const ControllerServiceCapability_RPC_Type GET_CAPACITY =
      ControllerServiceCapability_RPC_Type._(
          4, _omitEnumNames ? '' : 'GET_CAPACITY');

  /// Currently the only way to consume a snapshot is to create
  /// a volume from it. Therefore plugins supporting
  /// CREATE_DELETE_SNAPSHOT MUST support creating volume from
  /// snapshot.
  static const ControllerServiceCapability_RPC_Type CREATE_DELETE_SNAPSHOT =
      ControllerServiceCapability_RPC_Type._(
          5, _omitEnumNames ? '' : 'CREATE_DELETE_SNAPSHOT');
  static const ControllerServiceCapability_RPC_Type LIST_SNAPSHOTS =
      ControllerServiceCapability_RPC_Type._(
          6, _omitEnumNames ? '' : 'LIST_SNAPSHOTS');

  /// Plugins supporting volume cloning at the storage level MAY
  /// report this capability. The source volume MUST be managed by
  /// the same plugin. Not all volume sources and parameters
  /// combinations MAY work.
  static const ControllerServiceCapability_RPC_Type CLONE_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          7, _omitEnumNames ? '' : 'CLONE_VOLUME');

  /// Indicates the SP supports ControllerPublishVolume.readonly
  /// field.
  static const ControllerServiceCapability_RPC_Type PUBLISH_READONLY =
      ControllerServiceCapability_RPC_Type._(
          8, _omitEnumNames ? '' : 'PUBLISH_READONLY');

  /// See VolumeExpansion for details.
  static const ControllerServiceCapability_RPC_Type EXPAND_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          9, _omitEnumNames ? '' : 'EXPAND_VOLUME');

  /// Indicates the SP supports the
  /// ListVolumesResponse.entry.published_node_ids field and the
  /// ControllerGetVolumeResponse.published_node_ids field.
  /// The SP MUST also support PUBLISH_UNPUBLISH_VOLUME.
  static const ControllerServiceCapability_RPC_Type
      LIST_VOLUMES_PUBLISHED_NODES = ControllerServiceCapability_RPC_Type._(
          10, _omitEnumNames ? '' : 'LIST_VOLUMES_PUBLISHED_NODES');

  /// Indicates that the Controller service can report volume
  /// conditions.
  /// An SP MAY implement `VolumeCondition` in only the Controller
  /// Plugin, only the Node Plugin, or both.
  /// If `VolumeCondition` is implemented in both the Controller and
  /// Node Plugins, it SHALL report from different perspectives.
  /// If for some reason Controller and Node Plugins report
  /// misaligned volume conditions, CO SHALL assume the worst case
  /// is the truth.
  /// Note that, for alpha, `VolumeCondition` is intended be
  /// informative for humans only, not for automation.
  static const ControllerServiceCapability_RPC_Type VOLUME_CONDITION =
      ControllerServiceCapability_RPC_Type._(
          11, _omitEnumNames ? '' : 'VOLUME_CONDITION');

  /// Indicates the SP supports the ControllerGetVolume RPC.
  /// This enables COs to, for example, fetch per volume
  /// condition after a volume is provisioned.
  static const ControllerServiceCapability_RPC_Type GET_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          12, _omitEnumNames ? '' : 'GET_VOLUME');

  /// Indicates the SP supports the SINGLE_NODE_SINGLE_WRITER and/or
  /// SINGLE_NODE_MULTI_WRITER access modes.
  /// These access modes are intended to replace the
  /// SINGLE_NODE_WRITER access mode to clarify the number of writers
  /// for a volume on a single node. Plugins MUST accept and allow
  /// use of the SINGLE_NODE_WRITER access mode when either
  /// SINGLE_NODE_SINGLE_WRITER and/or SINGLE_NODE_MULTI_WRITER are
  /// supported, in order to permit older COs to continue working.
  static const ControllerServiceCapability_RPC_Type SINGLE_NODE_MULTI_WRITER =
      ControllerServiceCapability_RPC_Type._(
          13, _omitEnumNames ? '' : 'SINGLE_NODE_MULTI_WRITER');

  /// Indicates the SP supports modifying volume with mutable
  /// parameters. See ControllerModifyVolume for details.
  static const ControllerServiceCapability_RPC_Type MODIFY_VOLUME =
      ControllerServiceCapability_RPC_Type._(
          14, _omitEnumNames ? '' : 'MODIFY_VOLUME');

  static const $core.List<ControllerServiceCapability_RPC_Type> values =
      <ControllerServiceCapability_RPC_Type>[
    UNKNOWN,
    CREATE_DELETE_VOLUME,
    PUBLISH_UNPUBLISH_VOLUME,
    LIST_VOLUMES,
    GET_CAPACITY,
    CREATE_DELETE_SNAPSHOT,
    LIST_SNAPSHOTS,
    CLONE_VOLUME,
    PUBLISH_READONLY,
    EXPAND_VOLUME,
    LIST_VOLUMES_PUBLISHED_NODES,
    VOLUME_CONDITION,
    GET_VOLUME,
    SINGLE_NODE_MULTI_WRITER,
    MODIFY_VOLUME,
  ];

  static final $core.List<ControllerServiceCapability_RPC_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 14);
  static ControllerServiceCapability_RPC_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const ControllerServiceCapability_RPC_Type._(super.value, super.name);
}

class VolumeUsage_Unit extends $pb.ProtobufEnum {
  static const VolumeUsage_Unit UNKNOWN =
      VolumeUsage_Unit._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const VolumeUsage_Unit BYTES =
      VolumeUsage_Unit._(1, _omitEnumNames ? '' : 'BYTES');
  static const VolumeUsage_Unit INODES =
      VolumeUsage_Unit._(2, _omitEnumNames ? '' : 'INODES');

  static const $core.List<VolumeUsage_Unit> values = <VolumeUsage_Unit>[
    UNKNOWN,
    BYTES,
    INODES,
  ];

  static final $core.List<VolumeUsage_Unit?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 2);
  static VolumeUsage_Unit? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const VolumeUsage_Unit._(super.value, super.name);
}

class NodeServiceCapability_RPC_Type extends $pb.ProtobufEnum {
  static const NodeServiceCapability_RPC_Type UNKNOWN =
      NodeServiceCapability_RPC_Type._(0, _omitEnumNames ? '' : 'UNKNOWN');
  static const NodeServiceCapability_RPC_Type STAGE_UNSTAGE_VOLUME =
      NodeServiceCapability_RPC_Type._(
          1, _omitEnumNames ? '' : 'STAGE_UNSTAGE_VOLUME');

  /// If Plugin implements GET_VOLUME_STATS capability
  /// then it MUST implement NodeGetVolumeStats RPC
  /// call for fetching volume statistics.
  static const NodeServiceCapability_RPC_Type GET_VOLUME_STATS =
      NodeServiceCapability_RPC_Type._(
          2, _omitEnumNames ? '' : 'GET_VOLUME_STATS');

  /// See VolumeExpansion for details.
  static const NodeServiceCapability_RPC_Type EXPAND_VOLUME =
      NodeServiceCapability_RPC_Type._(
          3, _omitEnumNames ? '' : 'EXPAND_VOLUME');

  /// Indicates that the Node service can report volume conditions.
  /// An SP MAY implement `VolumeCondition` in only the Node
  /// Plugin, only the Controller Plugin, or both.
  /// If `VolumeCondition` is implemented in both the Node and
  /// Controller Plugins, it SHALL report from different
  /// perspectives.
  /// If for some reason Node and Controller Plugins report
  /// misaligned volume conditions, CO SHALL assume the worst case
  /// is the truth.
  /// Note that, for alpha, `VolumeCondition` is intended to be
  /// informative for humans only, not for automation.
  static const NodeServiceCapability_RPC_Type VOLUME_CONDITION =
      NodeServiceCapability_RPC_Type._(
          4, _omitEnumNames ? '' : 'VOLUME_CONDITION');

  /// Indicates the SP supports the SINGLE_NODE_SINGLE_WRITER and/or
  /// SINGLE_NODE_MULTI_WRITER access modes.
  /// These access modes are intended to replace the
  /// SINGLE_NODE_WRITER access mode to clarify the number of writers
  /// for a volume on a single node. Plugins MUST accept and allow
  /// use of the SINGLE_NODE_WRITER access mode (subject to the
  /// processing rules for NodePublishVolume), when either
  /// SINGLE_NODE_SINGLE_WRITER and/or SINGLE_NODE_MULTI_WRITER are
  /// supported, in order to permit older COs to continue working.
  static const NodeServiceCapability_RPC_Type SINGLE_NODE_MULTI_WRITER =
      NodeServiceCapability_RPC_Type._(
          5, _omitEnumNames ? '' : 'SINGLE_NODE_MULTI_WRITER');

  /// Indicates that Node service supports mounting volumes
  /// with provided volume group identifier during node stage
  /// or node publish RPC calls.
  static const NodeServiceCapability_RPC_Type VOLUME_MOUNT_GROUP =
      NodeServiceCapability_RPC_Type._(
          6, _omitEnumNames ? '' : 'VOLUME_MOUNT_GROUP');

  static const $core.List<NodeServiceCapability_RPC_Type> values =
      <NodeServiceCapability_RPC_Type>[
    UNKNOWN,
    STAGE_UNSTAGE_VOLUME,
    GET_VOLUME_STATS,
    EXPAND_VOLUME,
    VOLUME_CONDITION,
    SINGLE_NODE_MULTI_WRITER,
    VOLUME_MOUNT_GROUP,
  ];

  static final $core.List<NodeServiceCapability_RPC_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 6);
  static NodeServiceCapability_RPC_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const NodeServiceCapability_RPC_Type._(super.value, super.name);
}

class GroupControllerServiceCapability_RPC_Type extends $pb.ProtobufEnum {
  static const GroupControllerServiceCapability_RPC_Type UNKNOWN =
      GroupControllerServiceCapability_RPC_Type._(
          0, _omitEnumNames ? '' : 'UNKNOWN');

  /// Indicates that the group controller plugin supports
  /// creating, deleting, and getting details of a volume
  /// group snapshot.
  static const GroupControllerServiceCapability_RPC_Type
      CREATE_DELETE_GET_VOLUME_GROUP_SNAPSHOT =
      GroupControllerServiceCapability_RPC_Type._(
          1, _omitEnumNames ? '' : 'CREATE_DELETE_GET_VOLUME_GROUP_SNAPSHOT');

  static const $core.List<GroupControllerServiceCapability_RPC_Type> values =
      <GroupControllerServiceCapability_RPC_Type>[
    UNKNOWN,
    CREATE_DELETE_GET_VOLUME_GROUP_SNAPSHOT,
  ];

  static final $core.List<GroupControllerServiceCapability_RPC_Type?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 1);
  static GroupControllerServiceCapability_RPC_Type? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const GroupControllerServiceCapability_RPC_Type._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
