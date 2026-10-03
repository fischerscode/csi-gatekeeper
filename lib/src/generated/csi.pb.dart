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

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart'
    as $2;
import 'package:protobuf/well_known_types/google/protobuf/wrappers.pb.dart'
    as $1;

import 'csi.pbenum.dart';

export 'package:protobuf/protobuf.dart' show GeneratedMessageGenericExtensions;

export 'csi.pbenum.dart';

class GetPluginInfoRequest extends $pb.GeneratedMessage {
  factory GetPluginInfoRequest() => GetPluginInfoRequest._();

  GetPluginInfoRequest._();

  factory GetPluginInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginInfoRequest()..mergeFromBuffer(data, registry);
  factory GetPluginInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginInfoRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPluginInfoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetPluginInfoRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginInfoRequest copyWith(void Function(GetPluginInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetPluginInfoRequest))
          as GetPluginInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetPluginInfoRequest() / GetPluginInfoRequest.new instead')
  static GetPluginInfoRequest create() => GetPluginInfoRequest._();
  static $pb.GeneratedMessage $_createMessage() => GetPluginInfoRequest._();
  @$core.override
  GetPluginInfoRequest createEmptyInstance() => GetPluginInfoRequest._();
  @$core.pragma('dart2js:noInline')
  static GetPluginInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPluginInfoRequest>(
          GetPluginInfoRequest.$_createMessage);
  static GetPluginInfoRequest? _defaultInstance;
}

class GetPluginInfoResponse extends $pb.GeneratedMessage {
  factory GetPluginInfoResponse({
    $core.String? name,
    $core.String? vendorVersion,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? manifest,
  }) {
    final result = GetPluginInfoResponse._();
    if (name != null) result.name = name;
    if (vendorVersion != null) result.vendorVersion = vendorVersion;
    if (manifest != null) result.manifest.addEntries(manifest);
    return result;
  }

  GetPluginInfoResponse._();

  factory GetPluginInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginInfoResponse()..mergeFromBuffer(data, registry);
  factory GetPluginInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginInfoResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPluginInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetPluginInfoResponse.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOS(2, _omitFieldNames ? '' : 'vendorVersion')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'manifest',
        entryClassName: 'GetPluginInfoResponse.ManifestEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginInfoResponse copyWith(
          void Function(GetPluginInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetPluginInfoResponse))
          as GetPluginInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetPluginInfoResponse() / GetPluginInfoResponse.new instead')
  static GetPluginInfoResponse create() => GetPluginInfoResponse._();
  static $pb.GeneratedMessage $_createMessage() => GetPluginInfoResponse._();
  @$core.override
  GetPluginInfoResponse createEmptyInstance() => GetPluginInfoResponse._();
  @$core.pragma('dart2js:noInline')
  static GetPluginInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPluginInfoResponse>(
          GetPluginInfoResponse.$_createMessage);
  static GetPluginInfoResponse? _defaultInstance;

  /// The name MUST follow domain name notation format
  /// (https://tools.ietf.org/html/rfc1035#section-2.3.1). It SHOULD
  /// include the plugin's host company name and the plugin name,
  /// to minimize the possibility of collisions. It MUST be 63
  /// characters or less, beginning and ending with an alphanumeric
  /// character ([a-z0-9A-Z]) with dashes (-), dots (.), and
  /// alphanumerics between. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// This field is REQUIRED. Value of this field is opaque to the CO.
  @$pb.TagNumber(2)
  $core.String get vendorVersion => $_getSZ(1);
  @$pb.TagNumber(2)
  set vendorVersion($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVendorVersion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVendorVersion() => $_clearField(2);

  /// This field is OPTIONAL. Values are opaque to the CO.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get manifest => $_getMap(2);
}

class GetPluginCapabilitiesRequest extends $pb.GeneratedMessage {
  factory GetPluginCapabilitiesRequest() => GetPluginCapabilitiesRequest._();

  GetPluginCapabilitiesRequest._();

  factory GetPluginCapabilitiesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginCapabilitiesRequest()..mergeFromBuffer(data, registry);
  factory GetPluginCapabilitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginCapabilitiesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPluginCapabilitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetPluginCapabilitiesRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginCapabilitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginCapabilitiesRequest copyWith(
          void Function(GetPluginCapabilitiesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetPluginCapabilitiesRequest))
          as GetPluginCapabilitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetPluginCapabilitiesRequest() / GetPluginCapabilitiesRequest.new instead')
  static GetPluginCapabilitiesRequest create() =>
      GetPluginCapabilitiesRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      GetPluginCapabilitiesRequest._();
  @$core.override
  GetPluginCapabilitiesRequest createEmptyInstance() =>
      GetPluginCapabilitiesRequest._();
  @$core.pragma('dart2js:noInline')
  static GetPluginCapabilitiesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPluginCapabilitiesRequest>(
          GetPluginCapabilitiesRequest.$_createMessage);
  static GetPluginCapabilitiesRequest? _defaultInstance;
}

class GetPluginCapabilitiesResponse extends $pb.GeneratedMessage {
  factory GetPluginCapabilitiesResponse({
    $core.Iterable<PluginCapability>? capabilities,
  }) {
    final result = GetPluginCapabilitiesResponse._();
    if (capabilities != null) result.capabilities.addAll(capabilities);
    return result;
  }

  GetPluginCapabilitiesResponse._();

  factory GetPluginCapabilitiesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginCapabilitiesResponse()..mergeFromBuffer(data, registry);
  factory GetPluginCapabilitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetPluginCapabilitiesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetPluginCapabilitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetPluginCapabilitiesResponse.$_createMessage)
    ..pPM<PluginCapability>(1, _omitFieldNames ? '' : 'capabilities',
        subBuilder: PluginCapability.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginCapabilitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetPluginCapabilitiesResponse copyWith(
          void Function(GetPluginCapabilitiesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetPluginCapabilitiesResponse))
          as GetPluginCapabilitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetPluginCapabilitiesResponse() / GetPluginCapabilitiesResponse.new instead')
  static GetPluginCapabilitiesResponse create() =>
      GetPluginCapabilitiesResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      GetPluginCapabilitiesResponse._();
  @$core.override
  GetPluginCapabilitiesResponse createEmptyInstance() =>
      GetPluginCapabilitiesResponse._();
  @$core.pragma('dart2js:noInline')
  static GetPluginCapabilitiesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetPluginCapabilitiesResponse>(
          GetPluginCapabilitiesResponse.$_createMessage);
  static GetPluginCapabilitiesResponse? _defaultInstance;

  /// All the capabilities that the controller service supports. This
  /// field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<PluginCapability> get capabilities => $_getList(0);
}

class PluginCapability_Service extends $pb.GeneratedMessage {
  factory PluginCapability_Service({
    PluginCapability_Service_Type? type,
  }) {
    final result = PluginCapability_Service._();
    if (type != null) result.type = type;
    return result;
  }

  PluginCapability_Service._();

  factory PluginCapability_Service.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability_Service()..mergeFromBuffer(data, registry);
  factory PluginCapability_Service.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability_Service()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginCapability.Service',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: PluginCapability_Service.$_createMessage)
    ..aE<PluginCapability_Service_Type>(1, _omitFieldNames ? '' : 'type',
        enumValues: PluginCapability_Service_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability_Service clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability_Service copyWith(
          void Function(PluginCapability_Service) updates) =>
      super.copyWith((message) => updates(message as PluginCapability_Service))
          as PluginCapability_Service;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use PluginCapability_Service() / PluginCapability_Service.new instead')
  static PluginCapability_Service create() => PluginCapability_Service._();
  static $pb.GeneratedMessage $_createMessage() => PluginCapability_Service._();
  @$core.override
  PluginCapability_Service createEmptyInstance() =>
      PluginCapability_Service._();
  @$core.pragma('dart2js:noInline')
  static PluginCapability_Service getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginCapability_Service>(
          PluginCapability_Service.$_createMessage);
  static PluginCapability_Service? _defaultInstance;

  @$pb.TagNumber(1)
  PluginCapability_Service_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PluginCapability_Service_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

class PluginCapability_VolumeExpansion extends $pb.GeneratedMessage {
  factory PluginCapability_VolumeExpansion({
    PluginCapability_VolumeExpansion_Type? type,
  }) {
    final result = PluginCapability_VolumeExpansion._();
    if (type != null) result.type = type;
    return result;
  }

  PluginCapability_VolumeExpansion._();

  factory PluginCapability_VolumeExpansion.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability_VolumeExpansion()..mergeFromBuffer(data, registry);
  factory PluginCapability_VolumeExpansion.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability_VolumeExpansion()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginCapability.VolumeExpansion',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: PluginCapability_VolumeExpansion.$_createMessage)
    ..aE<PluginCapability_VolumeExpansion_Type>(
        1, _omitFieldNames ? '' : 'type',
        enumValues: PluginCapability_VolumeExpansion_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability_VolumeExpansion clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability_VolumeExpansion copyWith(
          void Function(PluginCapability_VolumeExpansion) updates) =>
      super.copyWith(
              (message) => updates(message as PluginCapability_VolumeExpansion))
          as PluginCapability_VolumeExpansion;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use PluginCapability_VolumeExpansion() / PluginCapability_VolumeExpansion.new instead')
  static PluginCapability_VolumeExpansion create() =>
      PluginCapability_VolumeExpansion._();
  static $pb.GeneratedMessage $_createMessage() =>
      PluginCapability_VolumeExpansion._();
  @$core.override
  PluginCapability_VolumeExpansion createEmptyInstance() =>
      PluginCapability_VolumeExpansion._();
  @$core.pragma('dart2js:noInline')
  static PluginCapability_VolumeExpansion getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<PluginCapability_VolumeExpansion>(
          PluginCapability_VolumeExpansion.$_createMessage);
  static PluginCapability_VolumeExpansion? _defaultInstance;

  @$pb.TagNumber(1)
  PluginCapability_VolumeExpansion_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(PluginCapability_VolumeExpansion_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

enum PluginCapability_Type { service, volumeExpansion, notSet }

/// Specifies a capability of the plugin.
class PluginCapability extends $pb.GeneratedMessage {
  factory PluginCapability({
    PluginCapability_Service? service,
    PluginCapability_VolumeExpansion? volumeExpansion,
  }) {
    final result = PluginCapability._();
    if (service != null) result.service = service;
    if (volumeExpansion != null) result.volumeExpansion = volumeExpansion;
    return result;
  }

  PluginCapability._();

  factory PluginCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability()..mergeFromBuffer(data, registry);
  factory PluginCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      PluginCapability()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, PluginCapability_Type>
      _PluginCapability_TypeByTag = {
    1: PluginCapability_Type.service,
    2: PluginCapability_Type.volumeExpansion,
    0: PluginCapability_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'PluginCapability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: PluginCapability.$_createMessage)
    ..oo(0, [1, 2])
    ..aOM<PluginCapability_Service>(1, _omitFieldNames ? '' : 'service',
        subBuilder: PluginCapability_Service.$_createMessage)
    ..aOM<PluginCapability_VolumeExpansion>(
        2, _omitFieldNames ? '' : 'volumeExpansion',
        subBuilder: PluginCapability_VolumeExpansion.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  PluginCapability copyWith(void Function(PluginCapability) updates) =>
      super.copyWith((message) => updates(message as PluginCapability))
          as PluginCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use PluginCapability() / PluginCapability.new instead')
  static PluginCapability create() => PluginCapability._();
  static $pb.GeneratedMessage $_createMessage() => PluginCapability._();
  @$core.override
  PluginCapability createEmptyInstance() => PluginCapability._();
  @$core.pragma('dart2js:noInline')
  static PluginCapability getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PluginCapability>(
          PluginCapability.$_createMessage);
  static PluginCapability? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  PluginCapability_Type whichType() =>
      _PluginCapability_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearType() => $_clearField($_whichOneof(0));

  /// Service that the plugin supports.
  @$pb.TagNumber(1)
  PluginCapability_Service get service => $_getN(0);
  @$pb.TagNumber(1)
  set service(PluginCapability_Service value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasService() => $_has(0);
  @$pb.TagNumber(1)
  void clearService() => $_clearField(1);
  @$pb.TagNumber(1)
  PluginCapability_Service ensureService() => $_ensure(0);

  @$pb.TagNumber(2)
  PluginCapability_VolumeExpansion get volumeExpansion => $_getN(1);
  @$pb.TagNumber(2)
  set volumeExpansion(PluginCapability_VolumeExpansion value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeExpansion() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeExpansion() => $_clearField(2);
  @$pb.TagNumber(2)
  PluginCapability_VolumeExpansion ensureVolumeExpansion() => $_ensure(1);
}

class ProbeRequest extends $pb.GeneratedMessage {
  factory ProbeRequest() => ProbeRequest._();

  ProbeRequest._();

  factory ProbeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ProbeRequest()..mergeFromBuffer(data, registry);
  factory ProbeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ProbeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ProbeRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeRequest copyWith(void Function(ProbeRequest) updates) =>
      super.copyWith((message) => updates(message as ProbeRequest))
          as ProbeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ProbeRequest() / ProbeRequest.new instead')
  static ProbeRequest create() => ProbeRequest._();
  static $pb.GeneratedMessage $_createMessage() => ProbeRequest._();
  @$core.override
  ProbeRequest createEmptyInstance() => ProbeRequest._();
  @$core.pragma('dart2js:noInline')
  static ProbeRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProbeRequest>(
          ProbeRequest.$_createMessage);
  static ProbeRequest? _defaultInstance;
}

class ProbeResponse extends $pb.GeneratedMessage {
  factory ProbeResponse({
    $1.BoolValue? ready,
  }) {
    final result = ProbeResponse._();
    if (ready != null) result.ready = ready;
    return result;
  }

  ProbeResponse._();

  factory ProbeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ProbeResponse()..mergeFromBuffer(data, registry);
  factory ProbeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ProbeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ProbeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ProbeResponse.$_createMessage)
    ..aOM<$1.BoolValue>(1, _omitFieldNames ? '' : 'ready',
        subBuilder: $1.BoolValue.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ProbeResponse copyWith(void Function(ProbeResponse) updates) =>
      super.copyWith((message) => updates(message as ProbeResponse))
          as ProbeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ProbeResponse() / ProbeResponse.new instead')
  static ProbeResponse create() => ProbeResponse._();
  static $pb.GeneratedMessage $_createMessage() => ProbeResponse._();
  @$core.override
  ProbeResponse createEmptyInstance() => ProbeResponse._();
  @$core.pragma('dart2js:noInline')
  static ProbeResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ProbeResponse>(
          ProbeResponse.$_createMessage);
  static ProbeResponse? _defaultInstance;

  /// Readiness allows a plugin to report its initialization status back
  /// to the CO. Initialization for some plugins MAY be time consuming
  /// and it is important for a CO to distinguish between the following
  /// cases:
  ///
  /// 1) The plugin is in an unhealthy state and MAY need restarting. In
  ///    this case a gRPC error code SHALL be returned.
  /// 2) The plugin is still initializing, but is otherwise perfectly
  ///    healthy. In this case a successful response SHALL be returned
  ///    with a readiness value of `false`. Calls to the plugin's
  ///    Controller and/or Node services MAY fail due to an incomplete
  ///    initialization state.
  /// 3) The plugin has finished initializing and is ready to service
  ///    calls to its Controller and/or Node services. A successful
  ///    response is returned with a readiness value of `true`.
  ///
  /// This field is OPTIONAL. If not present, the caller SHALL assume
  /// that the plugin is in a ready state and is accepting calls to its
  /// Controller and/or Node services (according to the plugin's reported
  /// capabilities).
  @$pb.TagNumber(1)
  $1.BoolValue get ready => $_getN(0);
  @$pb.TagNumber(1)
  set ready($1.BoolValue value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasReady() => $_has(0);
  @$pb.TagNumber(1)
  void clearReady() => $_clearField(1);
  @$pb.TagNumber(1)
  $1.BoolValue ensureReady() => $_ensure(0);
}

class CreateVolumeRequest extends $pb.GeneratedMessage {
  factory CreateVolumeRequest({
    $core.String? name,
    CapacityRange? capacityRange,
    $core.Iterable<VolumeCapability>? volumeCapabilities,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    VolumeContentSource? volumeContentSource,
    TopologyRequirement? accessibilityRequirements,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        mutableParameters,
  }) {
    final result = CreateVolumeRequest._();
    if (name != null) result.name = name;
    if (capacityRange != null) result.capacityRange = capacityRange;
    if (volumeCapabilities != null)
      result.volumeCapabilities.addAll(volumeCapabilities);
    if (parameters != null) result.parameters.addEntries(parameters);
    if (secrets != null) result.secrets.addEntries(secrets);
    if (volumeContentSource != null)
      result.volumeContentSource = volumeContentSource;
    if (accessibilityRequirements != null)
      result.accessibilityRequirements = accessibilityRequirements;
    if (mutableParameters != null)
      result.mutableParameters.addEntries(mutableParameters);
    return result;
  }

  CreateVolumeRequest._();

  factory CreateVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeRequest()..mergeFromBuffer(data, registry);
  factory CreateVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..aOM<CapacityRange>(2, _omitFieldNames ? '' : 'capacityRange',
        subBuilder: CapacityRange.$_createMessage)
    ..pPM<VolumeCapability>(3, _omitFieldNames ? '' : 'volumeCapabilities',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'CreateVolumeRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'CreateVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOM<VolumeContentSource>(6, _omitFieldNames ? '' : 'volumeContentSource',
        subBuilder: VolumeContentSource.$_createMessage)
    ..aOM<TopologyRequirement>(
        7, _omitFieldNames ? '' : 'accessibilityRequirements',
        subBuilder: TopologyRequirement.$_createMessage)
    ..m<$core.String, $core.String>(
        8, _omitFieldNames ? '' : 'mutableParameters',
        entryClassName: 'CreateVolumeRequest.MutableParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeRequest copyWith(void Function(CreateVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as CreateVolumeRequest))
          as CreateVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use CreateVolumeRequest() / CreateVolumeRequest.new instead')
  static CreateVolumeRequest create() => CreateVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => CreateVolumeRequest._();
  @$core.override
  CreateVolumeRequest createEmptyInstance() => CreateVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static CreateVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVolumeRequest>(
          CreateVolumeRequest.$_createMessage);
  static CreateVolumeRequest? _defaultInstance;

  /// The suggested name for the storage space. This field is REQUIRED.
  /// It serves two purposes:
  /// 1) Idempotency - This name is generated by the CO to achieve
  ///    idempotency.  The Plugin SHOULD ensure that multiple
  ///    `CreateVolume` calls for the same name do not result in more
  ///    than one piece of storage provisioned corresponding to that
  ///    name. If a Plugin is unable to enforce idempotency, the CO's
  ///    error recovery logic could result in multiple (unused) volumes
  ///    being provisioned.
  ///    In the case of error, the CO MUST handle the gRPC error codes
  ///    per the recovery behavior defined in the "CreateVolume Errors"
  ///    section below.
  ///    The CO is responsible for cleaning up volumes it provisioned
  ///    that it no longer needs. If the CO is uncertain whether a volume
  ///    was provisioned or not when a `CreateVolume` call fails, the CO
  ///    MAY call `CreateVolume` again, with the same name, to ensure the
  ///    volume exists and to retrieve the volume's `volume_id` (unless
  ///    otherwise prohibited by "CreateVolume Errors").
  /// 2) Suggested name - Some storage systems allow callers to specify
  ///    an identifier by which to refer to the newly provisioned
  ///    storage. If a storage system supports this, it can optionally
  ///    use this name as the identifier for the new volume.
  /// Any Unicode string that conforms to the length limit is allowed
  /// except those containing the following banned characters:
  /// U+0000-U+0008, U+000B, U+000C, U+000E-U+001F, U+007F-U+009F.
  /// (These are control characters other than commonly used whitespace.)
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// This field is OPTIONAL. This allows the CO to specify the capacity
  /// requirement of the volume to be provisioned. If not specified, the
  /// Plugin MAY choose an implementation-defined capacity range. If
  /// specified it MUST always be honored, even when creating volumes
  /// from a source; which MAY force some backends to internally extend
  /// the volume after creating it.
  @$pb.TagNumber(2)
  CapacityRange get capacityRange => $_getN(1);
  @$pb.TagNumber(2)
  set capacityRange(CapacityRange value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCapacityRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacityRange() => $_clearField(2);
  @$pb.TagNumber(2)
  CapacityRange ensureCapacityRange() => $_ensure(1);

  /// The capabilities that the provisioned volume MUST have. SP MUST
  /// provision a volume that will satisfy ALL of the capabilities
  /// specified in this list. Otherwise SP MUST return the appropriate
  /// gRPC error code.
  /// The Plugin MUST assume that the CO MAY use the provisioned volume
  /// with ANY of the capabilities specified in this list.
  /// For example, a CO MAY specify two volume capabilities: one with
  /// access mode SINGLE_NODE_WRITER and another with access mode
  /// MULTI_NODE_READER_ONLY. In this case, the SP MUST verify that the
  /// provisioned volume can be used in either mode.
  /// This also enables the CO to do early validation: If ANY of the
  /// specified volume capabilities are not supported by the SP, the call
  /// MUST return the appropriate gRPC error code.
  /// This field is REQUIRED.
  @$pb.TagNumber(3)
  $pb.PbList<VolumeCapability> get volumeCapabilities => $_getList(2);

  /// Plugin specific creation-time parameters passed in as opaque
  /// key-value pairs. This field is OPTIONAL. The Plugin is responsible
  /// for parsing and validating these parameters. COs will treat
  /// these as opaque.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(3);

  /// Secrets required by plugin to complete volume creation request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(4);

  /// If specified, the new volume will be pre-populated with data from
  /// this source. This field is OPTIONAL.
  @$pb.TagNumber(6)
  VolumeContentSource get volumeContentSource => $_getN(5);
  @$pb.TagNumber(6)
  set volumeContentSource(VolumeContentSource value) => $_setField(6, value);
  @$pb.TagNumber(6)
  $core.bool hasVolumeContentSource() => $_has(5);
  @$pb.TagNumber(6)
  void clearVolumeContentSource() => $_clearField(6);
  @$pb.TagNumber(6)
  VolumeContentSource ensureVolumeContentSource() => $_ensure(5);

  /// Specifies where (regions, zones, racks, etc.) the provisioned
  /// volume MUST be accessible from.
  /// An SP SHALL advertise the requirements for topological
  /// accessibility information in documentation. COs SHALL only specify
  /// topological accessibility information supported by the SP.
  /// This field is OPTIONAL.
  /// This field SHALL NOT be specified unless the SP has the
  /// VOLUME_ACCESSIBILITY_CONSTRAINTS plugin capability.
  /// If this field is not specified and the SP has the
  /// VOLUME_ACCESSIBILITY_CONSTRAINTS plugin capability, the SP MAY
  /// choose where the provisioned volume is accessible from.
  @$pb.TagNumber(7)
  TopologyRequirement get accessibilityRequirements => $_getN(6);
  @$pb.TagNumber(7)
  set accessibilityRequirements(TopologyRequirement value) =>
      $_setField(7, value);
  @$pb.TagNumber(7)
  $core.bool hasAccessibilityRequirements() => $_has(6);
  @$pb.TagNumber(7)
  void clearAccessibilityRequirements() => $_clearField(7);
  @$pb.TagNumber(7)
  TopologyRequirement ensureAccessibilityRequirements() => $_ensure(6);

  /// Plugins MUST treat these
  /// as if they take precedence over the parameters field.
  /// This field SHALL NOT be specified unless the SP has the
  /// MODIFY_VOLUME plugin capability.
  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.String> get mutableParameters => $_getMap(7);
}

class VolumeContentSource_SnapshotSource extends $pb.GeneratedMessage {
  factory VolumeContentSource_SnapshotSource({
    $core.String? snapshotId,
  }) {
    final result = VolumeContentSource_SnapshotSource._();
    if (snapshotId != null) result.snapshotId = snapshotId;
    return result;
  }

  VolumeContentSource_SnapshotSource._();

  factory VolumeContentSource_SnapshotSource.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource_SnapshotSource()..mergeFromBuffer(data, registry);
  factory VolumeContentSource_SnapshotSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource_SnapshotSource()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeContentSource.SnapshotSource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeContentSource_SnapshotSource.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'snapshotId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource_SnapshotSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource_SnapshotSource copyWith(
          void Function(VolumeContentSource_SnapshotSource) updates) =>
      super.copyWith((message) =>
              updates(message as VolumeContentSource_SnapshotSource))
          as VolumeContentSource_SnapshotSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use VolumeContentSource_SnapshotSource() / VolumeContentSource_SnapshotSource.new instead')
  static VolumeContentSource_SnapshotSource create() =>
      VolumeContentSource_SnapshotSource._();
  static $pb.GeneratedMessage $_createMessage() =>
      VolumeContentSource_SnapshotSource._();
  @$core.override
  VolumeContentSource_SnapshotSource createEmptyInstance() =>
      VolumeContentSource_SnapshotSource._();
  @$core.pragma('dart2js:noInline')
  static VolumeContentSource_SnapshotSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeContentSource_SnapshotSource>(
          VolumeContentSource_SnapshotSource.$_createMessage);
  static VolumeContentSource_SnapshotSource? _defaultInstance;

  /// Contains identity information for the existing source snapshot.
  /// This field is REQUIRED. Plugin is REQUIRED to support creating
  /// volume from snapshot if it supports the capability
  /// CREATE_DELETE_SNAPSHOT.
  @$pb.TagNumber(1)
  $core.String get snapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set snapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshotId() => $_clearField(1);
}

class VolumeContentSource_VolumeSource extends $pb.GeneratedMessage {
  factory VolumeContentSource_VolumeSource({
    $core.String? volumeId,
  }) {
    final result = VolumeContentSource_VolumeSource._();
    if (volumeId != null) result.volumeId = volumeId;
    return result;
  }

  VolumeContentSource_VolumeSource._();

  factory VolumeContentSource_VolumeSource.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource_VolumeSource()..mergeFromBuffer(data, registry);
  factory VolumeContentSource_VolumeSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource_VolumeSource()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeContentSource.VolumeSource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeContentSource_VolumeSource.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource_VolumeSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource_VolumeSource copyWith(
          void Function(VolumeContentSource_VolumeSource) updates) =>
      super.copyWith(
              (message) => updates(message as VolumeContentSource_VolumeSource))
          as VolumeContentSource_VolumeSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use VolumeContentSource_VolumeSource() / VolumeContentSource_VolumeSource.new instead')
  static VolumeContentSource_VolumeSource create() =>
      VolumeContentSource_VolumeSource._();
  static $pb.GeneratedMessage $_createMessage() =>
      VolumeContentSource_VolumeSource._();
  @$core.override
  VolumeContentSource_VolumeSource createEmptyInstance() =>
      VolumeContentSource_VolumeSource._();
  @$core.pragma('dart2js:noInline')
  static VolumeContentSource_VolumeSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeContentSource_VolumeSource>(
          VolumeContentSource_VolumeSource.$_createMessage);
  static VolumeContentSource_VolumeSource? _defaultInstance;

  /// Contains identity information for the existing source volume.
  /// This field is REQUIRED. Plugins reporting CLONE_VOLUME
  /// capability MUST support creating a volume from another volume.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);
}

enum VolumeContentSource_Type { snapshot, volume, notSet }

/// Specifies what source the volume will be created from. One of the
/// type fields MUST be specified.
class VolumeContentSource extends $pb.GeneratedMessage {
  factory VolumeContentSource({
    VolumeContentSource_SnapshotSource? snapshot,
    VolumeContentSource_VolumeSource? volume,
  }) {
    final result = VolumeContentSource._();
    if (snapshot != null) result.snapshot = snapshot;
    if (volume != null) result.volume = volume;
    return result;
  }

  VolumeContentSource._();

  factory VolumeContentSource.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource()..mergeFromBuffer(data, registry);
  factory VolumeContentSource.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeContentSource()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VolumeContentSource_Type>
      _VolumeContentSource_TypeByTag = {
    1: VolumeContentSource_Type.snapshot,
    2: VolumeContentSource_Type.volume,
    0: VolumeContentSource_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeContentSource',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeContentSource.$_createMessage)
    ..oo(0, [1, 2])
    ..aOM<VolumeContentSource_SnapshotSource>(
        1, _omitFieldNames ? '' : 'snapshot',
        subBuilder: VolumeContentSource_SnapshotSource.$_createMessage)
    ..aOM<VolumeContentSource_VolumeSource>(2, _omitFieldNames ? '' : 'volume',
        subBuilder: VolumeContentSource_VolumeSource.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeContentSource copyWith(void Function(VolumeContentSource) updates) =>
      super.copyWith((message) => updates(message as VolumeContentSource))
          as VolumeContentSource;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use VolumeContentSource() / VolumeContentSource.new instead')
  static VolumeContentSource create() => VolumeContentSource._();
  static $pb.GeneratedMessage $_createMessage() => VolumeContentSource._();
  @$core.override
  VolumeContentSource createEmptyInstance() => VolumeContentSource._();
  @$core.pragma('dart2js:noInline')
  static VolumeContentSource getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeContentSource>(
          VolumeContentSource.$_createMessage);
  static VolumeContentSource? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  VolumeContentSource_Type whichType() =>
      _VolumeContentSource_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VolumeContentSource_SnapshotSource get snapshot => $_getN(0);
  @$pb.TagNumber(1)
  set snapshot(VolumeContentSource_SnapshotSource value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshot() => $_clearField(1);
  @$pb.TagNumber(1)
  VolumeContentSource_SnapshotSource ensureSnapshot() => $_ensure(0);

  @$pb.TagNumber(2)
  VolumeContentSource_VolumeSource get volume => $_getN(1);
  @$pb.TagNumber(2)
  set volume(VolumeContentSource_VolumeSource value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVolume() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolume() => $_clearField(2);
  @$pb.TagNumber(2)
  VolumeContentSource_VolumeSource ensureVolume() => $_ensure(1);
}

class CreateVolumeResponse extends $pb.GeneratedMessage {
  factory CreateVolumeResponse({
    Volume? volume,
  }) {
    final result = CreateVolumeResponse._();
    if (volume != null) result.volume = volume;
    return result;
  }

  CreateVolumeResponse._();

  factory CreateVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeResponse()..mergeFromBuffer(data, registry);
  factory CreateVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateVolumeResponse.$_createMessage)
    ..aOM<Volume>(1, _omitFieldNames ? '' : 'volume',
        subBuilder: Volume.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeResponse copyWith(void Function(CreateVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as CreateVolumeResponse))
          as CreateVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CreateVolumeResponse() / CreateVolumeResponse.new instead')
  static CreateVolumeResponse create() => CreateVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() => CreateVolumeResponse._();
  @$core.override
  CreateVolumeResponse createEmptyInstance() => CreateVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static CreateVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVolumeResponse>(
          CreateVolumeResponse.$_createMessage);
  static CreateVolumeResponse? _defaultInstance;

  /// Contains all attributes of the newly created volume that are
  /// relevant to the CO along with information required by the Plugin
  /// to uniquely identify the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  Volume get volume => $_getN(0);
  @$pb.TagNumber(1)
  set volume(Volume value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVolume() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolume() => $_clearField(1);
  @$pb.TagNumber(1)
  Volume ensureVolume() => $_ensure(0);
}

/// Indicate that the volume will be accessed via the block device API.
class VolumeCapability_BlockVolume extends $pb.GeneratedMessage {
  factory VolumeCapability_BlockVolume() => VolumeCapability_BlockVolume._();

  VolumeCapability_BlockVolume._();

  factory VolumeCapability_BlockVolume.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_BlockVolume()..mergeFromBuffer(data, registry);
  factory VolumeCapability_BlockVolume.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_BlockVolume()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeCapability.BlockVolume',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeCapability_BlockVolume.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_BlockVolume clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_BlockVolume copyWith(
          void Function(VolumeCapability_BlockVolume) updates) =>
      super.copyWith(
              (message) => updates(message as VolumeCapability_BlockVolume))
          as VolumeCapability_BlockVolume;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use VolumeCapability_BlockVolume() / VolumeCapability_BlockVolume.new instead')
  static VolumeCapability_BlockVolume create() =>
      VolumeCapability_BlockVolume._();
  static $pb.GeneratedMessage $_createMessage() =>
      VolumeCapability_BlockVolume._();
  @$core.override
  VolumeCapability_BlockVolume createEmptyInstance() =>
      VolumeCapability_BlockVolume._();
  @$core.pragma('dart2js:noInline')
  static VolumeCapability_BlockVolume getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeCapability_BlockVolume>(
          VolumeCapability_BlockVolume.$_createMessage);
  static VolumeCapability_BlockVolume? _defaultInstance;
}

/// Indicate that the volume will be accessed via the filesystem API.
class VolumeCapability_MountVolume extends $pb.GeneratedMessage {
  factory VolumeCapability_MountVolume({
    $core.String? fsType,
    $core.Iterable<$core.String>? mountFlags,
    $core.String? volumeMountGroup,
  }) {
    final result = VolumeCapability_MountVolume._();
    if (fsType != null) result.fsType = fsType;
    if (mountFlags != null) result.mountFlags.addAll(mountFlags);
    if (volumeMountGroup != null) result.volumeMountGroup = volumeMountGroup;
    return result;
  }

  VolumeCapability_MountVolume._();

  factory VolumeCapability_MountVolume.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_MountVolume()..mergeFromBuffer(data, registry);
  factory VolumeCapability_MountVolume.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_MountVolume()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeCapability.MountVolume',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeCapability_MountVolume.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'fsType')
    ..pPS(2, _omitFieldNames ? '' : 'mountFlags')
    ..aOS(3, _omitFieldNames ? '' : 'volumeMountGroup')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_MountVolume clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_MountVolume copyWith(
          void Function(VolumeCapability_MountVolume) updates) =>
      super.copyWith(
              (message) => updates(message as VolumeCapability_MountVolume))
          as VolumeCapability_MountVolume;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use VolumeCapability_MountVolume() / VolumeCapability_MountVolume.new instead')
  static VolumeCapability_MountVolume create() =>
      VolumeCapability_MountVolume._();
  static $pb.GeneratedMessage $_createMessage() =>
      VolumeCapability_MountVolume._();
  @$core.override
  VolumeCapability_MountVolume createEmptyInstance() =>
      VolumeCapability_MountVolume._();
  @$core.pragma('dart2js:noInline')
  static VolumeCapability_MountVolume getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeCapability_MountVolume>(
          VolumeCapability_MountVolume.$_createMessage);
  static VolumeCapability_MountVolume? _defaultInstance;

  /// The filesystem type. This field is OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(1)
  $core.String get fsType => $_getSZ(0);
  @$pb.TagNumber(1)
  set fsType($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasFsType() => $_has(0);
  @$pb.TagNumber(1)
  void clearFsType() => $_clearField(1);

  /// The mount options that can be used for the volume. This field is
  /// OPTIONAL. `mount_flags` MAY contain sensitive information.
  /// Therefore, the CO and the Plugin MUST NOT leak this information
  /// to untrusted entities. The total size of this repeated field
  /// SHALL NOT exceed 4 KiB.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get mountFlags => $_getList(1);

  /// If SP has VOLUME_MOUNT_GROUP node capability and CO provides
  /// this field then SP MUST ensure that the volume_mount_group
  /// parameter is passed as the group identifier to the underlying
  /// operating system mount system call, with the understanding
  /// that the set of available mount call parameters and/or
  /// mount implementations may vary across operating systems.
  /// Additionally, new file and/or directory entries written to
  /// the underlying filesystem SHOULD be permission-labeled in such a
  /// manner, unless otherwise modified by a workload, that they are
  /// both readable and writable by said mount group identifier.
  /// This is an OPTIONAL field.
  @$pb.TagNumber(3)
  $core.String get volumeMountGroup => $_getSZ(2);
  @$pb.TagNumber(3)
  set volumeMountGroup($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasVolumeMountGroup() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolumeMountGroup() => $_clearField(3);
}

/// Specify how a volume can be accessed.
class VolumeCapability_AccessMode extends $pb.GeneratedMessage {
  factory VolumeCapability_AccessMode({
    VolumeCapability_AccessMode_Mode? mode,
  }) {
    final result = VolumeCapability_AccessMode._();
    if (mode != null) result.mode = mode;
    return result;
  }

  VolumeCapability_AccessMode._();

  factory VolumeCapability_AccessMode.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_AccessMode()..mergeFromBuffer(data, registry);
  factory VolumeCapability_AccessMode.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability_AccessMode()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeCapability.AccessMode',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeCapability_AccessMode.$_createMessage)
    ..aE<VolumeCapability_AccessMode_Mode>(1, _omitFieldNames ? '' : 'mode',
        enumValues: VolumeCapability_AccessMode_Mode.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_AccessMode clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability_AccessMode copyWith(
          void Function(VolumeCapability_AccessMode) updates) =>
      super.copyWith(
              (message) => updates(message as VolumeCapability_AccessMode))
          as VolumeCapability_AccessMode;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use VolumeCapability_AccessMode() / VolumeCapability_AccessMode.new instead')
  static VolumeCapability_AccessMode create() =>
      VolumeCapability_AccessMode._();
  static $pb.GeneratedMessage $_createMessage() =>
      VolumeCapability_AccessMode._();
  @$core.override
  VolumeCapability_AccessMode createEmptyInstance() =>
      VolumeCapability_AccessMode._();
  @$core.pragma('dart2js:noInline')
  static VolumeCapability_AccessMode getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeCapability_AccessMode>(
          VolumeCapability_AccessMode.$_createMessage);
  static VolumeCapability_AccessMode? _defaultInstance;

  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  VolumeCapability_AccessMode_Mode get mode => $_getN(0);
  @$pb.TagNumber(1)
  set mode(VolumeCapability_AccessMode_Mode value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearMode() => $_clearField(1);
}

enum VolumeCapability_AccessType { block, mount, notSet }

/// Specify a capability of a volume.
class VolumeCapability extends $pb.GeneratedMessage {
  factory VolumeCapability({
    VolumeCapability_BlockVolume? block,
    VolumeCapability_MountVolume? mount,
    VolumeCapability_AccessMode? accessMode,
  }) {
    final result = VolumeCapability._();
    if (block != null) result.block = block;
    if (mount != null) result.mount = mount;
    if (accessMode != null) result.accessMode = accessMode;
    return result;
  }

  VolumeCapability._();

  factory VolumeCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability()..mergeFromBuffer(data, registry);
  factory VolumeCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCapability()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, VolumeCapability_AccessType>
      _VolumeCapability_AccessTypeByTag = {
    1: VolumeCapability_AccessType.block,
    2: VolumeCapability_AccessType.mount,
    0: VolumeCapability_AccessType.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeCapability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeCapability.$_createMessage)
    ..oo(0, [1, 2])
    ..aOM<VolumeCapability_BlockVolume>(1, _omitFieldNames ? '' : 'block',
        subBuilder: VolumeCapability_BlockVolume.$_createMessage)
    ..aOM<VolumeCapability_MountVolume>(2, _omitFieldNames ? '' : 'mount',
        subBuilder: VolumeCapability_MountVolume.$_createMessage)
    ..aOM<VolumeCapability_AccessMode>(3, _omitFieldNames ? '' : 'accessMode',
        subBuilder: VolumeCapability_AccessMode.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCapability copyWith(void Function(VolumeCapability) updates) =>
      super.copyWith((message) => updates(message as VolumeCapability))
          as VolumeCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use VolumeCapability() / VolumeCapability.new instead')
  static VolumeCapability create() => VolumeCapability._();
  static $pb.GeneratedMessage $_createMessage() => VolumeCapability._();
  @$core.override
  VolumeCapability createEmptyInstance() => VolumeCapability._();
  @$core.pragma('dart2js:noInline')
  static VolumeCapability getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeCapability>(
          VolumeCapability.$_createMessage);
  static VolumeCapability? _defaultInstance;

  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  VolumeCapability_AccessType whichAccessType() =>
      _VolumeCapability_AccessTypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  @$pb.TagNumber(2)
  void clearAccessType() => $_clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  VolumeCapability_BlockVolume get block => $_getN(0);
  @$pb.TagNumber(1)
  set block(VolumeCapability_BlockVolume value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasBlock() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlock() => $_clearField(1);
  @$pb.TagNumber(1)
  VolumeCapability_BlockVolume ensureBlock() => $_ensure(0);

  @$pb.TagNumber(2)
  VolumeCapability_MountVolume get mount => $_getN(1);
  @$pb.TagNumber(2)
  set mount(VolumeCapability_MountVolume value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMount() => $_has(1);
  @$pb.TagNumber(2)
  void clearMount() => $_clearField(2);
  @$pb.TagNumber(2)
  VolumeCapability_MountVolume ensureMount() => $_ensure(1);

  /// This is a REQUIRED field.
  @$pb.TagNumber(3)
  VolumeCapability_AccessMode get accessMode => $_getN(2);
  @$pb.TagNumber(3)
  set accessMode(VolumeCapability_AccessMode value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAccessMode() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessMode() => $_clearField(3);
  @$pb.TagNumber(3)
  VolumeCapability_AccessMode ensureAccessMode() => $_ensure(2);
}

/// The capacity of the storage space in bytes. To specify an exact size,
/// `required_bytes` and `limit_bytes` SHALL be set to the same value. At
/// least one of the these fields MUST be specified.
class CapacityRange extends $pb.GeneratedMessage {
  factory CapacityRange({
    $fixnum.Int64? requiredBytes,
    $fixnum.Int64? limitBytes,
  }) {
    final result = CapacityRange._();
    if (requiredBytes != null) result.requiredBytes = requiredBytes;
    if (limitBytes != null) result.limitBytes = limitBytes;
    return result;
  }

  CapacityRange._();

  factory CapacityRange.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CapacityRange()..mergeFromBuffer(data, registry);
  factory CapacityRange.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CapacityRange()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CapacityRange',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CapacityRange.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'requiredBytes')
    ..aInt64(2, _omitFieldNames ? '' : 'limitBytes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CapacityRange clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CapacityRange copyWith(void Function(CapacityRange) updates) =>
      super.copyWith((message) => updates(message as CapacityRange))
          as CapacityRange;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use CapacityRange() / CapacityRange.new instead')
  static CapacityRange create() => CapacityRange._();
  static $pb.GeneratedMessage $_createMessage() => CapacityRange._();
  @$core.override
  CapacityRange createEmptyInstance() => CapacityRange._();
  @$core.pragma('dart2js:noInline')
  static CapacityRange getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CapacityRange>(
          CapacityRange.$_createMessage);
  static CapacityRange? _defaultInstance;

  /// Volume MUST be at least this big. This field is OPTIONAL.
  /// A value of 0 is equal to an unspecified field value.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $fixnum.Int64 get requiredBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set requiredBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasRequiredBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequiredBytes() => $_clearField(1);

  /// Volume MUST not be bigger than this. This field is OPTIONAL.
  /// A value of 0 is equal to an unspecified field value.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(2)
  $fixnum.Int64 get limitBytes => $_getI64(1);
  @$pb.TagNumber(2)
  set limitBytes($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasLimitBytes() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimitBytes() => $_clearField(2);
}

/// Information about a specific volume.
class Volume extends $pb.GeneratedMessage {
  factory Volume({
    $fixnum.Int64? capacityBytes,
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
    VolumeContentSource? contentSource,
    $core.Iterable<Topology>? accessibleTopology,
  }) {
    final result = Volume._();
    if (capacityBytes != null) result.capacityBytes = capacityBytes;
    if (volumeId != null) result.volumeId = volumeId;
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    if (contentSource != null) result.contentSource = contentSource;
    if (accessibleTopology != null)
      result.accessibleTopology.addAll(accessibleTopology);
    return result;
  }

  Volume._();

  factory Volume.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Volume()..mergeFromBuffer(data, registry);
  factory Volume.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Volume()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Volume',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: Volume.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'capacityBytes')
    ..aOS(2, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'volumeContext',
        entryClassName: 'Volume.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOM<VolumeContentSource>(4, _omitFieldNames ? '' : 'contentSource',
        subBuilder: VolumeContentSource.$_createMessage)
    ..pPM<Topology>(5, _omitFieldNames ? '' : 'accessibleTopology',
        subBuilder: Topology.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Volume clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Volume copyWith(void Function(Volume) updates) =>
      super.copyWith((message) => updates(message as Volume)) as Volume;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use Volume() / Volume.new instead')
  static Volume create() => Volume._();
  static $pb.GeneratedMessage $_createMessage() => Volume._();
  @$core.override
  Volume createEmptyInstance() => Volume._();
  @$core.pragma('dart2js:noInline')
  static Volume getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Volume>(Volume.$_createMessage);
  static Volume? _defaultInstance;

  /// The capacity of the volume in bytes. This field is OPTIONAL. If not
  /// set (value of 0), it indicates that the capacity of the volume is
  /// unknown (e.g., NFS share).
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $fixnum.Int64 get capacityBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set capacityBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCapacityBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapacityBytes() => $_clearField(1);

  /// The identifier for this volume, generated by the plugin.
  /// This field is REQUIRED.
  /// This field MUST contain enough information to uniquely identify
  /// this specific volume vs all other volumes supported by this plugin.
  /// This field SHALL be used by the CO in subsequent calls to refer to
  /// this volume.
  /// The SP is NOT responsible for global uniqueness of volume_id across
  /// multiple SPs.
  @$pb.TagNumber(2)
  $core.String get volumeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set volumeId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeId() => $_clearField(2);

  /// Opaque static properties of the volume. SP MAY use this field to
  /// ensure subsequent volume validation and publishing calls have
  /// contextual information.
  /// The contents of this field SHALL be opaque to a CO.
  /// The contents of this field SHALL NOT be mutable.
  /// The contents of this field SHALL be safe for the CO to cache.
  /// The contents of this field SHOULD NOT contain sensitive
  /// information.
  /// The contents of this field SHOULD NOT be used for uniquely
  /// identifying a volume. The `volume_id` alone SHOULD be sufficient to
  /// identify the volume.
  /// A volume uniquely identified by `volume_id` SHALL always report the
  /// same volume_context.
  /// This field is OPTIONAL and when present MUST be passed to volume
  /// validation and publishing calls.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(2);

  /// If specified, indicates that the volume is not empty and is
  /// pre-populated with data from the specified source.
  /// This field is OPTIONAL.
  @$pb.TagNumber(4)
  VolumeContentSource get contentSource => $_getN(3);
  @$pb.TagNumber(4)
  set contentSource(VolumeContentSource value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasContentSource() => $_has(3);
  @$pb.TagNumber(4)
  void clearContentSource() => $_clearField(4);
  @$pb.TagNumber(4)
  VolumeContentSource ensureContentSource() => $_ensure(3);

  /// Specifies where (regions, zones, racks, etc.) the provisioned
  /// volume is accessible from.
  /// A plugin that returns this field MUST also set the
  /// VOLUME_ACCESSIBILITY_CONSTRAINTS plugin capability.
  /// An SP MAY specify multiple topologies to indicate the volume is
  /// accessible from multiple locations.
  /// COs MAY use this information along with the topology information
  /// returned by NodeGetInfo to ensure that a given volume is accessible
  /// from a given node when scheduling workloads.
  /// This field is OPTIONAL. If it is not specified, the CO MAY assume
  /// the volume is equally accessible from all nodes in the cluster and
  /// MAY schedule workloads referencing the volume on any available
  /// node.
  ///
  /// Example 1:
  ///   accessible_topology = {"region": "R1", "zone": "Z2"}
  /// Indicates a volume accessible only from the "region" "R1" and the
  /// "zone" "Z2".
  ///
  /// Example 2:
  ///   accessible_topology =
  ///     {"region": "R1", "zone": "Z2"},
  ///     {"region": "R1", "zone": "Z3"}
  /// Indicates a volume accessible from both "zone" "Z2" and "zone" "Z3"
  /// in the "region" "R1".
  @$pb.TagNumber(5)
  $pb.PbList<Topology> get accessibleTopology => $_getList(4);
}

class TopologyRequirement extends $pb.GeneratedMessage {
  factory TopologyRequirement({
    $core.Iterable<Topology>? requisite,
    $core.Iterable<Topology>? preferred,
  }) {
    final result = TopologyRequirement._();
    if (requisite != null) result.requisite.addAll(requisite);
    if (preferred != null) result.preferred.addAll(preferred);
    return result;
  }

  TopologyRequirement._();

  factory TopologyRequirement.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      TopologyRequirement()..mergeFromBuffer(data, registry);
  factory TopologyRequirement.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      TopologyRequirement()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'TopologyRequirement',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: TopologyRequirement.$_createMessage)
    ..pPM<Topology>(1, _omitFieldNames ? '' : 'requisite',
        subBuilder: Topology.$_createMessage)
    ..pPM<Topology>(2, _omitFieldNames ? '' : 'preferred',
        subBuilder: Topology.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopologyRequirement clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  TopologyRequirement copyWith(void Function(TopologyRequirement) updates) =>
      super.copyWith((message) => updates(message as TopologyRequirement))
          as TopologyRequirement;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use TopologyRequirement() / TopologyRequirement.new instead')
  static TopologyRequirement create() => TopologyRequirement._();
  static $pb.GeneratedMessage $_createMessage() => TopologyRequirement._();
  @$core.override
  TopologyRequirement createEmptyInstance() => TopologyRequirement._();
  @$core.pragma('dart2js:noInline')
  static TopologyRequirement getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<TopologyRequirement>(
          TopologyRequirement.$_createMessage);
  static TopologyRequirement? _defaultInstance;

  /// Specifies the list of topologies the provisioned volume MUST be
  /// accessible from.
  /// This field is OPTIONAL. If TopologyRequirement is specified either
  /// requisite or preferred or both MUST be specified.
  ///
  /// If requisite is specified, the provisioned volume MUST be
  /// accessible from at least one of the requisite topologies.
  ///
  /// Given
  ///   x = number of topologies provisioned volume is accessible from
  ///   n = number of requisite topologies
  /// The CO MUST ensure n >= 1. The SP MUST ensure x >= 1
  /// If x==n, then the SP MUST make the provisioned volume available to
  /// all topologies from the list of requisite topologies. If it is
  /// unable to do so, the SP MUST fail the CreateVolume call.
  /// For example, if a volume should be accessible from a single zone,
  /// and requisite =
  ///   {"region": "R1", "zone": "Z2"}
  /// then the provisioned volume MUST be accessible from the "region"
  /// "R1" and the "zone" "Z2".
  /// Similarly, if a volume should be accessible from two zones, and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"}
  /// then the provisioned volume MUST be accessible from the "region"
  /// "R1" and both "zone" "Z2" and "zone" "Z3".
  ///
  /// If x<n, then the SP SHALL choose x unique topologies from the list
  /// of requisite topologies. If it is unable to do so, the SP MUST fail
  /// the CreateVolume call.
  /// For example, if a volume should be accessible from a single zone,
  /// and requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"}
  /// then the SP may choose to make the provisioned volume available in
  /// either the "zone" "Z2" or the "zone" "Z3" in the "region" "R1".
  /// Similarly, if a volume should be accessible from two zones, and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"},
  ///   {"region": "R1", "zone": "Z4"}
  /// then the provisioned volume MUST be accessible from any combination
  /// of two unique topologies: e.g. "R1/Z2" and "R1/Z3", or "R1/Z2" and
  ///  "R1/Z4", or "R1/Z3" and "R1/Z4".
  ///
  /// If x>n, then the SP MUST make the provisioned volume available from
  /// all topologies from the list of requisite topologies and MAY choose
  /// the remaining x-n unique topologies from the list of all possible
  /// topologies. If it is unable to do so, the SP MUST fail the
  /// CreateVolume call.
  /// For example, if a volume should be accessible from two zones, and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"}
  /// then the provisioned volume MUST be accessible from the "region"
  /// "R1" and the "zone" "Z2" and the SP may select the second zone
  /// independently, e.g. "R1/Z4".
  @$pb.TagNumber(1)
  $pb.PbList<Topology> get requisite => $_getList(0);

  /// Specifies the list of topologies the CO would prefer the volume to
  /// be provisioned in.
  ///
  /// This field is OPTIONAL. If TopologyRequirement is specified either
  /// requisite or preferred or both MUST be specified.
  ///
  /// An SP MUST attempt to make the provisioned volume available using
  /// the preferred topologies in order from first to last.
  ///
  /// If requisite is specified, all topologies in preferred list MUST
  /// also be present in the list of requisite topologies.
  ///
  /// If the SP is unable to to make the provisioned volume available
  /// from any of the preferred topologies, the SP MAY choose a topology
  /// from the list of requisite topologies.
  /// If the list of requisite topologies is not specified, then the SP
  /// MAY choose from the list of all possible topologies.
  /// If the list of requisite topologies is specified and the SP is
  /// unable to to make the provisioned volume available from any of the
  /// requisite topologies it MUST fail the CreateVolume call.
  ///
  /// Example 1:
  /// Given a volume should be accessible from a single zone, and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"}
  /// preferred =
  ///   {"region": "R1", "zone": "Z3"}
  /// then the SP SHOULD first attempt to make the provisioned volume
  /// available from "zone" "Z3" in the "region" "R1" and fall back to
  /// "zone" "Z2" in the "region" "R1" if that is not possible.
  ///
  /// Example 2:
  /// Given a volume should be accessible from a single zone, and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"},
  ///   {"region": "R1", "zone": "Z4"},
  ///   {"region": "R1", "zone": "Z5"}
  /// preferred =
  ///   {"region": "R1", "zone": "Z4"},
  ///   {"region": "R1", "zone": "Z2"}
  /// then the SP SHOULD first attempt to make the provisioned volume
  /// accessible from "zone" "Z4" in the "region" "R1" and fall back to
  /// "zone" "Z2" in the "region" "R1" if that is not possible. If that
  /// is not possible, the SP may choose between either the "zone"
  /// "Z3" or "Z5" in the "region" "R1".
  ///
  /// Example 3:
  /// Given a volume should be accessible from TWO zones (because an
  /// opaque parameter in CreateVolumeRequest, for example, specifies
  /// the volume is accessible from two zones, aka synchronously
  /// replicated), and
  /// requisite =
  ///   {"region": "R1", "zone": "Z2"},
  ///   {"region": "R1", "zone": "Z3"},
  ///   {"region": "R1", "zone": "Z4"},
  ///   {"region": "R1", "zone": "Z5"}
  /// preferred =
  ///   {"region": "R1", "zone": "Z5"},
  ///   {"region": "R1", "zone": "Z3"}
  /// then the SP SHOULD first attempt to make the provisioned volume
  /// accessible from the combination of the two "zones" "Z5" and "Z3" in
  /// the "region" "R1". If that's not possible, it should fall back to
  /// a combination of "Z5" and other possibilities from the list of
  /// requisite. If that's not possible, it should fall back  to a
  /// combination of "Z3" and other possibilities from the list of
  /// requisite. If that's not possible, it should fall back  to a
  /// combination of other possibilities from the list of requisite.
  @$pb.TagNumber(2)
  $pb.PbList<Topology> get preferred => $_getList(1);
}

/// Topology is a map of topological domains to topological segments.
/// A topological domain is a sub-division of a cluster, like "region",
/// "zone", "rack", etc.
/// A topological segment is a specific instance of a topological domain,
/// like "zone3", "rack3", etc.
/// For example {"com.company/zone": "Z1", "com.company/rack": "R3"}
/// Valid keys have two segments: an OPTIONAL prefix and name, separated
/// by a slash (/), for example: "com.company.example/zone".
/// The key name segment is REQUIRED. The prefix is OPTIONAL.
/// The key name MUST be 63 characters or less, begin and end with an
/// alphanumeric character ([a-z0-9A-Z]), and contain only dashes (-),
/// underscores (_), dots (.), or alphanumerics in between, for example
/// "zone".
/// The key prefix MUST be 63 characters or less, begin and end with a
/// lower-case alphanumeric character ([a-z0-9]), contain only
/// dashes (-), dots (.), or lower-case alphanumerics in between, and
/// follow domain name notation format
/// (https://tools.ietf.org/html/rfc1035#section-2.3.1).
/// The key prefix SHOULD include the plugin's host company name and/or
/// the plugin name, to minimize the possibility of collisions with keys
/// from other plugins.
/// If a key prefix is specified, it MUST be identical across all
/// topology keys returned by the SP (across all RPCs).
/// Keys MUST be case-insensitive. Meaning the keys "Zone" and "zone"
/// MUST not both exist.
/// Each value (topological segment) MUST contain 1 or more strings.
/// Each string MUST be 63 characters or less and begin and end with an
/// alphanumeric character with '-', '_', '.', or alphanumerics in
/// between.
class Topology extends $pb.GeneratedMessage {
  factory Topology({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? segments,
  }) {
    final result = Topology._();
    if (segments != null) result.segments.addEntries(segments);
    return result;
  }

  Topology._();

  factory Topology.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Topology()..mergeFromBuffer(data, registry);
  factory Topology.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Topology()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Topology',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: Topology.$_createMessage)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'segments',
        entryClassName: 'Topology.SegmentsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Topology clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Topology copyWith(void Function(Topology) updates) =>
      super.copyWith((message) => updates(message as Topology)) as Topology;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use Topology() / Topology.new instead')
  static Topology create() => Topology._();
  static $pb.GeneratedMessage $_createMessage() => Topology._();
  @$core.override
  Topology createEmptyInstance() => Topology._();
  @$core.pragma('dart2js:noInline')
  static Topology getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Topology>(Topology.$_createMessage);
  static Topology? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get segments => $_getMap(0);
}

class DeleteVolumeRequest extends $pb.GeneratedMessage {
  factory DeleteVolumeRequest({
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = DeleteVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  DeleteVolumeRequest._();

  factory DeleteVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeRequest()..mergeFromBuffer(data, registry);
  factory DeleteVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'DeleteVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeRequest copyWith(void Function(DeleteVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteVolumeRequest))
          as DeleteVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use DeleteVolumeRequest() / DeleteVolumeRequest.new instead')
  static DeleteVolumeRequest create() => DeleteVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => DeleteVolumeRequest._();
  @$core.override
  DeleteVolumeRequest createEmptyInstance() => DeleteVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static DeleteVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVolumeRequest>(
          DeleteVolumeRequest.$_createMessage);
  static DeleteVolumeRequest? _defaultInstance;

  /// The ID of the volume to be deprovisioned.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// Secrets required by plugin to complete volume deletion request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(1);
}

class DeleteVolumeResponse extends $pb.GeneratedMessage {
  factory DeleteVolumeResponse() => DeleteVolumeResponse._();

  DeleteVolumeResponse._();

  factory DeleteVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeResponse()..mergeFromBuffer(data, registry);
  factory DeleteVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeResponse copyWith(void Function(DeleteVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteVolumeResponse))
          as DeleteVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use DeleteVolumeResponse() / DeleteVolumeResponse.new instead')
  static DeleteVolumeResponse create() => DeleteVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() => DeleteVolumeResponse._();
  @$core.override
  DeleteVolumeResponse createEmptyInstance() => DeleteVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static DeleteVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVolumeResponse>(
          DeleteVolumeResponse.$_createMessage);
  static DeleteVolumeResponse? _defaultInstance;
}

class ControllerPublishVolumeRequest extends $pb.GeneratedMessage {
  factory ControllerPublishVolumeRequest({
    $core.String? volumeId,
    $core.String? nodeId,
    VolumeCapability? volumeCapability,
    $core.bool? readonly,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
  }) {
    final result = ControllerPublishVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (nodeId != null) result.nodeId = nodeId;
    if (volumeCapability != null) result.volumeCapability = volumeCapability;
    if (readonly != null) result.readonly = readonly;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    return result;
  }

  ControllerPublishVolumeRequest._();

  factory ControllerPublishVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerPublishVolumeRequest()..mergeFromBuffer(data, registry);
  factory ControllerPublishVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerPublishVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerPublishVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerPublishVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'nodeId')
    ..aOM<VolumeCapability>(3, _omitFieldNames ? '' : 'volumeCapability',
        subBuilder: VolumeCapability.$_createMessage)
    ..aOB(4, _omitFieldNames ? '' : 'readonly')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ControllerPublishVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'volumeContext',
        entryClassName: 'ControllerPublishVolumeRequest.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerPublishVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerPublishVolumeRequest copyWith(
          void Function(ControllerPublishVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerPublishVolumeRequest))
          as ControllerPublishVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerPublishVolumeRequest() / ControllerPublishVolumeRequest.new instead')
  static ControllerPublishVolumeRequest create() =>
      ControllerPublishVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerPublishVolumeRequest._();
  @$core.override
  ControllerPublishVolumeRequest createEmptyInstance() =>
      ControllerPublishVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerPublishVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerPublishVolumeRequest>(
          ControllerPublishVolumeRequest.$_createMessage);
  static ControllerPublishVolumeRequest? _defaultInstance;

  /// The ID of the volume to be used on a node.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The ID of the node. This field is REQUIRED. The CO SHALL set this
  /// field to match the node ID returned by `NodeGetInfo`.
  @$pb.TagNumber(2)
  $core.String get nodeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);

  /// Volume capability describing how the CO intends to use this volume.
  /// SP MUST ensure the CO can use the published volume as described.
  /// Otherwise SP MUST return the appropriate gRPC error code.
  /// This is a REQUIRED field.
  @$pb.TagNumber(3)
  VolumeCapability get volumeCapability => $_getN(2);
  @$pb.TagNumber(3)
  set volumeCapability(VolumeCapability value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasVolumeCapability() => $_has(2);
  @$pb.TagNumber(3)
  void clearVolumeCapability() => $_clearField(3);
  @$pb.TagNumber(3)
  VolumeCapability ensureVolumeCapability() => $_ensure(2);

  /// Indicates SP MUST publish the volume in readonly mode.
  /// CO MUST set this field to false if SP does not have the
  /// PUBLISH_READONLY controller capability.
  /// This is a REQUIRED field.
  @$pb.TagNumber(4)
  $core.bool get readonly => $_getBF(3);
  @$pb.TagNumber(4)
  set readonly($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReadonly() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadonly() => $_clearField(4);

  /// Secrets required by plugin to complete controller publish volume
  /// request. This field is OPTIONAL. Refer to the
  /// `Secrets Requirements` section on how to use this field.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(4);

  /// Volume context as returned by SP in
  /// CreateVolumeResponse.Volume.volume_context.
  /// This field is OPTIONAL and MUST match the volume_context of the
  /// volume identified by `volume_id`.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(5);
}

class ControllerPublishVolumeResponse extends $pb.GeneratedMessage {
  factory ControllerPublishVolumeResponse({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? publishContext,
  }) {
    final result = ControllerPublishVolumeResponse._();
    if (publishContext != null)
      result.publishContext.addEntries(publishContext);
    return result;
  }

  ControllerPublishVolumeResponse._();

  factory ControllerPublishVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerPublishVolumeResponse()..mergeFromBuffer(data, registry);
  factory ControllerPublishVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerPublishVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerPublishVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerPublishVolumeResponse.$_createMessage)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'publishContext',
        entryClassName: 'ControllerPublishVolumeResponse.PublishContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerPublishVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerPublishVolumeResponse copyWith(
          void Function(ControllerPublishVolumeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerPublishVolumeResponse))
          as ControllerPublishVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerPublishVolumeResponse() / ControllerPublishVolumeResponse.new instead')
  static ControllerPublishVolumeResponse create() =>
      ControllerPublishVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerPublishVolumeResponse._();
  @$core.override
  ControllerPublishVolumeResponse createEmptyInstance() =>
      ControllerPublishVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerPublishVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerPublishVolumeResponse>(
          ControllerPublishVolumeResponse.$_createMessage);
  static ControllerPublishVolumeResponse? _defaultInstance;

  /// Opaque static publish properties of the volume. SP MAY use this
  /// field to ensure subsequent `NodeStageVolume` or `NodePublishVolume`
  /// calls calls have contextual information.
  /// The contents of this field SHALL be opaque to a CO.
  /// The contents of this field SHALL NOT be mutable.
  /// The contents of this field SHALL be safe for the CO to cache.
  /// The contents of this field SHOULD NOT contain sensitive
  /// information.
  /// The contents of this field SHOULD NOT be used for uniquely
  /// identifying a volume. The `volume_id` alone SHOULD be sufficient to
  /// identify the volume.
  /// This field is OPTIONAL and when present MUST be passed to
  /// subsequent `NodeStageVolume` or `NodePublishVolume` calls
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get publishContext => $_getMap(0);
}

class ControllerUnpublishVolumeRequest extends $pb.GeneratedMessage {
  factory ControllerUnpublishVolumeRequest({
    $core.String? volumeId,
    $core.String? nodeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = ControllerUnpublishVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (nodeId != null) result.nodeId = nodeId;
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  ControllerUnpublishVolumeRequest._();

  factory ControllerUnpublishVolumeRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerUnpublishVolumeRequest()..mergeFromBuffer(data, registry);
  factory ControllerUnpublishVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerUnpublishVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerUnpublishVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerUnpublishVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'nodeId')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ControllerUnpublishVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerUnpublishVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerUnpublishVolumeRequest copyWith(
          void Function(ControllerUnpublishVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerUnpublishVolumeRequest))
          as ControllerUnpublishVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerUnpublishVolumeRequest() / ControllerUnpublishVolumeRequest.new instead')
  static ControllerUnpublishVolumeRequest create() =>
      ControllerUnpublishVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerUnpublishVolumeRequest._();
  @$core.override
  ControllerUnpublishVolumeRequest createEmptyInstance() =>
      ControllerUnpublishVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerUnpublishVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerUnpublishVolumeRequest>(
          ControllerUnpublishVolumeRequest.$_createMessage);
  static ControllerUnpublishVolumeRequest? _defaultInstance;

  /// The ID of the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The ID of the node. This field is OPTIONAL. The CO SHOULD set this
  /// field to match the node ID returned by `NodeGetInfo` or leave it
  /// unset. If the value is set, the SP MUST unpublish the volume from
  /// the specified node. If the value is unset, the SP MUST unpublish
  /// the volume from all nodes it is published to.
  @$pb.TagNumber(2)
  $core.String get nodeId => $_getSZ(1);
  @$pb.TagNumber(2)
  set nodeId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeId() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeId() => $_clearField(2);

  /// Secrets required by plugin to complete controller unpublish volume
  /// request. This SHOULD be the same secrets passed to the
  /// ControllerPublishVolume call for the specified volume.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);
}

class ControllerUnpublishVolumeResponse extends $pb.GeneratedMessage {
  factory ControllerUnpublishVolumeResponse() =>
      ControllerUnpublishVolumeResponse._();

  ControllerUnpublishVolumeResponse._();

  factory ControllerUnpublishVolumeResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerUnpublishVolumeResponse()..mergeFromBuffer(data, registry);
  factory ControllerUnpublishVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerUnpublishVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerUnpublishVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerUnpublishVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerUnpublishVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerUnpublishVolumeResponse copyWith(
          void Function(ControllerUnpublishVolumeResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ControllerUnpublishVolumeResponse))
          as ControllerUnpublishVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerUnpublishVolumeResponse() / ControllerUnpublishVolumeResponse.new instead')
  static ControllerUnpublishVolumeResponse create() =>
      ControllerUnpublishVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerUnpublishVolumeResponse._();
  @$core.override
  ControllerUnpublishVolumeResponse createEmptyInstance() =>
      ControllerUnpublishVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerUnpublishVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerUnpublishVolumeResponse>(
          ControllerUnpublishVolumeResponse.$_createMessage);
  static ControllerUnpublishVolumeResponse? _defaultInstance;
}

class ValidateVolumeCapabilitiesRequest extends $pb.GeneratedMessage {
  factory ValidateVolumeCapabilitiesRequest({
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
    $core.Iterable<VolumeCapability>? volumeCapabilities,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        mutableParameters,
  }) {
    final result = ValidateVolumeCapabilitiesRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    if (volumeCapabilities != null)
      result.volumeCapabilities.addAll(volumeCapabilities);
    if (parameters != null) result.parameters.addEntries(parameters);
    if (secrets != null) result.secrets.addEntries(secrets);
    if (mutableParameters != null)
      result.mutableParameters.addEntries(mutableParameters);
    return result;
  }

  ValidateVolumeCapabilitiesRequest._();

  factory ValidateVolumeCapabilitiesRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesRequest()..mergeFromBuffer(data, registry);
  factory ValidateVolumeCapabilitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValidateVolumeCapabilitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ValidateVolumeCapabilitiesRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'volumeContext',
        entryClassName: 'ValidateVolumeCapabilitiesRequest.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..pPM<VolumeCapability>(3, _omitFieldNames ? '' : 'volumeCapabilities',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'ValidateVolumeCapabilitiesRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ValidateVolumeCapabilitiesRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(
        6, _omitFieldNames ? '' : 'mutableParameters',
        entryClassName:
            'ValidateVolumeCapabilitiesRequest.MutableParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesRequest copyWith(
          void Function(ValidateVolumeCapabilitiesRequest) updates) =>
      super.copyWith((message) =>
              updates(message as ValidateVolumeCapabilitiesRequest))
          as ValidateVolumeCapabilitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ValidateVolumeCapabilitiesRequest() / ValidateVolumeCapabilitiesRequest.new instead')
  static ValidateVolumeCapabilitiesRequest create() =>
      ValidateVolumeCapabilitiesRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ValidateVolumeCapabilitiesRequest._();
  @$core.override
  ValidateVolumeCapabilitiesRequest createEmptyInstance() =>
      ValidateVolumeCapabilitiesRequest._();
  @$core.pragma('dart2js:noInline')
  static ValidateVolumeCapabilitiesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ValidateVolumeCapabilitiesRequest>(
          ValidateVolumeCapabilitiesRequest.$_createMessage);
  static ValidateVolumeCapabilitiesRequest? _defaultInstance;

  /// The ID of the volume to check. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// Volume context as returned by SP in
  /// CreateVolumeResponse.Volume.volume_context.
  /// This field is OPTIONAL and MUST match the volume_context of the
  /// volume identified by `volume_id`.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(1);

  /// The capabilities that the CO wants to check for the volume. This
  /// call SHALL return "confirmed" only if all the volume capabilities
  /// specified below are supported. This field is REQUIRED.
  @$pb.TagNumber(3)
  $pb.PbList<VolumeCapability> get volumeCapabilities => $_getList(2);

  /// See CreateVolumeRequest.parameters.
  /// This field is OPTIONAL.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(3);

  /// Secrets required by plugin to complete volume validation request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(4);

  /// See CreateVolumeRequest.mutable_parameters.
  /// This field is OPTIONAL.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get mutableParameters => $_getMap(5);
}

class ValidateVolumeCapabilitiesResponse_Confirmed
    extends $pb.GeneratedMessage {
  factory ValidateVolumeCapabilitiesResponse_Confirmed({
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
    $core.Iterable<VolumeCapability>? volumeCapabilities,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        mutableParameters,
  }) {
    final result = ValidateVolumeCapabilitiesResponse_Confirmed._();
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    if (volumeCapabilities != null)
      result.volumeCapabilities.addAll(volumeCapabilities);
    if (parameters != null) result.parameters.addEntries(parameters);
    if (mutableParameters != null)
      result.mutableParameters.addEntries(mutableParameters);
    return result;
  }

  ValidateVolumeCapabilitiesResponse_Confirmed._();

  factory ValidateVolumeCapabilitiesResponse_Confirmed.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesResponse_Confirmed()
        ..mergeFromBuffer(data, registry);
  factory ValidateVolumeCapabilitiesResponse_Confirmed.fromJson(
          $core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesResponse_Confirmed()
        ..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValidateVolumeCapabilitiesResponse.Confirmed',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance:
          ValidateVolumeCapabilitiesResponse_Confirmed.$_createMessage)
    ..m<$core.String, $core.String>(1, _omitFieldNames ? '' : 'volumeContext',
        entryClassName:
            'ValidateVolumeCapabilitiesResponse.Confirmed.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..pPM<VolumeCapability>(2, _omitFieldNames ? '' : 'volumeCapabilities',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'parameters',
        entryClassName:
            'ValidateVolumeCapabilitiesResponse.Confirmed.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(
        4, _omitFieldNames ? '' : 'mutableParameters',
        entryClassName:
            'ValidateVolumeCapabilitiesResponse.Confirmed.MutableParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesResponse_Confirmed clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesResponse_Confirmed copyWith(
          void Function(ValidateVolumeCapabilitiesResponse_Confirmed)
              updates) =>
      super.copyWith((message) =>
              updates(message as ValidateVolumeCapabilitiesResponse_Confirmed))
          as ValidateVolumeCapabilitiesResponse_Confirmed;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ValidateVolumeCapabilitiesResponse_Confirmed() / ValidateVolumeCapabilitiesResponse_Confirmed.new instead')
  static ValidateVolumeCapabilitiesResponse_Confirmed create() =>
      ValidateVolumeCapabilitiesResponse_Confirmed._();
  static $pb.GeneratedMessage $_createMessage() =>
      ValidateVolumeCapabilitiesResponse_Confirmed._();
  @$core.override
  ValidateVolumeCapabilitiesResponse_Confirmed createEmptyInstance() =>
      ValidateVolumeCapabilitiesResponse_Confirmed._();
  @$core.pragma('dart2js:noInline')
  static ValidateVolumeCapabilitiesResponse_Confirmed getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              ValidateVolumeCapabilitiesResponse_Confirmed>(
          ValidateVolumeCapabilitiesResponse_Confirmed.$_createMessage);
  static ValidateVolumeCapabilitiesResponse_Confirmed? _defaultInstance;

  /// Volume context validated by the plugin.
  /// This field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(0);

  /// Volume capabilities supported by the plugin.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $pb.PbList<VolumeCapability> get volumeCapabilities => $_getList(1);

  /// The volume creation parameters validated by the plugin.
  /// This field is OPTIONAL.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(2);

  /// The volume creation mutable_parameters validated by the plugin.
  /// This field is OPTIONAL.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get mutableParameters => $_getMap(3);
}

class ValidateVolumeCapabilitiesResponse extends $pb.GeneratedMessage {
  factory ValidateVolumeCapabilitiesResponse({
    ValidateVolumeCapabilitiesResponse_Confirmed? confirmed,
    $core.String? message,
  }) {
    final result = ValidateVolumeCapabilitiesResponse._();
    if (confirmed != null) result.confirmed = confirmed;
    if (message != null) result.message = message;
    return result;
  }

  ValidateVolumeCapabilitiesResponse._();

  factory ValidateVolumeCapabilitiesResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesResponse()..mergeFromBuffer(data, registry);
  factory ValidateVolumeCapabilitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ValidateVolumeCapabilitiesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ValidateVolumeCapabilitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ValidateVolumeCapabilitiesResponse.$_createMessage)
    ..aOM<ValidateVolumeCapabilitiesResponse_Confirmed>(
        1, _omitFieldNames ? '' : 'confirmed',
        subBuilder:
            ValidateVolumeCapabilitiesResponse_Confirmed.$_createMessage)
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ValidateVolumeCapabilitiesResponse copyWith(
          void Function(ValidateVolumeCapabilitiesResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ValidateVolumeCapabilitiesResponse))
          as ValidateVolumeCapabilitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ValidateVolumeCapabilitiesResponse() / ValidateVolumeCapabilitiesResponse.new instead')
  static ValidateVolumeCapabilitiesResponse create() =>
      ValidateVolumeCapabilitiesResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ValidateVolumeCapabilitiesResponse._();
  @$core.override
  ValidateVolumeCapabilitiesResponse createEmptyInstance() =>
      ValidateVolumeCapabilitiesResponse._();
  @$core.pragma('dart2js:noInline')
  static ValidateVolumeCapabilitiesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ValidateVolumeCapabilitiesResponse>(
          ValidateVolumeCapabilitiesResponse.$_createMessage);
  static ValidateVolumeCapabilitiesResponse? _defaultInstance;

  /// Confirmed indicates to the CO the set of capabilities that the
  /// plugin has validated. This field SHALL only be set to a non-empty
  /// value for successful validation responses.
  /// For successful validation responses, the CO SHALL compare the
  /// fields of this message to the originally requested capabilities in
  /// order to guard against an older plugin reporting "valid" for newer
  /// capability fields that it does not yet understand.
  /// This field is OPTIONAL.
  @$pb.TagNumber(1)
  ValidateVolumeCapabilitiesResponse_Confirmed get confirmed => $_getN(0);
  @$pb.TagNumber(1)
  set confirmed(ValidateVolumeCapabilitiesResponse_Confirmed value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasConfirmed() => $_has(0);
  @$pb.TagNumber(1)
  void clearConfirmed() => $_clearField(1);
  @$pb.TagNumber(1)
  ValidateVolumeCapabilitiesResponse_Confirmed ensureConfirmed() => $_ensure(0);

  /// Message to the CO if `confirmed` above is empty. This field is
  /// OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class ListVolumesRequest extends $pb.GeneratedMessage {
  factory ListVolumesRequest({
    $core.int? maxEntries,
    $core.String? startingToken,
  }) {
    final result = ListVolumesRequest._();
    if (maxEntries != null) result.maxEntries = maxEntries;
    if (startingToken != null) result.startingToken = startingToken;
    return result;
  }

  ListVolumesRequest._();

  factory ListVolumesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesRequest()..mergeFromBuffer(data, registry);
  factory ListVolumesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVolumesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListVolumesRequest.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'maxEntries')
    ..aOS(2, _omitFieldNames ? '' : 'startingToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesRequest copyWith(void Function(ListVolumesRequest) updates) =>
      super.copyWith((message) => updates(message as ListVolumesRequest))
          as ListVolumesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use ListVolumesRequest() / ListVolumesRequest.new instead')
  static ListVolumesRequest create() => ListVolumesRequest._();
  static $pb.GeneratedMessage $_createMessage() => ListVolumesRequest._();
  @$core.override
  ListVolumesRequest createEmptyInstance() => ListVolumesRequest._();
  @$core.pragma('dart2js:noInline')
  static ListVolumesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVolumesRequest>(
          ListVolumesRequest.$_createMessage);
  static ListVolumesRequest? _defaultInstance;

  /// If specified (non-zero value), the Plugin MUST NOT return more
  /// entries than this number in the response. If the actual number of
  /// entries is more than this number, the Plugin MUST set `next_token`
  /// in the response which can be used to get the next page of entries
  /// in the subsequent `ListVolumes` call. This field is OPTIONAL. If
  /// not specified (zero value), it means there is no restriction on the
  /// number of entries that can be returned.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $core.int get maxEntries => $_getIZ(0);
  @$pb.TagNumber(1)
  set maxEntries($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMaxEntries() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxEntries() => $_clearField(1);

  /// A token to specify where to start paginating. Set this field to
  /// `next_token` returned by a previous `ListVolumes` call to get the
  /// next page of entries. This field is OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(2)
  $core.String get startingToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set startingToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartingToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartingToken() => $_clearField(2);
}

class ListVolumesResponse_VolumeStatus extends $pb.GeneratedMessage {
  factory ListVolumesResponse_VolumeStatus({
    $core.Iterable<$core.String>? publishedNodeIds,
    VolumeCondition? volumeCondition,
  }) {
    final result = ListVolumesResponse_VolumeStatus._();
    if (publishedNodeIds != null)
      result.publishedNodeIds.addAll(publishedNodeIds);
    if (volumeCondition != null) result.volumeCondition = volumeCondition;
    return result;
  }

  ListVolumesResponse_VolumeStatus._();

  factory ListVolumesResponse_VolumeStatus.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse_VolumeStatus()..mergeFromBuffer(data, registry);
  factory ListVolumesResponse_VolumeStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse_VolumeStatus()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVolumesResponse.VolumeStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListVolumesResponse_VolumeStatus.$_createMessage)
    ..pPS(1, _omitFieldNames ? '' : 'publishedNodeIds')
    ..aOM<VolumeCondition>(2, _omitFieldNames ? '' : 'volumeCondition',
        subBuilder: VolumeCondition.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse_VolumeStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse_VolumeStatus copyWith(
          void Function(ListVolumesResponse_VolumeStatus) updates) =>
      super.copyWith(
              (message) => updates(message as ListVolumesResponse_VolumeStatus))
          as ListVolumesResponse_VolumeStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ListVolumesResponse_VolumeStatus() / ListVolumesResponse_VolumeStatus.new instead')
  static ListVolumesResponse_VolumeStatus create() =>
      ListVolumesResponse_VolumeStatus._();
  static $pb.GeneratedMessage $_createMessage() =>
      ListVolumesResponse_VolumeStatus._();
  @$core.override
  ListVolumesResponse_VolumeStatus createEmptyInstance() =>
      ListVolumesResponse_VolumeStatus._();
  @$core.pragma('dart2js:noInline')
  static ListVolumesResponse_VolumeStatus getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVolumesResponse_VolumeStatus>(
          ListVolumesResponse_VolumeStatus.$_createMessage);
  static ListVolumesResponse_VolumeStatus? _defaultInstance;

  /// A list of all `node_id` of nodes that the volume in this entry
  /// is controller published on.
  /// This field is OPTIONAL. If it is not specified and the SP has
  /// the LIST_VOLUMES_PUBLISHED_NODES controller capability, the CO
  /// MAY assume the volume is not controller published to any nodes.
  /// If the field is not specified and the SP does not have the
  /// LIST_VOLUMES_PUBLISHED_NODES controller capability, the CO MUST
  /// not interpret this field.
  /// published_node_ids MAY include nodes not published to or
  /// reported by the SP. The CO MUST be resilient to that.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get publishedNodeIds => $_getList(0);

  /// Information about the current condition of the volume.
  /// This field is OPTIONAL.
  /// This field MUST be specified if the
  /// VOLUME_CONDITION controller capability is supported.
  @$pb.TagNumber(2)
  VolumeCondition get volumeCondition => $_getN(1);
  @$pb.TagNumber(2)
  set volumeCondition(VolumeCondition value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeCondition() => $_clearField(2);
  @$pb.TagNumber(2)
  VolumeCondition ensureVolumeCondition() => $_ensure(1);
}

class ListVolumesResponse_Entry extends $pb.GeneratedMessage {
  factory ListVolumesResponse_Entry({
    Volume? volume,
    ListVolumesResponse_VolumeStatus? status,
  }) {
    final result = ListVolumesResponse_Entry._();
    if (volume != null) result.volume = volume;
    if (status != null) result.status = status;
    return result;
  }

  ListVolumesResponse_Entry._();

  factory ListVolumesResponse_Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse_Entry()..mergeFromBuffer(data, registry);
  factory ListVolumesResponse_Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse_Entry()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVolumesResponse.Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListVolumesResponse_Entry.$_createMessage)
    ..aOM<Volume>(1, _omitFieldNames ? '' : 'volume',
        subBuilder: Volume.$_createMessage)
    ..aOM<ListVolumesResponse_VolumeStatus>(2, _omitFieldNames ? '' : 'status',
        subBuilder: ListVolumesResponse_VolumeStatus.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse_Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse_Entry copyWith(
          void Function(ListVolumesResponse_Entry) updates) =>
      super.copyWith((message) => updates(message as ListVolumesResponse_Entry))
          as ListVolumesResponse_Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ListVolumesResponse_Entry() / ListVolumesResponse_Entry.new instead')
  static ListVolumesResponse_Entry create() => ListVolumesResponse_Entry._();
  static $pb.GeneratedMessage $_createMessage() =>
      ListVolumesResponse_Entry._();
  @$core.override
  ListVolumesResponse_Entry createEmptyInstance() =>
      ListVolumesResponse_Entry._();
  @$core.pragma('dart2js:noInline')
  static ListVolumesResponse_Entry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVolumesResponse_Entry>(
          ListVolumesResponse_Entry.$_createMessage);
  static ListVolumesResponse_Entry? _defaultInstance;

  /// This field is REQUIRED
  @$pb.TagNumber(1)
  Volume get volume => $_getN(0);
  @$pb.TagNumber(1)
  set volume(Volume value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVolume() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolume() => $_clearField(1);
  @$pb.TagNumber(1)
  Volume ensureVolume() => $_ensure(0);

  /// This field is OPTIONAL. This field MUST be specified if the
  /// LIST_VOLUMES_PUBLISHED_NODES controller capability is
  /// supported.
  @$pb.TagNumber(2)
  ListVolumesResponse_VolumeStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(ListVolumesResponse_VolumeStatus value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  ListVolumesResponse_VolumeStatus ensureStatus() => $_ensure(1);
}

class ListVolumesResponse extends $pb.GeneratedMessage {
  factory ListVolumesResponse({
    $core.Iterable<ListVolumesResponse_Entry>? entries,
    $core.String? nextToken,
  }) {
    final result = ListVolumesResponse._();
    if (entries != null) result.entries.addAll(entries);
    if (nextToken != null) result.nextToken = nextToken;
    return result;
  }

  ListVolumesResponse._();

  factory ListVolumesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse()..mergeFromBuffer(data, registry);
  factory ListVolumesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListVolumesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListVolumesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListVolumesResponse.$_createMessage)
    ..pPM<ListVolumesResponse_Entry>(1, _omitFieldNames ? '' : 'entries',
        subBuilder: ListVolumesResponse_Entry.$_createMessage)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListVolumesResponse copyWith(void Function(ListVolumesResponse) updates) =>
      super.copyWith((message) => updates(message as ListVolumesResponse))
          as ListVolumesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use ListVolumesResponse() / ListVolumesResponse.new instead')
  static ListVolumesResponse create() => ListVolumesResponse._();
  static $pb.GeneratedMessage $_createMessage() => ListVolumesResponse._();
  @$core.override
  ListVolumesResponse createEmptyInstance() => ListVolumesResponse._();
  @$core.pragma('dart2js:noInline')
  static ListVolumesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListVolumesResponse>(
          ListVolumesResponse.$_createMessage);
  static ListVolumesResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ListVolumesResponse_Entry> get entries => $_getList(0);

  /// This token allows you to get the next page of entries for
  /// `ListVolumes` request. If the number of entries is larger than
  /// `max_entries`, use the `next_token` as a value for the
  /// `starting_token` field in the next `ListVolumes` request. This
  /// field is OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => $_clearField(2);
}

class ControllerGetVolumeRequest extends $pb.GeneratedMessage {
  factory ControllerGetVolumeRequest({
    $core.String? volumeId,
  }) {
    final result = ControllerGetVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    return result;
  }

  ControllerGetVolumeRequest._();

  factory ControllerGetVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeRequest()..mergeFromBuffer(data, registry);
  factory ControllerGetVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerGetVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerGetVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeRequest copyWith(
          void Function(ControllerGetVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerGetVolumeRequest))
          as ControllerGetVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerGetVolumeRequest() / ControllerGetVolumeRequest.new instead')
  static ControllerGetVolumeRequest create() => ControllerGetVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerGetVolumeRequest._();
  @$core.override
  ControllerGetVolumeRequest createEmptyInstance() =>
      ControllerGetVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerGetVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerGetVolumeRequest>(
          ControllerGetVolumeRequest.$_createMessage);
  static ControllerGetVolumeRequest? _defaultInstance;

  /// The ID of the volume to fetch current volume information for.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);
}

class ControllerGetVolumeResponse_VolumeStatus extends $pb.GeneratedMessage {
  factory ControllerGetVolumeResponse_VolumeStatus({
    $core.Iterable<$core.String>? publishedNodeIds,
    VolumeCondition? volumeCondition,
  }) {
    final result = ControllerGetVolumeResponse_VolumeStatus._();
    if (publishedNodeIds != null)
      result.publishedNodeIds.addAll(publishedNodeIds);
    if (volumeCondition != null) result.volumeCondition = volumeCondition;
    return result;
  }

  ControllerGetVolumeResponse_VolumeStatus._();

  factory ControllerGetVolumeResponse_VolumeStatus.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeResponse_VolumeStatus()
        ..mergeFromBuffer(data, registry);
  factory ControllerGetVolumeResponse_VolumeStatus.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeResponse_VolumeStatus()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerGetVolumeResponse.VolumeStatus',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance:
          ControllerGetVolumeResponse_VolumeStatus.$_createMessage)
    ..pPS(1, _omitFieldNames ? '' : 'publishedNodeIds')
    ..aOM<VolumeCondition>(2, _omitFieldNames ? '' : 'volumeCondition',
        subBuilder: VolumeCondition.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeResponse_VolumeStatus clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeResponse_VolumeStatus copyWith(
          void Function(ControllerGetVolumeResponse_VolumeStatus) updates) =>
      super.copyWith((message) =>
              updates(message as ControllerGetVolumeResponse_VolumeStatus))
          as ControllerGetVolumeResponse_VolumeStatus;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerGetVolumeResponse_VolumeStatus() / ControllerGetVolumeResponse_VolumeStatus.new instead')
  static ControllerGetVolumeResponse_VolumeStatus create() =>
      ControllerGetVolumeResponse_VolumeStatus._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerGetVolumeResponse_VolumeStatus._();
  @$core.override
  ControllerGetVolumeResponse_VolumeStatus createEmptyInstance() =>
      ControllerGetVolumeResponse_VolumeStatus._();
  @$core.pragma('dart2js:noInline')
  static ControllerGetVolumeResponse_VolumeStatus getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              ControllerGetVolumeResponse_VolumeStatus>(
          ControllerGetVolumeResponse_VolumeStatus.$_createMessage);
  static ControllerGetVolumeResponse_VolumeStatus? _defaultInstance;

  /// A list of all the `node_id` of nodes that this volume is
  /// controller published on.
  /// This field is OPTIONAL.
  /// This field MUST be specified if the LIST_VOLUMES_PUBLISHED_NODES
  /// controller capability is supported.
  /// published_node_ids MAY include nodes not published to or
  /// reported by the SP. The CO MUST be resilient to that.
  @$pb.TagNumber(1)
  $pb.PbList<$core.String> get publishedNodeIds => $_getList(0);

  /// Information about the current condition of the volume.
  /// This field is OPTIONAL.
  /// This field MUST be specified if the
  /// VOLUME_CONDITION controller capability is supported.
  @$pb.TagNumber(2)
  VolumeCondition get volumeCondition => $_getN(1);
  @$pb.TagNumber(2)
  set volumeCondition(VolumeCondition value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeCondition() => $_clearField(2);
  @$pb.TagNumber(2)
  VolumeCondition ensureVolumeCondition() => $_ensure(1);
}

class ControllerGetVolumeResponse extends $pb.GeneratedMessage {
  factory ControllerGetVolumeResponse({
    Volume? volume,
    ControllerGetVolumeResponse_VolumeStatus? status,
  }) {
    final result = ControllerGetVolumeResponse._();
    if (volume != null) result.volume = volume;
    if (status != null) result.status = status;
    return result;
  }

  ControllerGetVolumeResponse._();

  factory ControllerGetVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeResponse()..mergeFromBuffer(data, registry);
  factory ControllerGetVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerGetVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerGetVolumeResponse.$_createMessage)
    ..aOM<Volume>(1, _omitFieldNames ? '' : 'volume',
        subBuilder: Volume.$_createMessage)
    ..aOM<ControllerGetVolumeResponse_VolumeStatus>(
        2, _omitFieldNames ? '' : 'status',
        subBuilder: ControllerGetVolumeResponse_VolumeStatus.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetVolumeResponse copyWith(
          void Function(ControllerGetVolumeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerGetVolumeResponse))
          as ControllerGetVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerGetVolumeResponse() / ControllerGetVolumeResponse.new instead')
  static ControllerGetVolumeResponse create() =>
      ControllerGetVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerGetVolumeResponse._();
  @$core.override
  ControllerGetVolumeResponse createEmptyInstance() =>
      ControllerGetVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerGetVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerGetVolumeResponse>(
          ControllerGetVolumeResponse.$_createMessage);
  static ControllerGetVolumeResponse? _defaultInstance;

  /// This field is REQUIRED
  @$pb.TagNumber(1)
  Volume get volume => $_getN(0);
  @$pb.TagNumber(1)
  set volume(Volume value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasVolume() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolume() => $_clearField(1);
  @$pb.TagNumber(1)
  Volume ensureVolume() => $_ensure(0);

  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  ControllerGetVolumeResponse_VolumeStatus get status => $_getN(1);
  @$pb.TagNumber(2)
  set status(ControllerGetVolumeResponse_VolumeStatus value) =>
      $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasStatus() => $_has(1);
  @$pb.TagNumber(2)
  void clearStatus() => $_clearField(2);
  @$pb.TagNumber(2)
  ControllerGetVolumeResponse_VolumeStatus ensureStatus() => $_ensure(1);
}

class ControllerModifyVolumeRequest extends $pb.GeneratedMessage {
  factory ControllerModifyVolumeRequest({
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>?
        mutableParameters,
  }) {
    final result = ControllerModifyVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (mutableParameters != null)
      result.mutableParameters.addEntries(mutableParameters);
    return result;
  }

  ControllerModifyVolumeRequest._();

  factory ControllerModifyVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerModifyVolumeRequest()..mergeFromBuffer(data, registry);
  factory ControllerModifyVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerModifyVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerModifyVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerModifyVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ControllerModifyVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(
        3, _omitFieldNames ? '' : 'mutableParameters',
        entryClassName: 'ControllerModifyVolumeRequest.MutableParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerModifyVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerModifyVolumeRequest copyWith(
          void Function(ControllerModifyVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerModifyVolumeRequest))
          as ControllerModifyVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerModifyVolumeRequest() / ControllerModifyVolumeRequest.new instead')
  static ControllerModifyVolumeRequest create() =>
      ControllerModifyVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerModifyVolumeRequest._();
  @$core.override
  ControllerModifyVolumeRequest createEmptyInstance() =>
      ControllerModifyVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerModifyVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerModifyVolumeRequest>(
          ControllerModifyVolumeRequest.$_createMessage);
  static ControllerModifyVolumeRequest? _defaultInstance;

  /// Contains identity information for the existing volume.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// Secrets required by plugin to complete modify volume request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(1);

  /// Plugin specific volume attributes to mutate, passed in as
  /// opaque key-value pairs.
  /// This field is REQUIRED. The Plugin is responsible for
  /// parsing and validating these parameters. COs will treat these
  /// as opaque. The CO SHOULD specify the intended values of all mutable
  /// parameters it intends to modify. SPs MUST NOT modify volumes based
  /// on the absence of keys, only keys that are specified should result
  /// in modifications to the volume.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get mutableParameters => $_getMap(2);
}

class ControllerModifyVolumeResponse extends $pb.GeneratedMessage {
  factory ControllerModifyVolumeResponse() =>
      ControllerModifyVolumeResponse._();

  ControllerModifyVolumeResponse._();

  factory ControllerModifyVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerModifyVolumeResponse()..mergeFromBuffer(data, registry);
  factory ControllerModifyVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerModifyVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerModifyVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerModifyVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerModifyVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerModifyVolumeResponse copyWith(
          void Function(ControllerModifyVolumeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerModifyVolumeResponse))
          as ControllerModifyVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerModifyVolumeResponse() / ControllerModifyVolumeResponse.new instead')
  static ControllerModifyVolumeResponse create() =>
      ControllerModifyVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerModifyVolumeResponse._();
  @$core.override
  ControllerModifyVolumeResponse createEmptyInstance() =>
      ControllerModifyVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerModifyVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerModifyVolumeResponse>(
          ControllerModifyVolumeResponse.$_createMessage);
  static ControllerModifyVolumeResponse? _defaultInstance;
}

class GetCapacityRequest extends $pb.GeneratedMessage {
  factory GetCapacityRequest({
    $core.Iterable<VolumeCapability>? volumeCapabilities,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
    Topology? accessibleTopology,
  }) {
    final result = GetCapacityRequest._();
    if (volumeCapabilities != null)
      result.volumeCapabilities.addAll(volumeCapabilities);
    if (parameters != null) result.parameters.addEntries(parameters);
    if (accessibleTopology != null)
      result.accessibleTopology = accessibleTopology;
    return result;
  }

  GetCapacityRequest._();

  factory GetCapacityRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetCapacityRequest()..mergeFromBuffer(data, registry);
  factory GetCapacityRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetCapacityRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCapacityRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetCapacityRequest.$_createMessage)
    ..pPM<VolumeCapability>(1, _omitFieldNames ? '' : 'volumeCapabilities',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'GetCapacityRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOM<Topology>(3, _omitFieldNames ? '' : 'accessibleTopology',
        subBuilder: Topology.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCapacityRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCapacityRequest copyWith(void Function(GetCapacityRequest) updates) =>
      super.copyWith((message) => updates(message as GetCapacityRequest))
          as GetCapacityRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use GetCapacityRequest() / GetCapacityRequest.new instead')
  static GetCapacityRequest create() => GetCapacityRequest._();
  static $pb.GeneratedMessage $_createMessage() => GetCapacityRequest._();
  @$core.override
  GetCapacityRequest createEmptyInstance() => GetCapacityRequest._();
  @$core.pragma('dart2js:noInline')
  static GetCapacityRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCapacityRequest>(
          GetCapacityRequest.$_createMessage);
  static GetCapacityRequest? _defaultInstance;

  /// If specified, the Plugin SHALL report the capacity of the storage
  /// that can be used to provision volumes that satisfy ALL of the
  /// specified `volume_capabilities`. These are the same
  /// `volume_capabilities` the CO will use in `CreateVolumeRequest`.
  /// This field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<VolumeCapability> get volumeCapabilities => $_getList(0);

  /// If specified, the Plugin SHALL report the capacity of the storage
  /// that can be used to provision volumes with the given Plugin
  /// specific `parameters`. These are the same `parameters` the CO will
  /// use in `CreateVolumeRequest`. This field is OPTIONAL.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(1);

  /// If specified, the Plugin SHALL report the capacity of the storage
  /// that can be used to provision volumes that in the specified
  /// `accessible_topology`. This is the same as the
  /// `accessible_topology` the CO returns in a `CreateVolumeResponse`.
  /// This field is OPTIONAL. This field SHALL NOT be set unless the
  /// plugin advertises the VOLUME_ACCESSIBILITY_CONSTRAINTS capability.
  @$pb.TagNumber(3)
  Topology get accessibleTopology => $_getN(2);
  @$pb.TagNumber(3)
  set accessibleTopology(Topology value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAccessibleTopology() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessibleTopology() => $_clearField(3);
  @$pb.TagNumber(3)
  Topology ensureAccessibleTopology() => $_ensure(2);
}

class GetCapacityResponse extends $pb.GeneratedMessage {
  factory GetCapacityResponse({
    $fixnum.Int64? availableCapacity,
    $1.Int64Value? maximumVolumeSize,
    $1.Int64Value? minimumVolumeSize,
  }) {
    final result = GetCapacityResponse._();
    if (availableCapacity != null) result.availableCapacity = availableCapacity;
    if (maximumVolumeSize != null) result.maximumVolumeSize = maximumVolumeSize;
    if (minimumVolumeSize != null) result.minimumVolumeSize = minimumVolumeSize;
    return result;
  }

  GetCapacityResponse._();

  factory GetCapacityResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetCapacityResponse()..mergeFromBuffer(data, registry);
  factory GetCapacityResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetCapacityResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetCapacityResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetCapacityResponse.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'availableCapacity')
    ..aOM<$1.Int64Value>(2, _omitFieldNames ? '' : 'maximumVolumeSize',
        subBuilder: $1.Int64Value.$_createMessage)
    ..aOM<$1.Int64Value>(3, _omitFieldNames ? '' : 'minimumVolumeSize',
        subBuilder: $1.Int64Value.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCapacityResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetCapacityResponse copyWith(void Function(GetCapacityResponse) updates) =>
      super.copyWith((message) => updates(message as GetCapacityResponse))
          as GetCapacityResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use GetCapacityResponse() / GetCapacityResponse.new instead')
  static GetCapacityResponse create() => GetCapacityResponse._();
  static $pb.GeneratedMessage $_createMessage() => GetCapacityResponse._();
  @$core.override
  GetCapacityResponse createEmptyInstance() => GetCapacityResponse._();
  @$core.pragma('dart2js:noInline')
  static GetCapacityResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetCapacityResponse>(
          GetCapacityResponse.$_createMessage);
  static GetCapacityResponse? _defaultInstance;

  /// The available capacity, in bytes, of the storage that can be used
  /// to provision volumes. If `volume_capabilities` or `parameters` is
  /// specified in the request, the Plugin SHALL take those into
  /// consideration when calculating the available capacity of the
  /// storage. This field is REQUIRED.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $fixnum.Int64 get availableCapacity => $_getI64(0);
  @$pb.TagNumber(1)
  set availableCapacity($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAvailableCapacity() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvailableCapacity() => $_clearField(1);

  /// The largest size that may be used in a
  /// CreateVolumeRequest.capacity_range.required_bytes field
  /// to create a volume with the same parameters as those in
  /// GetCapacityRequest.
  ///
  /// If `volume_capabilities` or `parameters` is
  /// specified in the request, the Plugin SHALL take those into
  /// consideration when calculating the minimum volume size of the
  /// storage.
  ///
  /// This field is OPTIONAL. MUST NOT be negative.
  /// The Plugin SHOULD provide a value for this field if it has
  /// a maximum size for individual volumes and leave it unset
  /// otherwise. COs MAY use it to make decision about
  /// where to create volumes.
  @$pb.TagNumber(2)
  $1.Int64Value get maximumVolumeSize => $_getN(1);
  @$pb.TagNumber(2)
  set maximumVolumeSize($1.Int64Value value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasMaximumVolumeSize() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaximumVolumeSize() => $_clearField(2);
  @$pb.TagNumber(2)
  $1.Int64Value ensureMaximumVolumeSize() => $_ensure(1);

  /// The smallest size that may be used in a
  /// CreateVolumeRequest.capacity_range.limit_bytes field
  /// to create a volume with the same parameters as those in
  /// GetCapacityRequest.
  ///
  /// If `volume_capabilities` or `parameters` is
  /// specified in the request, the Plugin SHALL take those into
  /// consideration when calculating the maximum volume size of the
  /// storage.
  ///
  /// This field is OPTIONAL. MUST NOT be negative.
  /// The Plugin SHOULD provide a value for this field if it has
  /// a minimum size for individual volumes and leave it unset
  /// otherwise. COs MAY use it to make decision about
  /// where to create volumes.
  @$pb.TagNumber(3)
  $1.Int64Value get minimumVolumeSize => $_getN(2);
  @$pb.TagNumber(3)
  set minimumVolumeSize($1.Int64Value value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasMinimumVolumeSize() => $_has(2);
  @$pb.TagNumber(3)
  void clearMinimumVolumeSize() => $_clearField(3);
  @$pb.TagNumber(3)
  $1.Int64Value ensureMinimumVolumeSize() => $_ensure(2);
}

class ControllerGetCapabilitiesRequest extends $pb.GeneratedMessage {
  factory ControllerGetCapabilitiesRequest() =>
      ControllerGetCapabilitiesRequest._();

  ControllerGetCapabilitiesRequest._();

  factory ControllerGetCapabilitiesRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetCapabilitiesRequest()..mergeFromBuffer(data, registry);
  factory ControllerGetCapabilitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetCapabilitiesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerGetCapabilitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerGetCapabilitiesRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetCapabilitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetCapabilitiesRequest copyWith(
          void Function(ControllerGetCapabilitiesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerGetCapabilitiesRequest))
          as ControllerGetCapabilitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerGetCapabilitiesRequest() / ControllerGetCapabilitiesRequest.new instead')
  static ControllerGetCapabilitiesRequest create() =>
      ControllerGetCapabilitiesRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerGetCapabilitiesRequest._();
  @$core.override
  ControllerGetCapabilitiesRequest createEmptyInstance() =>
      ControllerGetCapabilitiesRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerGetCapabilitiesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerGetCapabilitiesRequest>(
          ControllerGetCapabilitiesRequest.$_createMessage);
  static ControllerGetCapabilitiesRequest? _defaultInstance;
}

class ControllerGetCapabilitiesResponse extends $pb.GeneratedMessage {
  factory ControllerGetCapabilitiesResponse({
    $core.Iterable<ControllerServiceCapability>? capabilities,
  }) {
    final result = ControllerGetCapabilitiesResponse._();
    if (capabilities != null) result.capabilities.addAll(capabilities);
    return result;
  }

  ControllerGetCapabilitiesResponse._();

  factory ControllerGetCapabilitiesResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetCapabilitiesResponse()..mergeFromBuffer(data, registry);
  factory ControllerGetCapabilitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerGetCapabilitiesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerGetCapabilitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerGetCapabilitiesResponse.$_createMessage)
    ..pPM<ControllerServiceCapability>(1, _omitFieldNames ? '' : 'capabilities',
        subBuilder: ControllerServiceCapability.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetCapabilitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerGetCapabilitiesResponse copyWith(
          void Function(ControllerGetCapabilitiesResponse) updates) =>
      super.copyWith((message) =>
              updates(message as ControllerGetCapabilitiesResponse))
          as ControllerGetCapabilitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerGetCapabilitiesResponse() / ControllerGetCapabilitiesResponse.new instead')
  static ControllerGetCapabilitiesResponse create() =>
      ControllerGetCapabilitiesResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerGetCapabilitiesResponse._();
  @$core.override
  ControllerGetCapabilitiesResponse createEmptyInstance() =>
      ControllerGetCapabilitiesResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerGetCapabilitiesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerGetCapabilitiesResponse>(
          ControllerGetCapabilitiesResponse.$_createMessage);
  static ControllerGetCapabilitiesResponse? _defaultInstance;

  /// All the capabilities that the controller service supports. This
  /// field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<ControllerServiceCapability> get capabilities => $_getList(0);
}

class ControllerServiceCapability_RPC extends $pb.GeneratedMessage {
  factory ControllerServiceCapability_RPC({
    ControllerServiceCapability_RPC_Type? type,
  }) {
    final result = ControllerServiceCapability_RPC._();
    if (type != null) result.type = type;
    return result;
  }

  ControllerServiceCapability_RPC._();

  factory ControllerServiceCapability_RPC.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerServiceCapability_RPC()..mergeFromBuffer(data, registry);
  factory ControllerServiceCapability_RPC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerServiceCapability_RPC()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerServiceCapability.RPC',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerServiceCapability_RPC.$_createMessage)
    ..aE<ControllerServiceCapability_RPC_Type>(1, _omitFieldNames ? '' : 'type',
        enumValues: ControllerServiceCapability_RPC_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerServiceCapability_RPC clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerServiceCapability_RPC copyWith(
          void Function(ControllerServiceCapability_RPC) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerServiceCapability_RPC))
          as ControllerServiceCapability_RPC;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerServiceCapability_RPC() / ControllerServiceCapability_RPC.new instead')
  static ControllerServiceCapability_RPC create() =>
      ControllerServiceCapability_RPC._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerServiceCapability_RPC._();
  @$core.override
  ControllerServiceCapability_RPC createEmptyInstance() =>
      ControllerServiceCapability_RPC._();
  @$core.pragma('dart2js:noInline')
  static ControllerServiceCapability_RPC getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerServiceCapability_RPC>(
          ControllerServiceCapability_RPC.$_createMessage);
  static ControllerServiceCapability_RPC? _defaultInstance;

  @$pb.TagNumber(1)
  ControllerServiceCapability_RPC_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(ControllerServiceCapability_RPC_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

enum ControllerServiceCapability_Type { rpc, notSet }

/// Specifies a capability of the controller service.
class ControllerServiceCapability extends $pb.GeneratedMessage {
  factory ControllerServiceCapability({
    ControllerServiceCapability_RPC? rpc,
  }) {
    final result = ControllerServiceCapability._();
    if (rpc != null) result.rpc = rpc;
    return result;
  }

  ControllerServiceCapability._();

  factory ControllerServiceCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerServiceCapability()..mergeFromBuffer(data, registry);
  factory ControllerServiceCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerServiceCapability()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, ControllerServiceCapability_Type>
      _ControllerServiceCapability_TypeByTag = {
    1: ControllerServiceCapability_Type.rpc,
    0: ControllerServiceCapability_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerServiceCapability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerServiceCapability.$_createMessage)
    ..oo(0, [1])
    ..aOM<ControllerServiceCapability_RPC>(1, _omitFieldNames ? '' : 'rpc',
        subBuilder: ControllerServiceCapability_RPC.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerServiceCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerServiceCapability copyWith(
          void Function(ControllerServiceCapability) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerServiceCapability))
          as ControllerServiceCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerServiceCapability() / ControllerServiceCapability.new instead')
  static ControllerServiceCapability create() =>
      ControllerServiceCapability._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerServiceCapability._();
  @$core.override
  ControllerServiceCapability createEmptyInstance() =>
      ControllerServiceCapability._();
  @$core.pragma('dart2js:noInline')
  static ControllerServiceCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerServiceCapability>(
          ControllerServiceCapability.$_createMessage);
  static ControllerServiceCapability? _defaultInstance;

  @$pb.TagNumber(1)
  ControllerServiceCapability_Type whichType() =>
      _ControllerServiceCapability_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearType() => $_clearField($_whichOneof(0));

  /// RPC that the controller supports.
  @$pb.TagNumber(1)
  ControllerServiceCapability_RPC get rpc => $_getN(0);
  @$pb.TagNumber(1)
  set rpc(ControllerServiceCapability_RPC value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRpc() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpc() => $_clearField(1);
  @$pb.TagNumber(1)
  ControllerServiceCapability_RPC ensureRpc() => $_ensure(0);
}

class CreateSnapshotRequest extends $pb.GeneratedMessage {
  factory CreateSnapshotRequest({
    $core.String? sourceVolumeId,
    $core.String? name,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
  }) {
    final result = CreateSnapshotRequest._();
    if (sourceVolumeId != null) result.sourceVolumeId = sourceVolumeId;
    if (name != null) result.name = name;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (parameters != null) result.parameters.addEntries(parameters);
    return result;
  }

  CreateSnapshotRequest._();

  factory CreateSnapshotRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateSnapshotRequest()..mergeFromBuffer(data, registry);
  factory CreateSnapshotRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateSnapshotRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateSnapshotRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'sourceVolumeId')
    ..aOS(2, _omitFieldNames ? '' : 'name')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'CreateSnapshotRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'CreateSnapshotRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSnapshotRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSnapshotRequest copyWith(
          void Function(CreateSnapshotRequest) updates) =>
      super.copyWith((message) => updates(message as CreateSnapshotRequest))
          as CreateSnapshotRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CreateSnapshotRequest() / CreateSnapshotRequest.new instead')
  static CreateSnapshotRequest create() => CreateSnapshotRequest._();
  static $pb.GeneratedMessage $_createMessage() => CreateSnapshotRequest._();
  @$core.override
  CreateSnapshotRequest createEmptyInstance() => CreateSnapshotRequest._();
  @$core.pragma('dart2js:noInline')
  static CreateSnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSnapshotRequest>(
          CreateSnapshotRequest.$_createMessage);
  static CreateSnapshotRequest? _defaultInstance;

  /// The ID of the source volume to be snapshotted.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get sourceVolumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set sourceVolumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSourceVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSourceVolumeId() => $_clearField(1);

  /// The suggested name for the snapshot. This field is REQUIRED for
  /// idempotency.
  /// Any Unicode string that conforms to the length limit is allowed
  /// except those containing the following banned characters:
  /// U+0000-U+0008, U+000B, U+000C, U+000E-U+001F, U+007F-U+009F.
  /// (These are control characters other than commonly used whitespace.)
  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(1);
  @$pb.TagNumber(2)
  set name($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(1);
  @$pb.TagNumber(2)
  void clearName() => $_clearField(2);

  /// Secrets required by plugin to complete snapshot creation request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);

  /// Plugin specific parameters passed in as opaque key-value pairs.
  /// This field is OPTIONAL. The Plugin is responsible for parsing and
  /// validating these parameters. COs will treat these as opaque.
  /// Use cases for opaque parameters:
  /// - Specify a policy to automatically clean up the snapshot.
  /// - Specify an expiration date for the snapshot.
  /// - Specify whether the snapshot is readonly or read/write.
  /// - Specify if the snapshot should be replicated to some place.
  /// - Specify primary or secondary for replication systems that
  ///   support snapshotting only on primary.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(3);
}

class CreateSnapshotResponse extends $pb.GeneratedMessage {
  factory CreateSnapshotResponse({
    Snapshot? snapshot,
  }) {
    final result = CreateSnapshotResponse._();
    if (snapshot != null) result.snapshot = snapshot;
    return result;
  }

  CreateSnapshotResponse._();

  factory CreateSnapshotResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateSnapshotResponse()..mergeFromBuffer(data, registry);
  factory CreateSnapshotResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateSnapshotResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateSnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateSnapshotResponse.$_createMessage)
    ..aOM<Snapshot>(1, _omitFieldNames ? '' : 'snapshot',
        subBuilder: Snapshot.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSnapshotResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateSnapshotResponse copyWith(
          void Function(CreateSnapshotResponse) updates) =>
      super.copyWith((message) => updates(message as CreateSnapshotResponse))
          as CreateSnapshotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CreateSnapshotResponse() / CreateSnapshotResponse.new instead')
  static CreateSnapshotResponse create() => CreateSnapshotResponse._();
  static $pb.GeneratedMessage $_createMessage() => CreateSnapshotResponse._();
  @$core.override
  CreateSnapshotResponse createEmptyInstance() => CreateSnapshotResponse._();
  @$core.pragma('dart2js:noInline')
  static CreateSnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateSnapshotResponse>(
          CreateSnapshotResponse.$_createMessage);
  static CreateSnapshotResponse? _defaultInstance;

  /// Contains all attributes of the newly created snapshot that are
  /// relevant to the CO along with information required by the Plugin
  /// to uniquely identify the snapshot. This field is REQUIRED.
  @$pb.TagNumber(1)
  Snapshot get snapshot => $_getN(0);
  @$pb.TagNumber(1)
  set snapshot(Snapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshot() => $_clearField(1);
  @$pb.TagNumber(1)
  Snapshot ensureSnapshot() => $_ensure(0);
}

/// Information about a specific snapshot.
class Snapshot extends $pb.GeneratedMessage {
  factory Snapshot({
    $fixnum.Int64? sizeBytes,
    $core.String? snapshotId,
    $core.String? sourceVolumeId,
    $2.Timestamp? creationTime,
    $core.bool? readyToUse,
    $core.String? groupSnapshotId,
  }) {
    final result = Snapshot._();
    if (sizeBytes != null) result.sizeBytes = sizeBytes;
    if (snapshotId != null) result.snapshotId = snapshotId;
    if (sourceVolumeId != null) result.sourceVolumeId = sourceVolumeId;
    if (creationTime != null) result.creationTime = creationTime;
    if (readyToUse != null) result.readyToUse = readyToUse;
    if (groupSnapshotId != null) result.groupSnapshotId = groupSnapshotId;
    return result;
  }

  Snapshot._();

  factory Snapshot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Snapshot()..mergeFromBuffer(data, registry);
  factory Snapshot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      Snapshot()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'Snapshot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: Snapshot.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'sizeBytes')
    ..aOS(2, _omitFieldNames ? '' : 'snapshotId')
    ..aOS(3, _omitFieldNames ? '' : 'sourceVolumeId')
    ..aOM<$2.Timestamp>(4, _omitFieldNames ? '' : 'creationTime',
        subBuilder: $2.Timestamp.$_createMessage)
    ..aOB(5, _omitFieldNames ? '' : 'readyToUse')
    ..aOS(6, _omitFieldNames ? '' : 'groupSnapshotId')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Snapshot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  Snapshot copyWith(void Function(Snapshot) updates) =>
      super.copyWith((message) => updates(message as Snapshot)) as Snapshot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use Snapshot() / Snapshot.new instead')
  static Snapshot create() => Snapshot._();
  static $pb.GeneratedMessage $_createMessage() => Snapshot._();
  @$core.override
  Snapshot createEmptyInstance() => Snapshot._();
  @$core.pragma('dart2js:noInline')
  static Snapshot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<Snapshot>(Snapshot.$_createMessage);
  static Snapshot? _defaultInstance;

  /// This is the complete size of the snapshot in bytes. The purpose of
  /// this field is to give CO guidance on how much space is needed to
  /// create a volume from this snapshot. The size of the volume MUST NOT
  /// be less than the size of the source snapshot. This field is
  /// OPTIONAL. If this field is not set, it indicates that this size is
  /// unknown. The value of this field MUST NOT be negative and a size of
  /// zero means it is unspecified.
  @$pb.TagNumber(1)
  $fixnum.Int64 get sizeBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set sizeBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSizeBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearSizeBytes() => $_clearField(1);

  /// The identifier for this snapshot, generated by the plugin.
  /// This field is REQUIRED.
  /// This field MUST contain enough information to uniquely identify
  /// this specific snapshot vs all other snapshots supported by this
  /// plugin.
  /// This field SHALL be used by the CO in subsequent calls to refer to
  /// this snapshot.
  /// The SP is NOT responsible for global uniqueness of snapshot_id
  /// across multiple SPs.
  @$pb.TagNumber(2)
  $core.String get snapshotId => $_getSZ(1);
  @$pb.TagNumber(2)
  set snapshotId($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasSnapshotId() => $_has(1);
  @$pb.TagNumber(2)
  void clearSnapshotId() => $_clearField(2);

  /// Identity information for the source volume. Note that creating a
  /// snapshot from a snapshot is not supported here so the source has to
  /// be a volume. This field is REQUIRED.
  @$pb.TagNumber(3)
  $core.String get sourceVolumeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sourceVolumeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSourceVolumeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceVolumeId() => $_clearField(3);

  /// Timestamp when the point-in-time snapshot is taken on the storage
  /// system. This field is REQUIRED.
  @$pb.TagNumber(4)
  $2.Timestamp get creationTime => $_getN(3);
  @$pb.TagNumber(4)
  set creationTime($2.Timestamp value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasCreationTime() => $_has(3);
  @$pb.TagNumber(4)
  void clearCreationTime() => $_clearField(4);
  @$pb.TagNumber(4)
  $2.Timestamp ensureCreationTime() => $_ensure(3);

  /// Indicates if a snapshot is ready to use as a
  /// `volume_content_source` in a `CreateVolumeRequest`. The default
  /// value is false. This field is REQUIRED.
  @$pb.TagNumber(5)
  $core.bool get readyToUse => $_getBF(4);
  @$pb.TagNumber(5)
  set readyToUse($core.bool value) => $_setBool(4, value);
  @$pb.TagNumber(5)
  $core.bool hasReadyToUse() => $_has(4);
  @$pb.TagNumber(5)
  void clearReadyToUse() => $_clearField(5);

  /// The ID of the volume group snapshot that this snapshot is part of.
  /// It uniquely identifies the group snapshot on the storage system.
  /// This field is OPTIONAL.
  /// If this snapshot is a member of a volume group snapshot, and it
  /// MUST NOT be deleted as a stand alone snapshot, then the SP
  /// MUST provide the ID of the volume group snapshot in this field.
  /// If provided, CO MUST use this field in subsequent volume group
  /// snapshot operations to indicate that this snapshot is part of the
  /// specified group snapshot.
  /// If not provided, CO SHALL treat the snapshot as independent,
  /// and SP SHALL allow it to be deleted separately.
  /// If this message is inside a VolumeGroupSnapshot message, the value
  /// MUST be the same as the group_snapshot_id in that message.
  @$pb.TagNumber(6)
  $core.String get groupSnapshotId => $_getSZ(5);
  @$pb.TagNumber(6)
  set groupSnapshotId($core.String value) => $_setString(5, value);
  @$pb.TagNumber(6)
  $core.bool hasGroupSnapshotId() => $_has(5);
  @$pb.TagNumber(6)
  void clearGroupSnapshotId() => $_clearField(6);
}

class DeleteSnapshotRequest extends $pb.GeneratedMessage {
  factory DeleteSnapshotRequest({
    $core.String? snapshotId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = DeleteSnapshotRequest._();
    if (snapshotId != null) result.snapshotId = snapshotId;
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  DeleteSnapshotRequest._();

  factory DeleteSnapshotRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteSnapshotRequest()..mergeFromBuffer(data, registry);
  factory DeleteSnapshotRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteSnapshotRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteSnapshotRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'snapshotId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'DeleteSnapshotRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSnapshotRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSnapshotRequest copyWith(
          void Function(DeleteSnapshotRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteSnapshotRequest))
          as DeleteSnapshotRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use DeleteSnapshotRequest() / DeleteSnapshotRequest.new instead')
  static DeleteSnapshotRequest create() => DeleteSnapshotRequest._();
  static $pb.GeneratedMessage $_createMessage() => DeleteSnapshotRequest._();
  @$core.override
  DeleteSnapshotRequest createEmptyInstance() => DeleteSnapshotRequest._();
  @$core.pragma('dart2js:noInline')
  static DeleteSnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSnapshotRequest>(
          DeleteSnapshotRequest.$_createMessage);
  static DeleteSnapshotRequest? _defaultInstance;

  /// The ID of the snapshot to be deleted.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get snapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set snapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshotId() => $_clearField(1);

  /// Secrets required by plugin to complete snapshot deletion request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(1);
}

class DeleteSnapshotResponse extends $pb.GeneratedMessage {
  factory DeleteSnapshotResponse() => DeleteSnapshotResponse._();

  DeleteSnapshotResponse._();

  factory DeleteSnapshotResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteSnapshotResponse()..mergeFromBuffer(data, registry);
  factory DeleteSnapshotResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteSnapshotResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteSnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteSnapshotResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSnapshotResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteSnapshotResponse copyWith(
          void Function(DeleteSnapshotResponse) updates) =>
      super.copyWith((message) => updates(message as DeleteSnapshotResponse))
          as DeleteSnapshotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use DeleteSnapshotResponse() / DeleteSnapshotResponse.new instead')
  static DeleteSnapshotResponse create() => DeleteSnapshotResponse._();
  static $pb.GeneratedMessage $_createMessage() => DeleteSnapshotResponse._();
  @$core.override
  DeleteSnapshotResponse createEmptyInstance() => DeleteSnapshotResponse._();
  @$core.pragma('dart2js:noInline')
  static DeleteSnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteSnapshotResponse>(
          DeleteSnapshotResponse.$_createMessage);
  static DeleteSnapshotResponse? _defaultInstance;
}

/// List all snapshots on the storage system regardless of how they were
/// created.
class ListSnapshotsRequest extends $pb.GeneratedMessage {
  factory ListSnapshotsRequest({
    $core.int? maxEntries,
    $core.String? startingToken,
    $core.String? sourceVolumeId,
    $core.String? snapshotId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = ListSnapshotsRequest._();
    if (maxEntries != null) result.maxEntries = maxEntries;
    if (startingToken != null) result.startingToken = startingToken;
    if (sourceVolumeId != null) result.sourceVolumeId = sourceVolumeId;
    if (snapshotId != null) result.snapshotId = snapshotId;
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  ListSnapshotsRequest._();

  factory ListSnapshotsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsRequest()..mergeFromBuffer(data, registry);
  factory ListSnapshotsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSnapshotsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListSnapshotsRequest.$_createMessage)
    ..aI(1, _omitFieldNames ? '' : 'maxEntries')
    ..aOS(2, _omitFieldNames ? '' : 'startingToken')
    ..aOS(3, _omitFieldNames ? '' : 'sourceVolumeId')
    ..aOS(4, _omitFieldNames ? '' : 'snapshotId')
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ListSnapshotsRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsRequest copyWith(void Function(ListSnapshotsRequest) updates) =>
      super.copyWith((message) => updates(message as ListSnapshotsRequest))
          as ListSnapshotsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ListSnapshotsRequest() / ListSnapshotsRequest.new instead')
  static ListSnapshotsRequest create() => ListSnapshotsRequest._();
  static $pb.GeneratedMessage $_createMessage() => ListSnapshotsRequest._();
  @$core.override
  ListSnapshotsRequest createEmptyInstance() => ListSnapshotsRequest._();
  @$core.pragma('dart2js:noInline')
  static ListSnapshotsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSnapshotsRequest>(
          ListSnapshotsRequest.$_createMessage);
  static ListSnapshotsRequest? _defaultInstance;

  /// If specified (non-zero value), the Plugin MUST NOT return more
  /// entries than this number in the response. If the actual number of
  /// entries is more than this number, the Plugin MUST set `next_token`
  /// in the response which can be used to get the next page of entries
  /// in the subsequent `ListSnapshots` call. This field is OPTIONAL. If
  /// not specified (zero value), it means there is no restriction on the
  /// number of entries that can be returned.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $core.int get maxEntries => $_getIZ(0);
  @$pb.TagNumber(1)
  set maxEntries($core.int value) => $_setSignedInt32(0, value);
  @$pb.TagNumber(1)
  $core.bool hasMaxEntries() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxEntries() => $_clearField(1);

  /// A token to specify where to start paginating. Set this field to
  /// `next_token` returned by a previous `ListSnapshots` call to get the
  /// next page of entries. This field is OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(2)
  $core.String get startingToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set startingToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStartingToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearStartingToken() => $_clearField(2);

  /// Identity information for the source volume. This field is OPTIONAL.
  /// It can be used to list snapshots by volume.
  @$pb.TagNumber(3)
  $core.String get sourceVolumeId => $_getSZ(2);
  @$pb.TagNumber(3)
  set sourceVolumeId($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasSourceVolumeId() => $_has(2);
  @$pb.TagNumber(3)
  void clearSourceVolumeId() => $_clearField(3);

  /// Identity information for a specific snapshot. This field is
  /// OPTIONAL. It can be used to list only a specific snapshot.
  /// ListSnapshots will return with current snapshot information
  /// and will not block if the snapshot is being processed after
  /// it is cut.
  @$pb.TagNumber(4)
  $core.String get snapshotId => $_getSZ(3);
  @$pb.TagNumber(4)
  set snapshotId($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasSnapshotId() => $_has(3);
  @$pb.TagNumber(4)
  void clearSnapshotId() => $_clearField(4);

  /// Secrets required by plugin to complete ListSnapshot request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(4);
}

class ListSnapshotsResponse_Entry extends $pb.GeneratedMessage {
  factory ListSnapshotsResponse_Entry({
    Snapshot? snapshot,
  }) {
    final result = ListSnapshotsResponse_Entry._();
    if (snapshot != null) result.snapshot = snapshot;
    return result;
  }

  ListSnapshotsResponse_Entry._();

  factory ListSnapshotsResponse_Entry.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsResponse_Entry()..mergeFromBuffer(data, registry);
  factory ListSnapshotsResponse_Entry.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsResponse_Entry()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSnapshotsResponse.Entry',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListSnapshotsResponse_Entry.$_createMessage)
    ..aOM<Snapshot>(1, _omitFieldNames ? '' : 'snapshot',
        subBuilder: Snapshot.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsResponse_Entry clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsResponse_Entry copyWith(
          void Function(ListSnapshotsResponse_Entry) updates) =>
      super.copyWith(
              (message) => updates(message as ListSnapshotsResponse_Entry))
          as ListSnapshotsResponse_Entry;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ListSnapshotsResponse_Entry() / ListSnapshotsResponse_Entry.new instead')
  static ListSnapshotsResponse_Entry create() =>
      ListSnapshotsResponse_Entry._();
  static $pb.GeneratedMessage $_createMessage() =>
      ListSnapshotsResponse_Entry._();
  @$core.override
  ListSnapshotsResponse_Entry createEmptyInstance() =>
      ListSnapshotsResponse_Entry._();
  @$core.pragma('dart2js:noInline')
  static ListSnapshotsResponse_Entry getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSnapshotsResponse_Entry>(
          ListSnapshotsResponse_Entry.$_createMessage);
  static ListSnapshotsResponse_Entry? _defaultInstance;

  @$pb.TagNumber(1)
  Snapshot get snapshot => $_getN(0);
  @$pb.TagNumber(1)
  set snapshot(Snapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearSnapshot() => $_clearField(1);
  @$pb.TagNumber(1)
  Snapshot ensureSnapshot() => $_ensure(0);
}

class ListSnapshotsResponse extends $pb.GeneratedMessage {
  factory ListSnapshotsResponse({
    $core.Iterable<ListSnapshotsResponse_Entry>? entries,
    $core.String? nextToken,
  }) {
    final result = ListSnapshotsResponse._();
    if (entries != null) result.entries.addAll(entries);
    if (nextToken != null) result.nextToken = nextToken;
    return result;
  }

  ListSnapshotsResponse._();

  factory ListSnapshotsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsResponse()..mergeFromBuffer(data, registry);
  factory ListSnapshotsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ListSnapshotsResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ListSnapshotsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ListSnapshotsResponse.$_createMessage)
    ..pPM<ListSnapshotsResponse_Entry>(1, _omitFieldNames ? '' : 'entries',
        subBuilder: ListSnapshotsResponse_Entry.$_createMessage)
    ..aOS(2, _omitFieldNames ? '' : 'nextToken')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ListSnapshotsResponse copyWith(
          void Function(ListSnapshotsResponse) updates) =>
      super.copyWith((message) => updates(message as ListSnapshotsResponse))
          as ListSnapshotsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ListSnapshotsResponse() / ListSnapshotsResponse.new instead')
  static ListSnapshotsResponse create() => ListSnapshotsResponse._();
  static $pb.GeneratedMessage $_createMessage() => ListSnapshotsResponse._();
  @$core.override
  ListSnapshotsResponse createEmptyInstance() => ListSnapshotsResponse._();
  @$core.pragma('dart2js:noInline')
  static ListSnapshotsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ListSnapshotsResponse>(
          ListSnapshotsResponse.$_createMessage);
  static ListSnapshotsResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $pb.PbList<ListSnapshotsResponse_Entry> get entries => $_getList(0);

  /// This token allows you to get the next page of entries for
  /// `ListSnapshots` request. If the number of entries is larger than
  /// `max_entries`, use the `next_token` as a value for the
  /// `starting_token` field in the next `ListSnapshots` request. This
  /// field is OPTIONAL.
  /// An empty string is equal to an unspecified field value.
  @$pb.TagNumber(2)
  $core.String get nextToken => $_getSZ(1);
  @$pb.TagNumber(2)
  set nextToken($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNextToken() => $_has(1);
  @$pb.TagNumber(2)
  void clearNextToken() => $_clearField(2);
}

class ControllerExpandVolumeRequest extends $pb.GeneratedMessage {
  factory ControllerExpandVolumeRequest({
    $core.String? volumeId,
    CapacityRange? capacityRange,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    VolumeCapability? volumeCapability,
  }) {
    final result = ControllerExpandVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (capacityRange != null) result.capacityRange = capacityRange;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (volumeCapability != null) result.volumeCapability = volumeCapability;
    return result;
  }

  ControllerExpandVolumeRequest._();

  factory ControllerExpandVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerExpandVolumeRequest()..mergeFromBuffer(data, registry);
  factory ControllerExpandVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerExpandVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerExpandVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerExpandVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOM<CapacityRange>(2, _omitFieldNames ? '' : 'capacityRange',
        subBuilder: CapacityRange.$_createMessage)
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'ControllerExpandVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOM<VolumeCapability>(4, _omitFieldNames ? '' : 'volumeCapability',
        subBuilder: VolumeCapability.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerExpandVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerExpandVolumeRequest copyWith(
          void Function(ControllerExpandVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerExpandVolumeRequest))
          as ControllerExpandVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerExpandVolumeRequest() / ControllerExpandVolumeRequest.new instead')
  static ControllerExpandVolumeRequest create() =>
      ControllerExpandVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerExpandVolumeRequest._();
  @$core.override
  ControllerExpandVolumeRequest createEmptyInstance() =>
      ControllerExpandVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static ControllerExpandVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerExpandVolumeRequest>(
          ControllerExpandVolumeRequest.$_createMessage);
  static ControllerExpandVolumeRequest? _defaultInstance;

  /// The ID of the volume to expand. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// This allows CO to specify the capacity requirements of the volume
  /// after expansion. This field is REQUIRED.
  @$pb.TagNumber(2)
  CapacityRange get capacityRange => $_getN(1);
  @$pb.TagNumber(2)
  set capacityRange(CapacityRange value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasCapacityRange() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacityRange() => $_clearField(2);
  @$pb.TagNumber(2)
  CapacityRange ensureCapacityRange() => $_ensure(1);

  /// Secrets required by the plugin for expanding the volume.
  /// This field is OPTIONAL.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);

  /// Volume capability describing how the CO intends to use this volume.
  /// This allows SP to determine if volume is being used as a block
  /// device or mounted file system. For example - if volume is
  /// being used as a block device - the SP MAY set
  /// node_expansion_required to false in ControllerExpandVolumeResponse
  /// to skip invocation of NodeExpandVolume on the node by the CO.
  /// This is an OPTIONAL field.
  @$pb.TagNumber(4)
  VolumeCapability get volumeCapability => $_getN(3);
  @$pb.TagNumber(4)
  set volumeCapability(VolumeCapability value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVolumeCapability() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolumeCapability() => $_clearField(4);
  @$pb.TagNumber(4)
  VolumeCapability ensureVolumeCapability() => $_ensure(3);
}

class ControllerExpandVolumeResponse extends $pb.GeneratedMessage {
  factory ControllerExpandVolumeResponse({
    $fixnum.Int64? capacityBytes,
    $core.bool? nodeExpansionRequired,
  }) {
    final result = ControllerExpandVolumeResponse._();
    if (capacityBytes != null) result.capacityBytes = capacityBytes;
    if (nodeExpansionRequired != null)
      result.nodeExpansionRequired = nodeExpansionRequired;
    return result;
  }

  ControllerExpandVolumeResponse._();

  factory ControllerExpandVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerExpandVolumeResponse()..mergeFromBuffer(data, registry);
  factory ControllerExpandVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      ControllerExpandVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'ControllerExpandVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: ControllerExpandVolumeResponse.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'capacityBytes')
    ..aOB(2, _omitFieldNames ? '' : 'nodeExpansionRequired')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerExpandVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  ControllerExpandVolumeResponse copyWith(
          void Function(ControllerExpandVolumeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as ControllerExpandVolumeResponse))
          as ControllerExpandVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use ControllerExpandVolumeResponse() / ControllerExpandVolumeResponse.new instead')
  static ControllerExpandVolumeResponse create() =>
      ControllerExpandVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      ControllerExpandVolumeResponse._();
  @$core.override
  ControllerExpandVolumeResponse createEmptyInstance() =>
      ControllerExpandVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static ControllerExpandVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<ControllerExpandVolumeResponse>(
          ControllerExpandVolumeResponse.$_createMessage);
  static ControllerExpandVolumeResponse? _defaultInstance;

  /// Capacity of volume after expansion. This field is REQUIRED.
  @$pb.TagNumber(1)
  $fixnum.Int64 get capacityBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set capacityBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCapacityBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapacityBytes() => $_clearField(1);

  /// Whether node expansion is required for the volume. When true
  /// the CO MUST make NodeExpandVolume RPC call on the node. This field
  /// is REQUIRED.
  @$pb.TagNumber(2)
  $core.bool get nodeExpansionRequired => $_getBF(1);
  @$pb.TagNumber(2)
  set nodeExpansionRequired($core.bool value) => $_setBool(1, value);
  @$pb.TagNumber(2)
  $core.bool hasNodeExpansionRequired() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeExpansionRequired() => $_clearField(2);
}

class NodeStageVolumeRequest extends $pb.GeneratedMessage {
  factory NodeStageVolumeRequest({
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? publishContext,
    $core.String? stagingTargetPath,
    VolumeCapability? volumeCapability,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
  }) {
    final result = NodeStageVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (publishContext != null)
      result.publishContext.addEntries(publishContext);
    if (stagingTargetPath != null) result.stagingTargetPath = stagingTargetPath;
    if (volumeCapability != null) result.volumeCapability = volumeCapability;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    return result;
  }

  NodeStageVolumeRequest._();

  factory NodeStageVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeStageVolumeRequest()..mergeFromBuffer(data, registry);
  factory NodeStageVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeStageVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeStageVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeStageVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'publishContext',
        entryClassName: 'NodeStageVolumeRequest.PublishContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOS(3, _omitFieldNames ? '' : 'stagingTargetPath')
    ..aOM<VolumeCapability>(4, _omitFieldNames ? '' : 'volumeCapability',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(5, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'NodeStageVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'volumeContext',
        entryClassName: 'NodeStageVolumeRequest.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStageVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStageVolumeRequest copyWith(
          void Function(NodeStageVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as NodeStageVolumeRequest))
          as NodeStageVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeStageVolumeRequest() / NodeStageVolumeRequest.new instead')
  static NodeStageVolumeRequest create() => NodeStageVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => NodeStageVolumeRequest._();
  @$core.override
  NodeStageVolumeRequest createEmptyInstance() => NodeStageVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeStageVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeStageVolumeRequest>(
          NodeStageVolumeRequest.$_createMessage);
  static NodeStageVolumeRequest? _defaultInstance;

  /// The ID of the volume to publish. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The CO SHALL set this field to the value returned by
  /// `ControllerPublishVolume` if the corresponding Controller Plugin
  /// has `PUBLISH_UNPUBLISH_VOLUME` controller capability, and SHALL be
  /// left unset if the corresponding Controller Plugin does not have
  /// this capability. This is an OPTIONAL field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get publishContext => $_getMap(1);

  /// The path to which the volume MAY be staged. It MUST be an
  /// absolute path in the root filesystem of the process serving this
  /// request, and MUST be a directory. The CO SHALL ensure that there
  /// is only one `staging_target_path` per volume. The CO SHALL ensure
  /// that the path is directory and that the process serving the
  /// request has `read` and `write` permission to that directory. The
  /// CO SHALL be responsible for creating the directory if it does not
  /// exist.
  /// This is a REQUIRED field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(3)
  $core.String get stagingTargetPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set stagingTargetPath($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStagingTargetPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearStagingTargetPath() => $_clearField(3);

  /// Volume capability describing how the CO intends to use this volume.
  /// SP MUST ensure the CO can use the staged volume as described.
  /// Otherwise SP MUST return the appropriate gRPC error code.
  /// This is a REQUIRED field.
  @$pb.TagNumber(4)
  VolumeCapability get volumeCapability => $_getN(3);
  @$pb.TagNumber(4)
  set volumeCapability(VolumeCapability value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasVolumeCapability() => $_has(3);
  @$pb.TagNumber(4)
  void clearVolumeCapability() => $_clearField(4);
  @$pb.TagNumber(4)
  VolumeCapability ensureVolumeCapability() => $_ensure(3);

  /// Secrets required by plugin to complete node stage volume request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(5)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(4);

  /// Volume context as returned by SP in
  /// CreateVolumeResponse.Volume.volume_context.
  /// This field is OPTIONAL and MUST match the volume_context of the
  /// volume identified by `volume_id`.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(5);
}

class NodeStageVolumeResponse extends $pb.GeneratedMessage {
  factory NodeStageVolumeResponse() => NodeStageVolumeResponse._();

  NodeStageVolumeResponse._();

  factory NodeStageVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeStageVolumeResponse()..mergeFromBuffer(data, registry);
  factory NodeStageVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeStageVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeStageVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeStageVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStageVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeStageVolumeResponse copyWith(
          void Function(NodeStageVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as NodeStageVolumeResponse))
          as NodeStageVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeStageVolumeResponse() / NodeStageVolumeResponse.new instead')
  static NodeStageVolumeResponse create() => NodeStageVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() => NodeStageVolumeResponse._();
  @$core.override
  NodeStageVolumeResponse createEmptyInstance() => NodeStageVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeStageVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeStageVolumeResponse>(
          NodeStageVolumeResponse.$_createMessage);
  static NodeStageVolumeResponse? _defaultInstance;
}

class NodeUnstageVolumeRequest extends $pb.GeneratedMessage {
  factory NodeUnstageVolumeRequest({
    $core.String? volumeId,
    $core.String? stagingTargetPath,
  }) {
    final result = NodeUnstageVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (stagingTargetPath != null) result.stagingTargetPath = stagingTargetPath;
    return result;
  }

  NodeUnstageVolumeRequest._();

  factory NodeUnstageVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnstageVolumeRequest()..mergeFromBuffer(data, registry);
  factory NodeUnstageVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnstageVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeUnstageVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeUnstageVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'stagingTargetPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnstageVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnstageVolumeRequest copyWith(
          void Function(NodeUnstageVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as NodeUnstageVolumeRequest))
          as NodeUnstageVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeUnstageVolumeRequest() / NodeUnstageVolumeRequest.new instead')
  static NodeUnstageVolumeRequest create() => NodeUnstageVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => NodeUnstageVolumeRequest._();
  @$core.override
  NodeUnstageVolumeRequest createEmptyInstance() =>
      NodeUnstageVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeUnstageVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeUnstageVolumeRequest>(
          NodeUnstageVolumeRequest.$_createMessage);
  static NodeUnstageVolumeRequest? _defaultInstance;

  /// The ID of the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The path at which the volume was staged. It MUST be an absolute
  /// path in the root filesystem of the process serving this request.
  /// This is a REQUIRED field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(2)
  $core.String get stagingTargetPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set stagingTargetPath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasStagingTargetPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearStagingTargetPath() => $_clearField(2);
}

class NodeUnstageVolumeResponse extends $pb.GeneratedMessage {
  factory NodeUnstageVolumeResponse() => NodeUnstageVolumeResponse._();

  NodeUnstageVolumeResponse._();

  factory NodeUnstageVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnstageVolumeResponse()..mergeFromBuffer(data, registry);
  factory NodeUnstageVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnstageVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeUnstageVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeUnstageVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnstageVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnstageVolumeResponse copyWith(
          void Function(NodeUnstageVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as NodeUnstageVolumeResponse))
          as NodeUnstageVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeUnstageVolumeResponse() / NodeUnstageVolumeResponse.new instead')
  static NodeUnstageVolumeResponse create() => NodeUnstageVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeUnstageVolumeResponse._();
  @$core.override
  NodeUnstageVolumeResponse createEmptyInstance() =>
      NodeUnstageVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeUnstageVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeUnstageVolumeResponse>(
          NodeUnstageVolumeResponse.$_createMessage);
  static NodeUnstageVolumeResponse? _defaultInstance;
}

class NodePublishVolumeRequest extends $pb.GeneratedMessage {
  factory NodePublishVolumeRequest({
    $core.String? volumeId,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? publishContext,
    $core.String? stagingTargetPath,
    $core.String? targetPath,
    VolumeCapability? volumeCapability,
    $core.bool? readonly,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? volumeContext,
  }) {
    final result = NodePublishVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (publishContext != null)
      result.publishContext.addEntries(publishContext);
    if (stagingTargetPath != null) result.stagingTargetPath = stagingTargetPath;
    if (targetPath != null) result.targetPath = targetPath;
    if (volumeCapability != null) result.volumeCapability = volumeCapability;
    if (readonly != null) result.readonly = readonly;
    if (secrets != null) result.secrets.addEntries(secrets);
    if (volumeContext != null) result.volumeContext.addEntries(volumeContext);
    return result;
  }

  NodePublishVolumeRequest._();

  factory NodePublishVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodePublishVolumeRequest()..mergeFromBuffer(data, registry);
  factory NodePublishVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodePublishVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodePublishVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodePublishVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..m<$core.String, $core.String>(2, _omitFieldNames ? '' : 'publishContext',
        entryClassName: 'NodePublishVolumeRequest.PublishContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..aOS(3, _omitFieldNames ? '' : 'stagingTargetPath')
    ..aOS(4, _omitFieldNames ? '' : 'targetPath')
    ..aOM<VolumeCapability>(5, _omitFieldNames ? '' : 'volumeCapability',
        subBuilder: VolumeCapability.$_createMessage)
    ..aOB(6, _omitFieldNames ? '' : 'readonly')
    ..m<$core.String, $core.String>(7, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'NodePublishVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(8, _omitFieldNames ? '' : 'volumeContext',
        entryClassName: 'NodePublishVolumeRequest.VolumeContextEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePublishVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePublishVolumeRequest copyWith(
          void Function(NodePublishVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as NodePublishVolumeRequest))
          as NodePublishVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodePublishVolumeRequest() / NodePublishVolumeRequest.new instead')
  static NodePublishVolumeRequest create() => NodePublishVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => NodePublishVolumeRequest._();
  @$core.override
  NodePublishVolumeRequest createEmptyInstance() =>
      NodePublishVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static NodePublishVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodePublishVolumeRequest>(
          NodePublishVolumeRequest.$_createMessage);
  static NodePublishVolumeRequest? _defaultInstance;

  /// The ID of the volume to publish. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The CO SHALL set this field to the value returned by
  /// `ControllerPublishVolume` if the corresponding Controller Plugin
  /// has `PUBLISH_UNPUBLISH_VOLUME` controller capability, and SHALL be
  /// left unset if the corresponding Controller Plugin does not have
  /// this capability. This is an OPTIONAL field.
  @$pb.TagNumber(2)
  $pb.PbMap<$core.String, $core.String> get publishContext => $_getMap(1);

  /// The path to which the volume was staged by `NodeStageVolume`.
  /// It MUST be an absolute path in the root filesystem of the process
  /// serving this request.
  /// It MUST be set if the Node Plugin implements the
  /// `STAGE_UNSTAGE_VOLUME` node capability.
  /// This is an OPTIONAL field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(3)
  $core.String get stagingTargetPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set stagingTargetPath($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStagingTargetPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearStagingTargetPath() => $_clearField(3);

  /// The path to which the volume will be published. It MUST be an
  /// absolute path in the root filesystem of the process serving this
  /// request. The CO SHALL ensure uniqueness of target_path per volume.
  /// The CO SHALL ensure that the parent directory of this path exists
  /// and that the process serving the request has `read` and `write`
  /// permissions to that parent directory.
  /// For volumes with an access type of block, the SP SHALL place the
  /// block device at target_path.
  /// For volumes with an access type of mount, the SP SHALL place the
  /// mounted directory at target_path.
  /// Creation of target_path is the responsibility of the SP.
  /// This is a REQUIRED field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(4)
  $core.String get targetPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set targetPath($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasTargetPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearTargetPath() => $_clearField(4);

  /// Volume capability describing how the CO intends to use this volume.
  /// SP MUST ensure the CO can use the published volume as described.
  /// Otherwise SP MUST return the appropriate gRPC error code.
  /// This is a REQUIRED field.
  @$pb.TagNumber(5)
  VolumeCapability get volumeCapability => $_getN(4);
  @$pb.TagNumber(5)
  set volumeCapability(VolumeCapability value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasVolumeCapability() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolumeCapability() => $_clearField(5);
  @$pb.TagNumber(5)
  VolumeCapability ensureVolumeCapability() => $_ensure(4);

  /// Indicates SP MUST publish the volume in readonly mode.
  /// This field is REQUIRED.
  @$pb.TagNumber(6)
  $core.bool get readonly => $_getBF(5);
  @$pb.TagNumber(6)
  set readonly($core.bool value) => $_setBool(5, value);
  @$pb.TagNumber(6)
  $core.bool hasReadonly() => $_has(5);
  @$pb.TagNumber(6)
  void clearReadonly() => $_clearField(6);

  /// Secrets required by plugin to complete node publish volume request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(7)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(6);

  /// Volume context as returned by SP in
  /// CreateVolumeResponse.Volume.volume_context.
  /// This field is OPTIONAL and MUST match the volume_context of the
  /// volume identified by `volume_id`.
  @$pb.TagNumber(8)
  $pb.PbMap<$core.String, $core.String> get volumeContext => $_getMap(7);
}

class NodePublishVolumeResponse extends $pb.GeneratedMessage {
  factory NodePublishVolumeResponse() => NodePublishVolumeResponse._();

  NodePublishVolumeResponse._();

  factory NodePublishVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodePublishVolumeResponse()..mergeFromBuffer(data, registry);
  factory NodePublishVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodePublishVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodePublishVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodePublishVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePublishVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodePublishVolumeResponse copyWith(
          void Function(NodePublishVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as NodePublishVolumeResponse))
          as NodePublishVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodePublishVolumeResponse() / NodePublishVolumeResponse.new instead')
  static NodePublishVolumeResponse create() => NodePublishVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodePublishVolumeResponse._();
  @$core.override
  NodePublishVolumeResponse createEmptyInstance() =>
      NodePublishVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static NodePublishVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodePublishVolumeResponse>(
          NodePublishVolumeResponse.$_createMessage);
  static NodePublishVolumeResponse? _defaultInstance;
}

class NodeUnpublishVolumeRequest extends $pb.GeneratedMessage {
  factory NodeUnpublishVolumeRequest({
    $core.String? volumeId,
    $core.String? targetPath,
  }) {
    final result = NodeUnpublishVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (targetPath != null) result.targetPath = targetPath;
    return result;
  }

  NodeUnpublishVolumeRequest._();

  factory NodeUnpublishVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnpublishVolumeRequest()..mergeFromBuffer(data, registry);
  factory NodeUnpublishVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnpublishVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeUnpublishVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeUnpublishVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'targetPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnpublishVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnpublishVolumeRequest copyWith(
          void Function(NodeUnpublishVolumeRequest) updates) =>
      super.copyWith(
              (message) => updates(message as NodeUnpublishVolumeRequest))
          as NodeUnpublishVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeUnpublishVolumeRequest() / NodeUnpublishVolumeRequest.new instead')
  static NodeUnpublishVolumeRequest create() => NodeUnpublishVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeUnpublishVolumeRequest._();
  @$core.override
  NodeUnpublishVolumeRequest createEmptyInstance() =>
      NodeUnpublishVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeUnpublishVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeUnpublishVolumeRequest>(
          NodeUnpublishVolumeRequest.$_createMessage);
  static NodeUnpublishVolumeRequest? _defaultInstance;

  /// The ID of the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The path at which the volume was published. It MUST be an absolute
  /// path in the root filesystem of the process serving this request.
  /// The SP MUST delete the file or directory it created at this path.
  /// This is a REQUIRED field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(2)
  $core.String get targetPath => $_getSZ(1);
  @$pb.TagNumber(2)
  set targetPath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTargetPath() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetPath() => $_clearField(2);
}

class NodeUnpublishVolumeResponse extends $pb.GeneratedMessage {
  factory NodeUnpublishVolumeResponse() => NodeUnpublishVolumeResponse._();

  NodeUnpublishVolumeResponse._();

  factory NodeUnpublishVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnpublishVolumeResponse()..mergeFromBuffer(data, registry);
  factory NodeUnpublishVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeUnpublishVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeUnpublishVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeUnpublishVolumeResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnpublishVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeUnpublishVolumeResponse copyWith(
          void Function(NodeUnpublishVolumeResponse) updates) =>
      super.copyWith(
              (message) => updates(message as NodeUnpublishVolumeResponse))
          as NodeUnpublishVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeUnpublishVolumeResponse() / NodeUnpublishVolumeResponse.new instead')
  static NodeUnpublishVolumeResponse create() =>
      NodeUnpublishVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeUnpublishVolumeResponse._();
  @$core.override
  NodeUnpublishVolumeResponse createEmptyInstance() =>
      NodeUnpublishVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeUnpublishVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeUnpublishVolumeResponse>(
          NodeUnpublishVolumeResponse.$_createMessage);
  static NodeUnpublishVolumeResponse? _defaultInstance;
}

class NodeGetVolumeStatsRequest extends $pb.GeneratedMessage {
  factory NodeGetVolumeStatsRequest({
    $core.String? volumeId,
    $core.String? volumePath,
    $core.String? stagingTargetPath,
  }) {
    final result = NodeGetVolumeStatsRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (volumePath != null) result.volumePath = volumePath;
    if (stagingTargetPath != null) result.stagingTargetPath = stagingTargetPath;
    return result;
  }

  NodeGetVolumeStatsRequest._();

  factory NodeGetVolumeStatsRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetVolumeStatsRequest()..mergeFromBuffer(data, registry);
  factory NodeGetVolumeStatsRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetVolumeStatsRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetVolumeStatsRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetVolumeStatsRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'volumePath')
    ..aOS(3, _omitFieldNames ? '' : 'stagingTargetPath')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetVolumeStatsRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetVolumeStatsRequest copyWith(
          void Function(NodeGetVolumeStatsRequest) updates) =>
      super.copyWith((message) => updates(message as NodeGetVolumeStatsRequest))
          as NodeGetVolumeStatsRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeGetVolumeStatsRequest() / NodeGetVolumeStatsRequest.new instead')
  static NodeGetVolumeStatsRequest create() => NodeGetVolumeStatsRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeGetVolumeStatsRequest._();
  @$core.override
  NodeGetVolumeStatsRequest createEmptyInstance() =>
      NodeGetVolumeStatsRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeGetVolumeStatsRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetVolumeStatsRequest>(
          NodeGetVolumeStatsRequest.$_createMessage);
  static NodeGetVolumeStatsRequest? _defaultInstance;

  /// The ID of the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// It can be any valid path where volume was previously
  /// staged or published.
  /// It MUST be an absolute path in the root filesystem of
  /// the process serving this request.
  /// This is a REQUIRED field.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(2)
  $core.String get volumePath => $_getSZ(1);
  @$pb.TagNumber(2)
  set volumePath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumePath() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumePath() => $_clearField(2);

  /// The path where the volume is staged, if the plugin has the
  /// STAGE_UNSTAGE_VOLUME capability, otherwise empty.
  /// If not empty, it MUST be an absolute path in the root
  /// filesystem of the process serving this request.
  /// This field is OPTIONAL.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(3)
  $core.String get stagingTargetPath => $_getSZ(2);
  @$pb.TagNumber(3)
  set stagingTargetPath($core.String value) => $_setString(2, value);
  @$pb.TagNumber(3)
  $core.bool hasStagingTargetPath() => $_has(2);
  @$pb.TagNumber(3)
  void clearStagingTargetPath() => $_clearField(3);
}

class NodeGetVolumeStatsResponse extends $pb.GeneratedMessage {
  factory NodeGetVolumeStatsResponse({
    $core.Iterable<VolumeUsage>? usage,
    VolumeCondition? volumeCondition,
  }) {
    final result = NodeGetVolumeStatsResponse._();
    if (usage != null) result.usage.addAll(usage);
    if (volumeCondition != null) result.volumeCondition = volumeCondition;
    return result;
  }

  NodeGetVolumeStatsResponse._();

  factory NodeGetVolumeStatsResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetVolumeStatsResponse()..mergeFromBuffer(data, registry);
  factory NodeGetVolumeStatsResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetVolumeStatsResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetVolumeStatsResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetVolumeStatsResponse.$_createMessage)
    ..pPM<VolumeUsage>(1, _omitFieldNames ? '' : 'usage',
        subBuilder: VolumeUsage.$_createMessage)
    ..aOM<VolumeCondition>(2, _omitFieldNames ? '' : 'volumeCondition',
        subBuilder: VolumeCondition.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetVolumeStatsResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetVolumeStatsResponse copyWith(
          void Function(NodeGetVolumeStatsResponse) updates) =>
      super.copyWith(
              (message) => updates(message as NodeGetVolumeStatsResponse))
          as NodeGetVolumeStatsResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeGetVolumeStatsResponse() / NodeGetVolumeStatsResponse.new instead')
  static NodeGetVolumeStatsResponse create() => NodeGetVolumeStatsResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeGetVolumeStatsResponse._();
  @$core.override
  NodeGetVolumeStatsResponse createEmptyInstance() =>
      NodeGetVolumeStatsResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeGetVolumeStatsResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetVolumeStatsResponse>(
          NodeGetVolumeStatsResponse.$_createMessage);
  static NodeGetVolumeStatsResponse? _defaultInstance;

  /// This field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<VolumeUsage> get usage => $_getList(0);

  /// Information about the current condition of the volume.
  /// This field is OPTIONAL.
  /// This field MUST be specified if the VOLUME_CONDITION node
  /// capability is supported.
  @$pb.TagNumber(2)
  VolumeCondition get volumeCondition => $_getN(1);
  @$pb.TagNumber(2)
  set volumeCondition(VolumeCondition value) => $_setField(2, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumeCondition() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumeCondition() => $_clearField(2);
  @$pb.TagNumber(2)
  VolumeCondition ensureVolumeCondition() => $_ensure(1);
}

class VolumeUsage extends $pb.GeneratedMessage {
  factory VolumeUsage({
    $fixnum.Int64? available,
    $fixnum.Int64? total,
    $fixnum.Int64? used,
    VolumeUsage_Unit? unit,
  }) {
    final result = VolumeUsage._();
    if (available != null) result.available = available;
    if (total != null) result.total = total;
    if (used != null) result.used = used;
    if (unit != null) result.unit = unit;
    return result;
  }

  VolumeUsage._();

  factory VolumeUsage.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeUsage()..mergeFromBuffer(data, registry);
  factory VolumeUsage.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeUsage()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeUsage',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeUsage.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'available')
    ..aInt64(2, _omitFieldNames ? '' : 'total')
    ..aInt64(3, _omitFieldNames ? '' : 'used')
    ..aE<VolumeUsage_Unit>(4, _omitFieldNames ? '' : 'unit',
        enumValues: VolumeUsage_Unit.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeUsage clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeUsage copyWith(void Function(VolumeUsage) updates) =>
      super.copyWith((message) => updates(message as VolumeUsage))
          as VolumeUsage;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use VolumeUsage() / VolumeUsage.new instead')
  static VolumeUsage create() => VolumeUsage._();
  static $pb.GeneratedMessage $_createMessage() => VolumeUsage._();
  @$core.override
  VolumeUsage createEmptyInstance() => VolumeUsage._();
  @$core.pragma('dart2js:noInline')
  static VolumeUsage getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeUsage>(
          VolumeUsage.$_createMessage);
  static VolumeUsage? _defaultInstance;

  /// The available capacity in specified Unit. This field is OPTIONAL.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(1)
  $fixnum.Int64 get available => $_getI64(0);
  @$pb.TagNumber(1)
  set available($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAvailable() => $_has(0);
  @$pb.TagNumber(1)
  void clearAvailable() => $_clearField(1);

  /// The total capacity in specified Unit. This field is REQUIRED.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(2)
  $fixnum.Int64 get total => $_getI64(1);
  @$pb.TagNumber(2)
  set total($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasTotal() => $_has(1);
  @$pb.TagNumber(2)
  void clearTotal() => $_clearField(2);

  /// The used capacity in specified Unit. This field is OPTIONAL.
  /// The value of this field MUST NOT be negative.
  @$pb.TagNumber(3)
  $fixnum.Int64 get used => $_getI64(2);
  @$pb.TagNumber(3)
  set used($fixnum.Int64 value) => $_setInt64(2, value);
  @$pb.TagNumber(3)
  $core.bool hasUsed() => $_has(2);
  @$pb.TagNumber(3)
  void clearUsed() => $_clearField(3);

  /// Units by which values are measured. This field is REQUIRED.
  @$pb.TagNumber(4)
  VolumeUsage_Unit get unit => $_getN(3);
  @$pb.TagNumber(4)
  set unit(VolumeUsage_Unit value) => $_setField(4, value);
  @$pb.TagNumber(4)
  $core.bool hasUnit() => $_has(3);
  @$pb.TagNumber(4)
  void clearUnit() => $_clearField(4);
}

/// VolumeCondition represents the current condition of a volume.
class VolumeCondition extends $pb.GeneratedMessage {
  factory VolumeCondition({
    $core.bool? abnormal,
    $core.String? message,
  }) {
    final result = VolumeCondition._();
    if (abnormal != null) result.abnormal = abnormal;
    if (message != null) result.message = message;
    return result;
  }

  VolumeCondition._();

  factory VolumeCondition.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCondition()..mergeFromBuffer(data, registry);
  factory VolumeCondition.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeCondition()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeCondition',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeCondition.$_createMessage)
    ..aOB(1, _omitFieldNames ? '' : 'abnormal')
    ..aOS(2, _omitFieldNames ? '' : 'message')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCondition clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeCondition copyWith(void Function(VolumeCondition) updates) =>
      super.copyWith((message) => updates(message as VolumeCondition))
          as VolumeCondition;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use VolumeCondition() / VolumeCondition.new instead')
  static VolumeCondition create() => VolumeCondition._();
  static $pb.GeneratedMessage $_createMessage() => VolumeCondition._();
  @$core.override
  VolumeCondition createEmptyInstance() => VolumeCondition._();
  @$core.pragma('dart2js:noInline')
  static VolumeCondition getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VolumeCondition>(
          VolumeCondition.$_createMessage);
  static VolumeCondition? _defaultInstance;

  /// Normal volumes are available for use and operating optimally.
  /// An abnormal volume does not meet these criteria.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.bool get abnormal => $_getBF(0);
  @$pb.TagNumber(1)
  set abnormal($core.bool value) => $_setBool(0, value);
  @$pb.TagNumber(1)
  $core.bool hasAbnormal() => $_has(0);
  @$pb.TagNumber(1)
  void clearAbnormal() => $_clearField(1);

  /// The message describing the condition of the volume.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $core.String get message => $_getSZ(1);
  @$pb.TagNumber(2)
  set message($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMessage() => $_has(1);
  @$pb.TagNumber(2)
  void clearMessage() => $_clearField(2);
}

class NodeGetCapabilitiesRequest extends $pb.GeneratedMessage {
  factory NodeGetCapabilitiesRequest() => NodeGetCapabilitiesRequest._();

  NodeGetCapabilitiesRequest._();

  factory NodeGetCapabilitiesRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetCapabilitiesRequest()..mergeFromBuffer(data, registry);
  factory NodeGetCapabilitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetCapabilitiesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetCapabilitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetCapabilitiesRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetCapabilitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetCapabilitiesRequest copyWith(
          void Function(NodeGetCapabilitiesRequest) updates) =>
      super.copyWith(
              (message) => updates(message as NodeGetCapabilitiesRequest))
          as NodeGetCapabilitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeGetCapabilitiesRequest() / NodeGetCapabilitiesRequest.new instead')
  static NodeGetCapabilitiesRequest create() => NodeGetCapabilitiesRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeGetCapabilitiesRequest._();
  @$core.override
  NodeGetCapabilitiesRequest createEmptyInstance() =>
      NodeGetCapabilitiesRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeGetCapabilitiesRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetCapabilitiesRequest>(
          NodeGetCapabilitiesRequest.$_createMessage);
  static NodeGetCapabilitiesRequest? _defaultInstance;
}

class NodeGetCapabilitiesResponse extends $pb.GeneratedMessage {
  factory NodeGetCapabilitiesResponse({
    $core.Iterable<NodeServiceCapability>? capabilities,
  }) {
    final result = NodeGetCapabilitiesResponse._();
    if (capabilities != null) result.capabilities.addAll(capabilities);
    return result;
  }

  NodeGetCapabilitiesResponse._();

  factory NodeGetCapabilitiesResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetCapabilitiesResponse()..mergeFromBuffer(data, registry);
  factory NodeGetCapabilitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetCapabilitiesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetCapabilitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetCapabilitiesResponse.$_createMessage)
    ..pPM<NodeServiceCapability>(1, _omitFieldNames ? '' : 'capabilities',
        subBuilder: NodeServiceCapability.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetCapabilitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetCapabilitiesResponse copyWith(
          void Function(NodeGetCapabilitiesResponse) updates) =>
      super.copyWith(
              (message) => updates(message as NodeGetCapabilitiesResponse))
          as NodeGetCapabilitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeGetCapabilitiesResponse() / NodeGetCapabilitiesResponse.new instead')
  static NodeGetCapabilitiesResponse create() =>
      NodeGetCapabilitiesResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeGetCapabilitiesResponse._();
  @$core.override
  NodeGetCapabilitiesResponse createEmptyInstance() =>
      NodeGetCapabilitiesResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeGetCapabilitiesResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetCapabilitiesResponse>(
          NodeGetCapabilitiesResponse.$_createMessage);
  static NodeGetCapabilitiesResponse? _defaultInstance;

  /// All the capabilities that the node service supports. This field
  /// is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<NodeServiceCapability> get capabilities => $_getList(0);
}

class NodeServiceCapability_RPC extends $pb.GeneratedMessage {
  factory NodeServiceCapability_RPC({
    NodeServiceCapability_RPC_Type? type,
  }) {
    final result = NodeServiceCapability_RPC._();
    if (type != null) result.type = type;
    return result;
  }

  NodeServiceCapability_RPC._();

  factory NodeServiceCapability_RPC.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeServiceCapability_RPC()..mergeFromBuffer(data, registry);
  factory NodeServiceCapability_RPC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeServiceCapability_RPC()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeServiceCapability.RPC',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeServiceCapability_RPC.$_createMessage)
    ..aE<NodeServiceCapability_RPC_Type>(1, _omitFieldNames ? '' : 'type',
        enumValues: NodeServiceCapability_RPC_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeServiceCapability_RPC clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeServiceCapability_RPC copyWith(
          void Function(NodeServiceCapability_RPC) updates) =>
      super.copyWith((message) => updates(message as NodeServiceCapability_RPC))
          as NodeServiceCapability_RPC;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeServiceCapability_RPC() / NodeServiceCapability_RPC.new instead')
  static NodeServiceCapability_RPC create() => NodeServiceCapability_RPC._();
  static $pb.GeneratedMessage $_createMessage() =>
      NodeServiceCapability_RPC._();
  @$core.override
  NodeServiceCapability_RPC createEmptyInstance() =>
      NodeServiceCapability_RPC._();
  @$core.pragma('dart2js:noInline')
  static NodeServiceCapability_RPC getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeServiceCapability_RPC>(
          NodeServiceCapability_RPC.$_createMessage);
  static NodeServiceCapability_RPC? _defaultInstance;

  @$pb.TagNumber(1)
  NodeServiceCapability_RPC_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(NodeServiceCapability_RPC_Type value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

enum NodeServiceCapability_Type { rpc, notSet }

/// Specifies a capability of the node service.
class NodeServiceCapability extends $pb.GeneratedMessage {
  factory NodeServiceCapability({
    NodeServiceCapability_RPC? rpc,
  }) {
    final result = NodeServiceCapability._();
    if (rpc != null) result.rpc = rpc;
    return result;
  }

  NodeServiceCapability._();

  factory NodeServiceCapability.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeServiceCapability()..mergeFromBuffer(data, registry);
  factory NodeServiceCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeServiceCapability()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, NodeServiceCapability_Type>
      _NodeServiceCapability_TypeByTag = {
    1: NodeServiceCapability_Type.rpc,
    0: NodeServiceCapability_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeServiceCapability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeServiceCapability.$_createMessage)
    ..oo(0, [1])
    ..aOM<NodeServiceCapability_RPC>(1, _omitFieldNames ? '' : 'rpc',
        subBuilder: NodeServiceCapability_RPC.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeServiceCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeServiceCapability copyWith(
          void Function(NodeServiceCapability) updates) =>
      super.copyWith((message) => updates(message as NodeServiceCapability))
          as NodeServiceCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeServiceCapability() / NodeServiceCapability.new instead')
  static NodeServiceCapability create() => NodeServiceCapability._();
  static $pb.GeneratedMessage $_createMessage() => NodeServiceCapability._();
  @$core.override
  NodeServiceCapability createEmptyInstance() => NodeServiceCapability._();
  @$core.pragma('dart2js:noInline')
  static NodeServiceCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeServiceCapability>(
          NodeServiceCapability.$_createMessage);
  static NodeServiceCapability? _defaultInstance;

  @$pb.TagNumber(1)
  NodeServiceCapability_Type whichType() =>
      _NodeServiceCapability_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearType() => $_clearField($_whichOneof(0));

  /// RPC that the controller supports.
  @$pb.TagNumber(1)
  NodeServiceCapability_RPC get rpc => $_getN(0);
  @$pb.TagNumber(1)
  set rpc(NodeServiceCapability_RPC value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRpc() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpc() => $_clearField(1);
  @$pb.TagNumber(1)
  NodeServiceCapability_RPC ensureRpc() => $_ensure(0);
}

class NodeGetInfoRequest extends $pb.GeneratedMessage {
  factory NodeGetInfoRequest() => NodeGetInfoRequest._();

  NodeGetInfoRequest._();

  factory NodeGetInfoRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetInfoRequest()..mergeFromBuffer(data, registry);
  factory NodeGetInfoRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetInfoRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetInfoRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetInfoRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetInfoRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetInfoRequest copyWith(void Function(NodeGetInfoRequest) updates) =>
      super.copyWith((message) => updates(message as NodeGetInfoRequest))
          as NodeGetInfoRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated('Use NodeGetInfoRequest() / NodeGetInfoRequest.new instead')
  static NodeGetInfoRequest create() => NodeGetInfoRequest._();
  static $pb.GeneratedMessage $_createMessage() => NodeGetInfoRequest._();
  @$core.override
  NodeGetInfoRequest createEmptyInstance() => NodeGetInfoRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeGetInfoRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetInfoRequest>(
          NodeGetInfoRequest.$_createMessage);
  static NodeGetInfoRequest? _defaultInstance;
}

class NodeGetInfoResponse extends $pb.GeneratedMessage {
  factory NodeGetInfoResponse({
    $core.String? nodeId,
    $fixnum.Int64? maxVolumesPerNode,
    Topology? accessibleTopology,
  }) {
    final result = NodeGetInfoResponse._();
    if (nodeId != null) result.nodeId = nodeId;
    if (maxVolumesPerNode != null) result.maxVolumesPerNode = maxVolumesPerNode;
    if (accessibleTopology != null)
      result.accessibleTopology = accessibleTopology;
    return result;
  }

  NodeGetInfoResponse._();

  factory NodeGetInfoResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetInfoResponse()..mergeFromBuffer(data, registry);
  factory NodeGetInfoResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeGetInfoResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeGetInfoResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeGetInfoResponse.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'nodeId')
    ..aInt64(2, _omitFieldNames ? '' : 'maxVolumesPerNode')
    ..aOM<Topology>(3, _omitFieldNames ? '' : 'accessibleTopology',
        subBuilder: Topology.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetInfoResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeGetInfoResponse copyWith(void Function(NodeGetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as NodeGetInfoResponse))
          as NodeGetInfoResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use NodeGetInfoResponse() / NodeGetInfoResponse.new instead')
  static NodeGetInfoResponse create() => NodeGetInfoResponse._();
  static $pb.GeneratedMessage $_createMessage() => NodeGetInfoResponse._();
  @$core.override
  NodeGetInfoResponse createEmptyInstance() => NodeGetInfoResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeGetInfoResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeGetInfoResponse>(
          NodeGetInfoResponse.$_createMessage);
  static NodeGetInfoResponse? _defaultInstance;

  /// The identifier of the node as understood by the SP.
  /// This field is REQUIRED.
  /// This field MUST contain enough information to uniquely identify
  /// this specific node vs all other nodes supported by this plugin.
  /// This field SHALL be used by the CO in subsequent calls, including
  /// `ControllerPublishVolume`, to refer to this node.
  /// The SP is NOT responsible for global uniqueness of node_id across
  /// multiple SPs.
  /// This field overrides the general CSI size limit.
  /// The size of this field SHALL NOT exceed 256 bytes. The general
  /// CSI size limit, 128 byte, is RECOMMENDED for best backwards
  /// compatibility.
  @$pb.TagNumber(1)
  $core.String get nodeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nodeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => $_clearField(1);

  /// Maximum number of volumes that controller can publish to the node.
  /// If value is not set or zero CO SHALL decide how many volumes of
  /// this type can be published by the controller to the node. The
  /// plugin MUST NOT set negative values here.
  /// This field is OPTIONAL.
  @$pb.TagNumber(2)
  $fixnum.Int64 get maxVolumesPerNode => $_getI64(1);
  @$pb.TagNumber(2)
  set maxVolumesPerNode($fixnum.Int64 value) => $_setInt64(1, value);
  @$pb.TagNumber(2)
  $core.bool hasMaxVolumesPerNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxVolumesPerNode() => $_clearField(2);

  /// Specifies where (regions, zones, racks, etc.) the node is
  /// accessible from.
  /// A plugin that returns this field MUST also set the
  /// VOLUME_ACCESSIBILITY_CONSTRAINTS plugin capability.
  /// COs MAY use this information along with the topology information
  /// returned in CreateVolumeResponse to ensure that a given volume is
  /// accessible from a given node when scheduling workloads.
  /// This field is OPTIONAL. If it is not specified, the CO MAY assume
  /// the node is not subject to any topological constraint, and MAY
  /// schedule workloads that reference any volume V, such that there are
  /// no topological constraints declared for V.
  ///
  /// Example 1:
  ///   accessible_topology =
  ///     {"region": "R1", "zone": "Z2"}
  /// Indicates the node exists within the "region" "R1" and the "zone"
  /// "Z2".
  @$pb.TagNumber(3)
  Topology get accessibleTopology => $_getN(2);
  @$pb.TagNumber(3)
  set accessibleTopology(Topology value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasAccessibleTopology() => $_has(2);
  @$pb.TagNumber(3)
  void clearAccessibleTopology() => $_clearField(3);
  @$pb.TagNumber(3)
  Topology ensureAccessibleTopology() => $_ensure(2);
}

class NodeExpandVolumeRequest extends $pb.GeneratedMessage {
  factory NodeExpandVolumeRequest({
    $core.String? volumeId,
    $core.String? volumePath,
    CapacityRange? capacityRange,
    $core.String? stagingTargetPath,
    VolumeCapability? volumeCapability,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = NodeExpandVolumeRequest._();
    if (volumeId != null) result.volumeId = volumeId;
    if (volumePath != null) result.volumePath = volumePath;
    if (capacityRange != null) result.capacityRange = capacityRange;
    if (stagingTargetPath != null) result.stagingTargetPath = stagingTargetPath;
    if (volumeCapability != null) result.volumeCapability = volumeCapability;
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  NodeExpandVolumeRequest._();

  factory NodeExpandVolumeRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeExpandVolumeRequest()..mergeFromBuffer(data, registry);
  factory NodeExpandVolumeRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeExpandVolumeRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeExpandVolumeRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeExpandVolumeRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'volumeId')
    ..aOS(2, _omitFieldNames ? '' : 'volumePath')
    ..aOM<CapacityRange>(3, _omitFieldNames ? '' : 'capacityRange',
        subBuilder: CapacityRange.$_createMessage)
    ..aOS(4, _omitFieldNames ? '' : 'stagingTargetPath')
    ..aOM<VolumeCapability>(5, _omitFieldNames ? '' : 'volumeCapability',
        subBuilder: VolumeCapability.$_createMessage)
    ..m<$core.String, $core.String>(6, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'NodeExpandVolumeRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeExpandVolumeRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeExpandVolumeRequest copyWith(
          void Function(NodeExpandVolumeRequest) updates) =>
      super.copyWith((message) => updates(message as NodeExpandVolumeRequest))
          as NodeExpandVolumeRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeExpandVolumeRequest() / NodeExpandVolumeRequest.new instead')
  static NodeExpandVolumeRequest create() => NodeExpandVolumeRequest._();
  static $pb.GeneratedMessage $_createMessage() => NodeExpandVolumeRequest._();
  @$core.override
  NodeExpandVolumeRequest createEmptyInstance() => NodeExpandVolumeRequest._();
  @$core.pragma('dart2js:noInline')
  static NodeExpandVolumeRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeExpandVolumeRequest>(
          NodeExpandVolumeRequest.$_createMessage);
  static NodeExpandVolumeRequest? _defaultInstance;

  /// The ID of the volume. This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get volumeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set volumeId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasVolumeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearVolumeId() => $_clearField(1);

  /// The path on which volume is available. This field is REQUIRED.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(2)
  $core.String get volumePath => $_getSZ(1);
  @$pb.TagNumber(2)
  set volumePath($core.String value) => $_setString(1, value);
  @$pb.TagNumber(2)
  $core.bool hasVolumePath() => $_has(1);
  @$pb.TagNumber(2)
  void clearVolumePath() => $_clearField(2);

  /// This allows CO to specify the capacity requirements of the volume
  /// after expansion. If capacity_range is omitted then a plugin MAY
  /// inspect the file system of the volume to determine the maximum
  /// capacity to which the volume can be expanded. In such cases a
  /// plugin MAY expand the volume to its maximum capacity.
  /// This field is OPTIONAL.
  @$pb.TagNumber(3)
  CapacityRange get capacityRange => $_getN(2);
  @$pb.TagNumber(3)
  set capacityRange(CapacityRange value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCapacityRange() => $_has(2);
  @$pb.TagNumber(3)
  void clearCapacityRange() => $_clearField(3);
  @$pb.TagNumber(3)
  CapacityRange ensureCapacityRange() => $_ensure(2);

  /// The path where the volume is staged, if the plugin has the
  /// STAGE_UNSTAGE_VOLUME capability, otherwise empty.
  /// If not empty, it MUST be an absolute path in the root
  /// filesystem of the process serving this request.
  /// This field is OPTIONAL.
  /// This field overrides the general CSI size limit.
  /// SP SHOULD support the maximum path length allowed by the operating
  /// system/filesystem, but, at a minimum, SP MUST accept a max path
  /// length of at least 128 bytes.
  @$pb.TagNumber(4)
  $core.String get stagingTargetPath => $_getSZ(3);
  @$pb.TagNumber(4)
  set stagingTargetPath($core.String value) => $_setString(3, value);
  @$pb.TagNumber(4)
  $core.bool hasStagingTargetPath() => $_has(3);
  @$pb.TagNumber(4)
  void clearStagingTargetPath() => $_clearField(4);

  /// Volume capability describing how the CO intends to use this volume.
  /// This allows SP to determine if volume is being used as a block
  /// device or mounted file system. For example - if volume is being
  /// used as a block device the SP MAY choose to skip expanding the
  /// filesystem in NodeExpandVolume implementation but still perform
  /// rest of the housekeeping needed for expanding the volume. If
  /// volume_capability is omitted the SP MAY determine
  /// access_type from given volume_path for the volume and perform
  /// node expansion. This is an OPTIONAL field.
  @$pb.TagNumber(5)
  VolumeCapability get volumeCapability => $_getN(4);
  @$pb.TagNumber(5)
  set volumeCapability(VolumeCapability value) => $_setField(5, value);
  @$pb.TagNumber(5)
  $core.bool hasVolumeCapability() => $_has(4);
  @$pb.TagNumber(5)
  void clearVolumeCapability() => $_clearField(5);
  @$pb.TagNumber(5)
  VolumeCapability ensureVolumeCapability() => $_ensure(4);

  /// Secrets required by plugin to complete node expand volume request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  @$pb.TagNumber(6)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(5);
}

class NodeExpandVolumeResponse extends $pb.GeneratedMessage {
  factory NodeExpandVolumeResponse({
    $fixnum.Int64? capacityBytes,
  }) {
    final result = NodeExpandVolumeResponse._();
    if (capacityBytes != null) result.capacityBytes = capacityBytes;
    return result;
  }

  NodeExpandVolumeResponse._();

  factory NodeExpandVolumeResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeExpandVolumeResponse()..mergeFromBuffer(data, registry);
  factory NodeExpandVolumeResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      NodeExpandVolumeResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'NodeExpandVolumeResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: NodeExpandVolumeResponse.$_createMessage)
    ..aInt64(1, _omitFieldNames ? '' : 'capacityBytes')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeExpandVolumeResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  NodeExpandVolumeResponse copyWith(
          void Function(NodeExpandVolumeResponse) updates) =>
      super.copyWith((message) => updates(message as NodeExpandVolumeResponse))
          as NodeExpandVolumeResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use NodeExpandVolumeResponse() / NodeExpandVolumeResponse.new instead')
  static NodeExpandVolumeResponse create() => NodeExpandVolumeResponse._();
  static $pb.GeneratedMessage $_createMessage() => NodeExpandVolumeResponse._();
  @$core.override
  NodeExpandVolumeResponse createEmptyInstance() =>
      NodeExpandVolumeResponse._();
  @$core.pragma('dart2js:noInline')
  static NodeExpandVolumeResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<NodeExpandVolumeResponse>(
          NodeExpandVolumeResponse.$_createMessage);
  static NodeExpandVolumeResponse? _defaultInstance;

  /// The capacity of the volume in bytes. This field is OPTIONAL.
  @$pb.TagNumber(1)
  $fixnum.Int64 get capacityBytes => $_getI64(0);
  @$pb.TagNumber(1)
  set capacityBytes($fixnum.Int64 value) => $_setInt64(0, value);
  @$pb.TagNumber(1)
  $core.bool hasCapacityBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearCapacityBytes() => $_clearField(1);
}

class GroupControllerGetCapabilitiesRequest extends $pb.GeneratedMessage {
  factory GroupControllerGetCapabilitiesRequest() =>
      GroupControllerGetCapabilitiesRequest._();

  GroupControllerGetCapabilitiesRequest._();

  factory GroupControllerGetCapabilitiesRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerGetCapabilitiesRequest()..mergeFromBuffer(data, registry);
  factory GroupControllerGetCapabilitiesRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerGetCapabilitiesRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupControllerGetCapabilitiesRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance:
          GroupControllerGetCapabilitiesRequest.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerGetCapabilitiesRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerGetCapabilitiesRequest copyWith(
          void Function(GroupControllerGetCapabilitiesRequest) updates) =>
      super.copyWith((message) =>
              updates(message as GroupControllerGetCapabilitiesRequest))
          as GroupControllerGetCapabilitiesRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GroupControllerGetCapabilitiesRequest() / GroupControllerGetCapabilitiesRequest.new instead')
  static GroupControllerGetCapabilitiesRequest create() =>
      GroupControllerGetCapabilitiesRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      GroupControllerGetCapabilitiesRequest._();
  @$core.override
  GroupControllerGetCapabilitiesRequest createEmptyInstance() =>
      GroupControllerGetCapabilitiesRequest._();
  @$core.pragma('dart2js:noInline')
  static GroupControllerGetCapabilitiesRequest getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              GroupControllerGetCapabilitiesRequest>(
          GroupControllerGetCapabilitiesRequest.$_createMessage);
  static GroupControllerGetCapabilitiesRequest? _defaultInstance;
}

class GroupControllerGetCapabilitiesResponse extends $pb.GeneratedMessage {
  factory GroupControllerGetCapabilitiesResponse({
    $core.Iterable<GroupControllerServiceCapability>? capabilities,
  }) {
    final result = GroupControllerGetCapabilitiesResponse._();
    if (capabilities != null) result.capabilities.addAll(capabilities);
    return result;
  }

  GroupControllerGetCapabilitiesResponse._();

  factory GroupControllerGetCapabilitiesResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerGetCapabilitiesResponse()..mergeFromBuffer(data, registry);
  factory GroupControllerGetCapabilitiesResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerGetCapabilitiesResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupControllerGetCapabilitiesResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance:
          GroupControllerGetCapabilitiesResponse.$_createMessage)
    ..pPM<GroupControllerServiceCapability>(
        1, _omitFieldNames ? '' : 'capabilities',
        subBuilder: GroupControllerServiceCapability.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerGetCapabilitiesResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerGetCapabilitiesResponse copyWith(
          void Function(GroupControllerGetCapabilitiesResponse) updates) =>
      super.copyWith((message) =>
              updates(message as GroupControllerGetCapabilitiesResponse))
          as GroupControllerGetCapabilitiesResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GroupControllerGetCapabilitiesResponse() / GroupControllerGetCapabilitiesResponse.new instead')
  static GroupControllerGetCapabilitiesResponse create() =>
      GroupControllerGetCapabilitiesResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      GroupControllerGetCapabilitiesResponse._();
  @$core.override
  GroupControllerGetCapabilitiesResponse createEmptyInstance() =>
      GroupControllerGetCapabilitiesResponse._();
  @$core.pragma('dart2js:noInline')
  static GroupControllerGetCapabilitiesResponse getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              GroupControllerGetCapabilitiesResponse>(
          GroupControllerGetCapabilitiesResponse.$_createMessage);
  static GroupControllerGetCapabilitiesResponse? _defaultInstance;

  /// All the capabilities that the group controller service supports.
  /// This field is OPTIONAL.
  @$pb.TagNumber(1)
  $pb.PbList<GroupControllerServiceCapability> get capabilities => $_getList(0);
}

class GroupControllerServiceCapability_RPC extends $pb.GeneratedMessage {
  factory GroupControllerServiceCapability_RPC({
    GroupControllerServiceCapability_RPC_Type? type,
  }) {
    final result = GroupControllerServiceCapability_RPC._();
    if (type != null) result.type = type;
    return result;
  }

  GroupControllerServiceCapability_RPC._();

  factory GroupControllerServiceCapability_RPC.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerServiceCapability_RPC()..mergeFromBuffer(data, registry);
  factory GroupControllerServiceCapability_RPC.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerServiceCapability_RPC()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupControllerServiceCapability.RPC',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GroupControllerServiceCapability_RPC.$_createMessage)
    ..aE<GroupControllerServiceCapability_RPC_Type>(
        1, _omitFieldNames ? '' : 'type',
        enumValues: GroupControllerServiceCapability_RPC_Type.values)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerServiceCapability_RPC clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerServiceCapability_RPC copyWith(
          void Function(GroupControllerServiceCapability_RPC) updates) =>
      super.copyWith((message) =>
              updates(message as GroupControllerServiceCapability_RPC))
          as GroupControllerServiceCapability_RPC;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GroupControllerServiceCapability_RPC() / GroupControllerServiceCapability_RPC.new instead')
  static GroupControllerServiceCapability_RPC create() =>
      GroupControllerServiceCapability_RPC._();
  static $pb.GeneratedMessage $_createMessage() =>
      GroupControllerServiceCapability_RPC._();
  @$core.override
  GroupControllerServiceCapability_RPC createEmptyInstance() =>
      GroupControllerServiceCapability_RPC._();
  @$core.pragma('dart2js:noInline')
  static GroupControllerServiceCapability_RPC getDefault() =>
      _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<
              GroupControllerServiceCapability_RPC>(
          GroupControllerServiceCapability_RPC.$_createMessage);
  static GroupControllerServiceCapability_RPC? _defaultInstance;

  @$pb.TagNumber(1)
  GroupControllerServiceCapability_RPC_Type get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(GroupControllerServiceCapability_RPC_Type value) =>
      $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => $_clearField(1);
}

enum GroupControllerServiceCapability_Type { rpc, notSet }

/// Specifies a capability of the group controller service.
class GroupControllerServiceCapability extends $pb.GeneratedMessage {
  factory GroupControllerServiceCapability({
    GroupControllerServiceCapability_RPC? rpc,
  }) {
    final result = GroupControllerServiceCapability._();
    if (rpc != null) result.rpc = rpc;
    return result;
  }

  GroupControllerServiceCapability._();

  factory GroupControllerServiceCapability.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerServiceCapability()..mergeFromBuffer(data, registry);
  factory GroupControllerServiceCapability.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GroupControllerServiceCapability()..mergeFromJson(json, registry);

  static const $core.Map<$core.int, GroupControllerServiceCapability_Type>
      _GroupControllerServiceCapability_TypeByTag = {
    1: GroupControllerServiceCapability_Type.rpc,
    0: GroupControllerServiceCapability_Type.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GroupControllerServiceCapability',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GroupControllerServiceCapability.$_createMessage)
    ..oo(0, [1])
    ..aOM<GroupControllerServiceCapability_RPC>(1, _omitFieldNames ? '' : 'rpc',
        subBuilder: GroupControllerServiceCapability_RPC.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerServiceCapability clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GroupControllerServiceCapability copyWith(
          void Function(GroupControllerServiceCapability) updates) =>
      super.copyWith(
              (message) => updates(message as GroupControllerServiceCapability))
          as GroupControllerServiceCapability;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GroupControllerServiceCapability() / GroupControllerServiceCapability.new instead')
  static GroupControllerServiceCapability create() =>
      GroupControllerServiceCapability._();
  static $pb.GeneratedMessage $_createMessage() =>
      GroupControllerServiceCapability._();
  @$core.override
  GroupControllerServiceCapability createEmptyInstance() =>
      GroupControllerServiceCapability._();
  @$core.pragma('dart2js:noInline')
  static GroupControllerServiceCapability getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GroupControllerServiceCapability>(
          GroupControllerServiceCapability.$_createMessage);
  static GroupControllerServiceCapability? _defaultInstance;

  @$pb.TagNumber(1)
  GroupControllerServiceCapability_Type whichType() =>
      _GroupControllerServiceCapability_TypeByTag[$_whichOneof(0)]!;
  @$pb.TagNumber(1)
  void clearType() => $_clearField($_whichOneof(0));

  /// RPC that the controller supports.
  @$pb.TagNumber(1)
  GroupControllerServiceCapability_RPC get rpc => $_getN(0);
  @$pb.TagNumber(1)
  set rpc(GroupControllerServiceCapability_RPC value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasRpc() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpc() => $_clearField(1);
  @$pb.TagNumber(1)
  GroupControllerServiceCapability_RPC ensureRpc() => $_ensure(0);
}

class CreateVolumeGroupSnapshotRequest extends $pb.GeneratedMessage {
  factory CreateVolumeGroupSnapshotRequest({
    $core.String? name,
    $core.Iterable<$core.String>? sourceVolumeIds,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? parameters,
  }) {
    final result = CreateVolumeGroupSnapshotRequest._();
    if (name != null) result.name = name;
    if (sourceVolumeIds != null) result.sourceVolumeIds.addAll(sourceVolumeIds);
    if (secrets != null) result.secrets.addEntries(secrets);
    if (parameters != null) result.parameters.addEntries(parameters);
    return result;
  }

  CreateVolumeGroupSnapshotRequest._();

  factory CreateVolumeGroupSnapshotRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeGroupSnapshotRequest()..mergeFromBuffer(data, registry);
  factory CreateVolumeGroupSnapshotRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeGroupSnapshotRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVolumeGroupSnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateVolumeGroupSnapshotRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'name')
    ..pPS(2, _omitFieldNames ? '' : 'sourceVolumeIds')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'CreateVolumeGroupSnapshotRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..m<$core.String, $core.String>(4, _omitFieldNames ? '' : 'parameters',
        entryClassName: 'CreateVolumeGroupSnapshotRequest.ParametersEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeGroupSnapshotRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeGroupSnapshotRequest copyWith(
          void Function(CreateVolumeGroupSnapshotRequest) updates) =>
      super.copyWith(
              (message) => updates(message as CreateVolumeGroupSnapshotRequest))
          as CreateVolumeGroupSnapshotRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CreateVolumeGroupSnapshotRequest() / CreateVolumeGroupSnapshotRequest.new instead')
  static CreateVolumeGroupSnapshotRequest create() =>
      CreateVolumeGroupSnapshotRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      CreateVolumeGroupSnapshotRequest._();
  @$core.override
  CreateVolumeGroupSnapshotRequest createEmptyInstance() =>
      CreateVolumeGroupSnapshotRequest._();
  @$core.pragma('dart2js:noInline')
  static CreateVolumeGroupSnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVolumeGroupSnapshotRequest>(
          CreateVolumeGroupSnapshotRequest.$_createMessage);
  static CreateVolumeGroupSnapshotRequest? _defaultInstance;

  /// The suggested name for the group snapshot. This field is REQUIRED
  /// for idempotency.
  /// Any Unicode string that conforms to the length limit is allowed
  /// except those containing the following banned characters:
  /// U+0000-U+0008, U+000B, U+000C, U+000E-U+001F, U+007F-U+009F.
  /// (These are control characters other than commonly used whitespace.)
  @$pb.TagNumber(1)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(1)
  set name($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(1)
  void clearName() => $_clearField(1);

  /// volume IDs of the source volumes to be snapshotted together.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get sourceVolumeIds => $_getList(1);

  /// Secrets required by plugin to complete
  /// ControllerCreateVolumeGroupSnapshot request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  /// The secrets provided in this field SHOULD be the same for
  /// all group snapshot operations on the same group snapshot.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);

  /// Plugin specific parameters passed in as opaque key-value pairs.
  /// This field is OPTIONAL. The Plugin is responsible for parsing and
  /// validating these parameters. COs will treat these as opaque.
  @$pb.TagNumber(4)
  $pb.PbMap<$core.String, $core.String> get parameters => $_getMap(3);
}

class CreateVolumeGroupSnapshotResponse extends $pb.GeneratedMessage {
  factory CreateVolumeGroupSnapshotResponse({
    VolumeGroupSnapshot? groupSnapshot,
  }) {
    final result = CreateVolumeGroupSnapshotResponse._();
    if (groupSnapshot != null) result.groupSnapshot = groupSnapshot;
    return result;
  }

  CreateVolumeGroupSnapshotResponse._();

  factory CreateVolumeGroupSnapshotResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeGroupSnapshotResponse()..mergeFromBuffer(data, registry);
  factory CreateVolumeGroupSnapshotResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      CreateVolumeGroupSnapshotResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'CreateVolumeGroupSnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: CreateVolumeGroupSnapshotResponse.$_createMessage)
    ..aOM<VolumeGroupSnapshot>(1, _omitFieldNames ? '' : 'groupSnapshot',
        subBuilder: VolumeGroupSnapshot.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeGroupSnapshotResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  CreateVolumeGroupSnapshotResponse copyWith(
          void Function(CreateVolumeGroupSnapshotResponse) updates) =>
      super.copyWith((message) =>
              updates(message as CreateVolumeGroupSnapshotResponse))
          as CreateVolumeGroupSnapshotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use CreateVolumeGroupSnapshotResponse() / CreateVolumeGroupSnapshotResponse.new instead')
  static CreateVolumeGroupSnapshotResponse create() =>
      CreateVolumeGroupSnapshotResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      CreateVolumeGroupSnapshotResponse._();
  @$core.override
  CreateVolumeGroupSnapshotResponse createEmptyInstance() =>
      CreateVolumeGroupSnapshotResponse._();
  @$core.pragma('dart2js:noInline')
  static CreateVolumeGroupSnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<CreateVolumeGroupSnapshotResponse>(
          CreateVolumeGroupSnapshotResponse.$_createMessage);
  static CreateVolumeGroupSnapshotResponse? _defaultInstance;

  /// Contains all attributes of the newly created group snapshot.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  VolumeGroupSnapshot get groupSnapshot => $_getN(0);
  @$pb.TagNumber(1)
  set groupSnapshot(VolumeGroupSnapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupSnapshot() => $_clearField(1);
  @$pb.TagNumber(1)
  VolumeGroupSnapshot ensureGroupSnapshot() => $_ensure(0);
}

class VolumeGroupSnapshot extends $pb.GeneratedMessage {
  factory VolumeGroupSnapshot({
    $core.String? groupSnapshotId,
    $core.Iterable<Snapshot>? snapshots,
    $2.Timestamp? creationTime,
    $core.bool? readyToUse,
  }) {
    final result = VolumeGroupSnapshot._();
    if (groupSnapshotId != null) result.groupSnapshotId = groupSnapshotId;
    if (snapshots != null) result.snapshots.addAll(snapshots);
    if (creationTime != null) result.creationTime = creationTime;
    if (readyToUse != null) result.readyToUse = readyToUse;
    return result;
  }

  VolumeGroupSnapshot._();

  factory VolumeGroupSnapshot.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeGroupSnapshot()..mergeFromBuffer(data, registry);
  factory VolumeGroupSnapshot.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      VolumeGroupSnapshot()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'VolumeGroupSnapshot',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: VolumeGroupSnapshot.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'groupSnapshotId')
    ..pPM<Snapshot>(2, _omitFieldNames ? '' : 'snapshots',
        subBuilder: Snapshot.$_createMessage)
    ..aOM<$2.Timestamp>(3, _omitFieldNames ? '' : 'creationTime',
        subBuilder: $2.Timestamp.$_createMessage)
    ..aOB(4, _omitFieldNames ? '' : 'readyToUse')
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeGroupSnapshot clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  VolumeGroupSnapshot copyWith(void Function(VolumeGroupSnapshot) updates) =>
      super.copyWith((message) => updates(message as VolumeGroupSnapshot))
          as VolumeGroupSnapshot;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core
      .Deprecated('Use VolumeGroupSnapshot() / VolumeGroupSnapshot.new instead')
  static VolumeGroupSnapshot create() => VolumeGroupSnapshot._();
  static $pb.GeneratedMessage $_createMessage() => VolumeGroupSnapshot._();
  @$core.override
  VolumeGroupSnapshot createEmptyInstance() => VolumeGroupSnapshot._();
  @$core.pragma('dart2js:noInline')
  static VolumeGroupSnapshot getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<VolumeGroupSnapshot>(
          VolumeGroupSnapshot.$_createMessage);
  static VolumeGroupSnapshot? _defaultInstance;

  /// The identifier for this group snapshot, generated by the plugin.
  /// This field MUST contain enough information to uniquely identify
  /// this specific snapshot vs all other group snapshots supported by
  /// this plugin.
  /// This field SHALL be used by the CO in subsequent calls to refer to
  /// this group snapshot.
  /// The SP is NOT responsible for global uniqueness of
  /// group_snapshot_id across multiple SPs.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get groupSnapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupSnapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupSnapshotId() => $_clearField(1);

  /// A list of snapshots belonging to this group.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $pb.PbList<Snapshot> get snapshots => $_getList(1);

  /// Timestamp of when the volume group snapshot was taken.
  /// This field is REQUIRED.
  @$pb.TagNumber(3)
  $2.Timestamp get creationTime => $_getN(2);
  @$pb.TagNumber(3)
  set creationTime($2.Timestamp value) => $_setField(3, value);
  @$pb.TagNumber(3)
  $core.bool hasCreationTime() => $_has(2);
  @$pb.TagNumber(3)
  void clearCreationTime() => $_clearField(3);
  @$pb.TagNumber(3)
  $2.Timestamp ensureCreationTime() => $_ensure(2);

  /// Indicates if all individual snapshots in the group snapshot
  /// are ready to use as a `volume_content_source` in a
  /// `CreateVolumeRequest`. The default value is false.
  /// If any snapshot in the list of snapshots in this message have
  /// ready_to_use set to false, the SP MUST set this field to false.
  /// If all of the snapshots in the list of snapshots in this message
  /// have ready_to_use set to true, the SP SHOULD set this field to
  /// true.
  /// This field is REQUIRED.
  @$pb.TagNumber(4)
  $core.bool get readyToUse => $_getBF(3);
  @$pb.TagNumber(4)
  set readyToUse($core.bool value) => $_setBool(3, value);
  @$pb.TagNumber(4)
  $core.bool hasReadyToUse() => $_has(3);
  @$pb.TagNumber(4)
  void clearReadyToUse() => $_clearField(4);
}

class DeleteVolumeGroupSnapshotRequest extends $pb.GeneratedMessage {
  factory DeleteVolumeGroupSnapshotRequest({
    $core.String? groupSnapshotId,
    $core.Iterable<$core.String>? snapshotIds,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = DeleteVolumeGroupSnapshotRequest._();
    if (groupSnapshotId != null) result.groupSnapshotId = groupSnapshotId;
    if (snapshotIds != null) result.snapshotIds.addAll(snapshotIds);
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  DeleteVolumeGroupSnapshotRequest._();

  factory DeleteVolumeGroupSnapshotRequest.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeGroupSnapshotRequest()..mergeFromBuffer(data, registry);
  factory DeleteVolumeGroupSnapshotRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeGroupSnapshotRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVolumeGroupSnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteVolumeGroupSnapshotRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'groupSnapshotId')
    ..pPS(2, _omitFieldNames ? '' : 'snapshotIds')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'DeleteVolumeGroupSnapshotRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeGroupSnapshotRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeGroupSnapshotRequest copyWith(
          void Function(DeleteVolumeGroupSnapshotRequest) updates) =>
      super.copyWith(
              (message) => updates(message as DeleteVolumeGroupSnapshotRequest))
          as DeleteVolumeGroupSnapshotRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use DeleteVolumeGroupSnapshotRequest() / DeleteVolumeGroupSnapshotRequest.new instead')
  static DeleteVolumeGroupSnapshotRequest create() =>
      DeleteVolumeGroupSnapshotRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      DeleteVolumeGroupSnapshotRequest._();
  @$core.override
  DeleteVolumeGroupSnapshotRequest createEmptyInstance() =>
      DeleteVolumeGroupSnapshotRequest._();
  @$core.pragma('dart2js:noInline')
  static DeleteVolumeGroupSnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVolumeGroupSnapshotRequest>(
          DeleteVolumeGroupSnapshotRequest.$_createMessage);
  static DeleteVolumeGroupSnapshotRequest? _defaultInstance;

  /// The ID of the group snapshot to be deleted.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get groupSnapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupSnapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupSnapshotId() => $_clearField(1);

  /// A list of snapshot IDs that are part of this group snapshot.
  /// If SP does not need to rely on this field to delete the snapshots
  /// in the group, it SHOULD check this field and report an error
  /// if it has the ability to detect a mismatch.
  /// Some SPs require this list to delete the snapshots in the group.
  /// If SP needs to use this field to delete the snapshots in the
  /// group, it MUST report an error if it has the ability to detect
  /// a mismatch.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get snapshotIds => $_getList(1);

  /// Secrets required by plugin to complete group snapshot deletion
  /// request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  /// The secrets provided in this field SHOULD be the same for
  /// all group snapshot operations on the same group snapshot.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);
}

class DeleteVolumeGroupSnapshotResponse extends $pb.GeneratedMessage {
  factory DeleteVolumeGroupSnapshotResponse() =>
      DeleteVolumeGroupSnapshotResponse._();

  DeleteVolumeGroupSnapshotResponse._();

  factory DeleteVolumeGroupSnapshotResponse.fromBuffer(
          $core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeGroupSnapshotResponse()..mergeFromBuffer(data, registry);
  factory DeleteVolumeGroupSnapshotResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      DeleteVolumeGroupSnapshotResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'DeleteVolumeGroupSnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: DeleteVolumeGroupSnapshotResponse.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeGroupSnapshotResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  DeleteVolumeGroupSnapshotResponse copyWith(
          void Function(DeleteVolumeGroupSnapshotResponse) updates) =>
      super.copyWith((message) =>
              updates(message as DeleteVolumeGroupSnapshotResponse))
          as DeleteVolumeGroupSnapshotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use DeleteVolumeGroupSnapshotResponse() / DeleteVolumeGroupSnapshotResponse.new instead')
  static DeleteVolumeGroupSnapshotResponse create() =>
      DeleteVolumeGroupSnapshotResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      DeleteVolumeGroupSnapshotResponse._();
  @$core.override
  DeleteVolumeGroupSnapshotResponse createEmptyInstance() =>
      DeleteVolumeGroupSnapshotResponse._();
  @$core.pragma('dart2js:noInline')
  static DeleteVolumeGroupSnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<DeleteVolumeGroupSnapshotResponse>(
          DeleteVolumeGroupSnapshotResponse.$_createMessage);
  static DeleteVolumeGroupSnapshotResponse? _defaultInstance;
}

class GetVolumeGroupSnapshotRequest extends $pb.GeneratedMessage {
  factory GetVolumeGroupSnapshotRequest({
    $core.String? groupSnapshotId,
    $core.Iterable<$core.String>? snapshotIds,
    $core.Iterable<$core.MapEntry<$core.String, $core.String>>? secrets,
  }) {
    final result = GetVolumeGroupSnapshotRequest._();
    if (groupSnapshotId != null) result.groupSnapshotId = groupSnapshotId;
    if (snapshotIds != null) result.snapshotIds.addAll(snapshotIds);
    if (secrets != null) result.secrets.addEntries(secrets);
    return result;
  }

  GetVolumeGroupSnapshotRequest._();

  factory GetVolumeGroupSnapshotRequest.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetVolumeGroupSnapshotRequest()..mergeFromBuffer(data, registry);
  factory GetVolumeGroupSnapshotRequest.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetVolumeGroupSnapshotRequest()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetVolumeGroupSnapshotRequest',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetVolumeGroupSnapshotRequest.$_createMessage)
    ..aOS(1, _omitFieldNames ? '' : 'groupSnapshotId')
    ..pPS(2, _omitFieldNames ? '' : 'snapshotIds')
    ..m<$core.String, $core.String>(3, _omitFieldNames ? '' : 'secrets',
        entryClassName: 'GetVolumeGroupSnapshotRequest.SecretsEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.OS,
        packageName: const $pb.PackageName('csi.v1'))
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetVolumeGroupSnapshotRequest clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetVolumeGroupSnapshotRequest copyWith(
          void Function(GetVolumeGroupSnapshotRequest) updates) =>
      super.copyWith(
              (message) => updates(message as GetVolumeGroupSnapshotRequest))
          as GetVolumeGroupSnapshotRequest;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetVolumeGroupSnapshotRequest() / GetVolumeGroupSnapshotRequest.new instead')
  static GetVolumeGroupSnapshotRequest create() =>
      GetVolumeGroupSnapshotRequest._();
  static $pb.GeneratedMessage $_createMessage() =>
      GetVolumeGroupSnapshotRequest._();
  @$core.override
  GetVolumeGroupSnapshotRequest createEmptyInstance() =>
      GetVolumeGroupSnapshotRequest._();
  @$core.pragma('dart2js:noInline')
  static GetVolumeGroupSnapshotRequest getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVolumeGroupSnapshotRequest>(
          GetVolumeGroupSnapshotRequest.$_createMessage);
  static GetVolumeGroupSnapshotRequest? _defaultInstance;

  /// The ID of the group snapshot to fetch current group snapshot
  /// information for.
  /// This field is REQUIRED.
  @$pb.TagNumber(1)
  $core.String get groupSnapshotId => $_getSZ(0);
  @$pb.TagNumber(1)
  set groupSnapshotId($core.String value) => $_setString(0, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupSnapshotId() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupSnapshotId() => $_clearField(1);

  /// A list of snapshot IDs that are part of this group snapshot.
  /// If SP does not need to rely on this field to get the snapshots
  /// in the group, it SHOULD check this field and report an error
  /// if it has the ability to detect a mismatch.
  /// Some SPs require this list to get the snapshots in the group.
  /// If SP needs to use this field to get the snapshots in the
  /// group, it MUST report an error if it has the ability to detect
  /// a mismatch.
  /// This field is REQUIRED.
  @$pb.TagNumber(2)
  $pb.PbList<$core.String> get snapshotIds => $_getList(1);

  /// Secrets required by plugin to complete
  /// GetVolumeGroupSnapshot request.
  /// This field is OPTIONAL. Refer to the `Secrets Requirements`
  /// section on how to use this field.
  /// The secrets provided in this field SHOULD be the same for
  /// all group snapshot operations on the same group snapshot.
  @$pb.TagNumber(3)
  $pb.PbMap<$core.String, $core.String> get secrets => $_getMap(2);
}

class GetVolumeGroupSnapshotResponse extends $pb.GeneratedMessage {
  factory GetVolumeGroupSnapshotResponse({
    VolumeGroupSnapshot? groupSnapshot,
  }) {
    final result = GetVolumeGroupSnapshotResponse._();
    if (groupSnapshot != null) result.groupSnapshot = groupSnapshot;
    return result;
  }

  GetVolumeGroupSnapshotResponse._();

  factory GetVolumeGroupSnapshotResponse.fromBuffer($core.List<$core.int> data,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetVolumeGroupSnapshotResponse()..mergeFromBuffer(data, registry);
  factory GetVolumeGroupSnapshotResponse.fromJson($core.String json,
          [$pb.ExtensionRegistry registry = $pb.ExtensionRegistry.EMPTY]) =>
      GetVolumeGroupSnapshotResponse()..mergeFromJson(json, registry);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      _omitMessageNames ? '' : 'GetVolumeGroupSnapshotResponse',
      package: const $pb.PackageName(_omitMessageNames ? '' : 'csi.v1'),
      createEmptyInstance: GetVolumeGroupSnapshotResponse.$_createMessage)
    ..aOM<VolumeGroupSnapshot>(1, _omitFieldNames ? '' : 'groupSnapshot',
        subBuilder: VolumeGroupSnapshot.$_createMessage)
    ..hasRequiredFields = false;

  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetVolumeGroupSnapshotResponse clone() => deepCopy();
  @$core.Deprecated('See https://github.com/google/protobuf.dart/issues/998.')
  GetVolumeGroupSnapshotResponse copyWith(
          void Function(GetVolumeGroupSnapshotResponse) updates) =>
      super.copyWith(
              (message) => updates(message as GetVolumeGroupSnapshotResponse))
          as GetVolumeGroupSnapshotResponse;

  @$core.override
  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  @$core.Deprecated(
      'Use GetVolumeGroupSnapshotResponse() / GetVolumeGroupSnapshotResponse.new instead')
  static GetVolumeGroupSnapshotResponse create() =>
      GetVolumeGroupSnapshotResponse._();
  static $pb.GeneratedMessage $_createMessage() =>
      GetVolumeGroupSnapshotResponse._();
  @$core.override
  GetVolumeGroupSnapshotResponse createEmptyInstance() =>
      GetVolumeGroupSnapshotResponse._();
  @$core.pragma('dart2js:noInline')
  static GetVolumeGroupSnapshotResponse getDefault() => _defaultInstance ??=
      $pb.GeneratedMessage.$_defaultFor<GetVolumeGroupSnapshotResponse>(
          GetVolumeGroupSnapshotResponse.$_createMessage);
  static GetVolumeGroupSnapshotResponse? _defaultInstance;

  /// This field is REQUIRED
  @$pb.TagNumber(1)
  VolumeGroupSnapshot get groupSnapshot => $_getN(0);
  @$pb.TagNumber(1)
  set groupSnapshot(VolumeGroupSnapshot value) => $_setField(1, value);
  @$pb.TagNumber(1)
  $core.bool hasGroupSnapshot() => $_has(0);
  @$pb.TagNumber(1)
  void clearGroupSnapshot() => $_clearField(1);
  @$pb.TagNumber(1)
  VolumeGroupSnapshot ensureGroupSnapshot() => $_ensure(0);
}

class Csi {
  static final alphaEnum = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.EnumOptions',
      _omitFieldNames ? '' : 'alphaEnum',
      1060,
      $pb.PbFieldType.OB);
  static final alphaEnumValue = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.EnumValueOptions',
      _omitFieldNames ? '' : 'alphaEnumValue',
      1060,
      $pb.PbFieldType.OB);
  static final csiSecret = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'csiSecret',
      1059,
      $pb.PbFieldType.OB);
  static final alphaField = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.FieldOptions',
      _omitFieldNames ? '' : 'alphaField',
      1060,
      $pb.PbFieldType.OB);
  static final alphaMessage = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.MessageOptions',
      _omitFieldNames ? '' : 'alphaMessage',
      1060,
      $pb.PbFieldType.OB);
  static final alphaMethod = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.MethodOptions',
      _omitFieldNames ? '' : 'alphaMethod',
      1060,
      $pb.PbFieldType.OB);
  static final alphaService = $pb.Extension<$core.bool>(
      _omitMessageNames ? '' : 'google.protobuf.ServiceOptions',
      _omitFieldNames ? '' : 'alphaService',
      1060,
      $pb.PbFieldType.OB);
  static void registerAllExtensions($pb.ExtensionRegistry registry) {
    registry.add(alphaEnum);
    registry.add(alphaEnumValue);
    registry.add(csiSecret);
    registry.add(alphaField);
    registry.add(alphaMessage);
    registry.add(alphaMethod);
    registry.add(alphaService);
  }
}

const $core.bool _omitFieldNames =
    $core.bool.fromEnvironment('protobuf.omit_field_names');
const $core.bool _omitMessageNames =
    $core.bool.fromEnvironment('protobuf.omit_message_names');
