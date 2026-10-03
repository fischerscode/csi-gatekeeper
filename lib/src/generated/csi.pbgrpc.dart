// This is a generated file - do not edit.
//
// Generated from csi.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'csi.pb.dart' as $0;

export 'csi.pb.dart';

@$pb.GrpcServiceName('csi.v1.Identity')
class IdentityClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  IdentityClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GetPluginInfoResponse> getPluginInfo(
    $0.GetPluginInfoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPluginInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPluginCapabilitiesResponse> getPluginCapabilities(
    $0.GetPluginCapabilitiesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getPluginCapabilities, request, options: options);
  }

  $grpc.ResponseFuture<$0.ProbeResponse> probe(
    $0.ProbeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$probe, request, options: options);
  }

  // method descriptors

  static final _$getPluginInfo =
      $grpc.ClientMethod<$0.GetPluginInfoRequest, $0.GetPluginInfoResponse>(
          '/csi.v1.Identity/GetPluginInfo',
          ($0.GetPluginInfoRequest value) => value.writeToBuffer(),
          $0.GetPluginInfoResponse.fromBuffer);
  static final _$getPluginCapabilities = $grpc.ClientMethod<
          $0.GetPluginCapabilitiesRequest, $0.GetPluginCapabilitiesResponse>(
      '/csi.v1.Identity/GetPluginCapabilities',
      ($0.GetPluginCapabilitiesRequest value) => value.writeToBuffer(),
      $0.GetPluginCapabilitiesResponse.fromBuffer);
  static final _$probe = $grpc.ClientMethod<$0.ProbeRequest, $0.ProbeResponse>(
      '/csi.v1.Identity/Probe',
      ($0.ProbeRequest value) => value.writeToBuffer(),
      $0.ProbeResponse.fromBuffer);
}

@$pb.GrpcServiceName('csi.v1.Identity')
abstract class IdentityServiceBase extends $grpc.Service {
  $core.String get $name => 'csi.v1.Identity';

  IdentityServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.GetPluginInfoRequest, $0.GetPluginInfoResponse>(
            'GetPluginInfo',
            getPluginInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetPluginInfoRequest.fromBuffer(value),
            ($0.GetPluginInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPluginCapabilitiesRequest,
            $0.GetPluginCapabilitiesResponse>(
        'GetPluginCapabilities',
        getPluginCapabilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetPluginCapabilitiesRequest.fromBuffer(value),
        ($0.GetPluginCapabilitiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ProbeRequest, $0.ProbeResponse>(
        'Probe',
        probe_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ProbeRequest.fromBuffer(value),
        ($0.ProbeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetPluginInfoResponse> getPluginInfo_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetPluginInfoRequest> $request) async {
    return getPluginInfo($call, await $request);
  }

  $async.Future<$0.GetPluginInfoResponse> getPluginInfo(
      $grpc.ServiceCall call, $0.GetPluginInfoRequest request);

  $async.Future<$0.GetPluginCapabilitiesResponse> getPluginCapabilities_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetPluginCapabilitiesRequest> $request) async {
    return getPluginCapabilities($call, await $request);
  }

  $async.Future<$0.GetPluginCapabilitiesResponse> getPluginCapabilities(
      $grpc.ServiceCall call, $0.GetPluginCapabilitiesRequest request);

  $async.Future<$0.ProbeResponse> probe_Pre(
      $grpc.ServiceCall $call, $async.Future<$0.ProbeRequest> $request) async {
    return probe($call, await $request);
  }

  $async.Future<$0.ProbeResponse> probe(
      $grpc.ServiceCall call, $0.ProbeRequest request);
}

@$pb.GrpcServiceName('csi.v1.Controller')
class ControllerClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  ControllerClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.CreateVolumeResponse> createVolume(
    $0.CreateVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteVolumeResponse> deleteVolume(
    $0.DeleteVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.ControllerPublishVolumeResponse>
      controllerPublishVolume(
    $0.ControllerPublishVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerPublishVolume, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ControllerUnpublishVolumeResponse>
      controllerUnpublishVolume(
    $0.ControllerUnpublishVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerUnpublishVolume, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ValidateVolumeCapabilitiesResponse>
      validateVolumeCapabilities(
    $0.ValidateVolumeCapabilitiesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$validateVolumeCapabilities, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ListVolumesResponse> listVolumes(
    $0.ListVolumesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listVolumes, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetCapacityResponse> getCapacity(
    $0.GetCapacityRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getCapacity, request, options: options);
  }

  $grpc.ResponseFuture<$0.ControllerGetCapabilitiesResponse>
      controllerGetCapabilities(
    $0.ControllerGetCapabilitiesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerGetCapabilities, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.CreateSnapshotResponse> createSnapshot(
    $0.CreateSnapshotRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createSnapshot, request, options: options);
  }

  $grpc.ResponseFuture<$0.DeleteSnapshotResponse> deleteSnapshot(
    $0.DeleteSnapshotRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteSnapshot, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListSnapshotsResponse> listSnapshots(
    $0.ListSnapshotsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$listSnapshots, request, options: options);
  }

  $grpc.ResponseFuture<$0.ControllerExpandVolumeResponse>
      controllerExpandVolume(
    $0.ControllerExpandVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerExpandVolume, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.ControllerGetVolumeResponse> controllerGetVolume(
    $0.ControllerGetVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerGetVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.ControllerModifyVolumeResponse>
      controllerModifyVolume(
    $0.ControllerModifyVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$controllerModifyVolume, request,
        options: options);
  }

  // method descriptors

  static final _$createVolume =
      $grpc.ClientMethod<$0.CreateVolumeRequest, $0.CreateVolumeResponse>(
          '/csi.v1.Controller/CreateVolume',
          ($0.CreateVolumeRequest value) => value.writeToBuffer(),
          $0.CreateVolumeResponse.fromBuffer);
  static final _$deleteVolume =
      $grpc.ClientMethod<$0.DeleteVolumeRequest, $0.DeleteVolumeResponse>(
          '/csi.v1.Controller/DeleteVolume',
          ($0.DeleteVolumeRequest value) => value.writeToBuffer(),
          $0.DeleteVolumeResponse.fromBuffer);
  static final _$controllerPublishVolume = $grpc.ClientMethod<
          $0.ControllerPublishVolumeRequest,
          $0.ControllerPublishVolumeResponse>(
      '/csi.v1.Controller/ControllerPublishVolume',
      ($0.ControllerPublishVolumeRequest value) => value.writeToBuffer(),
      $0.ControllerPublishVolumeResponse.fromBuffer);
  static final _$controllerUnpublishVolume = $grpc.ClientMethod<
          $0.ControllerUnpublishVolumeRequest,
          $0.ControllerUnpublishVolumeResponse>(
      '/csi.v1.Controller/ControllerUnpublishVolume',
      ($0.ControllerUnpublishVolumeRequest value) => value.writeToBuffer(),
      $0.ControllerUnpublishVolumeResponse.fromBuffer);
  static final _$validateVolumeCapabilities = $grpc.ClientMethod<
          $0.ValidateVolumeCapabilitiesRequest,
          $0.ValidateVolumeCapabilitiesResponse>(
      '/csi.v1.Controller/ValidateVolumeCapabilities',
      ($0.ValidateVolumeCapabilitiesRequest value) => value.writeToBuffer(),
      $0.ValidateVolumeCapabilitiesResponse.fromBuffer);
  static final _$listVolumes =
      $grpc.ClientMethod<$0.ListVolumesRequest, $0.ListVolumesResponse>(
          '/csi.v1.Controller/ListVolumes',
          ($0.ListVolumesRequest value) => value.writeToBuffer(),
          $0.ListVolumesResponse.fromBuffer);
  static final _$getCapacity =
      $grpc.ClientMethod<$0.GetCapacityRequest, $0.GetCapacityResponse>(
          '/csi.v1.Controller/GetCapacity',
          ($0.GetCapacityRequest value) => value.writeToBuffer(),
          $0.GetCapacityResponse.fromBuffer);
  static final _$controllerGetCapabilities = $grpc.ClientMethod<
          $0.ControllerGetCapabilitiesRequest,
          $0.ControllerGetCapabilitiesResponse>(
      '/csi.v1.Controller/ControllerGetCapabilities',
      ($0.ControllerGetCapabilitiesRequest value) => value.writeToBuffer(),
      $0.ControllerGetCapabilitiesResponse.fromBuffer);
  static final _$createSnapshot =
      $grpc.ClientMethod<$0.CreateSnapshotRequest, $0.CreateSnapshotResponse>(
          '/csi.v1.Controller/CreateSnapshot',
          ($0.CreateSnapshotRequest value) => value.writeToBuffer(),
          $0.CreateSnapshotResponse.fromBuffer);
  static final _$deleteSnapshot =
      $grpc.ClientMethod<$0.DeleteSnapshotRequest, $0.DeleteSnapshotResponse>(
          '/csi.v1.Controller/DeleteSnapshot',
          ($0.DeleteSnapshotRequest value) => value.writeToBuffer(),
          $0.DeleteSnapshotResponse.fromBuffer);
  static final _$listSnapshots =
      $grpc.ClientMethod<$0.ListSnapshotsRequest, $0.ListSnapshotsResponse>(
          '/csi.v1.Controller/ListSnapshots',
          ($0.ListSnapshotsRequest value) => value.writeToBuffer(),
          $0.ListSnapshotsResponse.fromBuffer);
  static final _$controllerExpandVolume = $grpc.ClientMethod<
          $0.ControllerExpandVolumeRequest, $0.ControllerExpandVolumeResponse>(
      '/csi.v1.Controller/ControllerExpandVolume',
      ($0.ControllerExpandVolumeRequest value) => value.writeToBuffer(),
      $0.ControllerExpandVolumeResponse.fromBuffer);
  static final _$controllerGetVolume = $grpc.ClientMethod<
          $0.ControllerGetVolumeRequest, $0.ControllerGetVolumeResponse>(
      '/csi.v1.Controller/ControllerGetVolume',
      ($0.ControllerGetVolumeRequest value) => value.writeToBuffer(),
      $0.ControllerGetVolumeResponse.fromBuffer);
  static final _$controllerModifyVolume = $grpc.ClientMethod<
          $0.ControllerModifyVolumeRequest, $0.ControllerModifyVolumeResponse>(
      '/csi.v1.Controller/ControllerModifyVolume',
      ($0.ControllerModifyVolumeRequest value) => value.writeToBuffer(),
      $0.ControllerModifyVolumeResponse.fromBuffer);
}

@$pb.GrpcServiceName('csi.v1.Controller')
abstract class ControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'csi.v1.Controller';

  ControllerServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.CreateVolumeRequest, $0.CreateVolumeResponse>(
            'CreateVolume',
            createVolume_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.CreateVolumeRequest.fromBuffer(value),
            ($0.CreateVolumeResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.DeleteVolumeRequest, $0.DeleteVolumeResponse>(
            'DeleteVolume',
            deleteVolume_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.DeleteVolumeRequest.fromBuffer(value),
            ($0.DeleteVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerPublishVolumeRequest,
            $0.ControllerPublishVolumeResponse>(
        'ControllerPublishVolume',
        controllerPublishVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerPublishVolumeRequest.fromBuffer(value),
        ($0.ControllerPublishVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerUnpublishVolumeRequest,
            $0.ControllerUnpublishVolumeResponse>(
        'ControllerUnpublishVolume',
        controllerUnpublishVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerUnpublishVolumeRequest.fromBuffer(value),
        ($0.ControllerUnpublishVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ValidateVolumeCapabilitiesRequest,
            $0.ValidateVolumeCapabilitiesResponse>(
        'ValidateVolumeCapabilities',
        validateVolumeCapabilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ValidateVolumeCapabilitiesRequest.fromBuffer(value),
        ($0.ValidateVolumeCapabilitiesResponse value) =>
            value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListVolumesRequest, $0.ListVolumesResponse>(
            'ListVolumes',
            listVolumes_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListVolumesRequest.fromBuffer(value),
            ($0.ListVolumesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetCapacityRequest, $0.GetCapacityResponse>(
            'GetCapacity',
            getCapacity_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetCapacityRequest.fromBuffer(value),
            ($0.GetCapacityResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerGetCapabilitiesRequest,
            $0.ControllerGetCapabilitiesResponse>(
        'ControllerGetCapabilities',
        controllerGetCapabilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerGetCapabilitiesRequest.fromBuffer(value),
        ($0.ControllerGetCapabilitiesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateSnapshotRequest,
            $0.CreateSnapshotResponse>(
        'CreateSnapshot',
        createSnapshot_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateSnapshotRequest.fromBuffer(value),
        ($0.CreateSnapshotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteSnapshotRequest,
            $0.DeleteSnapshotResponse>(
        'DeleteSnapshot',
        deleteSnapshot_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteSnapshotRequest.fromBuffer(value),
        ($0.DeleteSnapshotResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListSnapshotsRequest, $0.ListSnapshotsResponse>(
            'ListSnapshots',
            listSnapshots_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListSnapshotsRequest.fromBuffer(value),
            ($0.ListSnapshotsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerExpandVolumeRequest,
            $0.ControllerExpandVolumeResponse>(
        'ControllerExpandVolume',
        controllerExpandVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerExpandVolumeRequest.fromBuffer(value),
        ($0.ControllerExpandVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerGetVolumeRequest,
            $0.ControllerGetVolumeResponse>(
        'ControllerGetVolume',
        controllerGetVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerGetVolumeRequest.fromBuffer(value),
        ($0.ControllerGetVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ControllerModifyVolumeRequest,
            $0.ControllerModifyVolumeResponse>(
        'ControllerModifyVolume',
        controllerModifyVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ControllerModifyVolumeRequest.fromBuffer(value),
        ($0.ControllerModifyVolumeResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.CreateVolumeResponse> createVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateVolumeRequest> $request) async {
    return createVolume($call, await $request);
  }

  $async.Future<$0.CreateVolumeResponse> createVolume(
      $grpc.ServiceCall call, $0.CreateVolumeRequest request);

  $async.Future<$0.DeleteVolumeResponse> deleteVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DeleteVolumeRequest> $request) async {
    return deleteVolume($call, await $request);
  }

  $async.Future<$0.DeleteVolumeResponse> deleteVolume(
      $grpc.ServiceCall call, $0.DeleteVolumeRequest request);

  $async.Future<$0.ControllerPublishVolumeResponse> controllerPublishVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ControllerPublishVolumeRequest> $request) async {
    return controllerPublishVolume($call, await $request);
  }

  $async.Future<$0.ControllerPublishVolumeResponse> controllerPublishVolume(
      $grpc.ServiceCall call, $0.ControllerPublishVolumeRequest request);

  $async.Future<$0.ControllerUnpublishVolumeResponse>
      controllerUnpublishVolume_Pre($grpc.ServiceCall $call,
          $async.Future<$0.ControllerUnpublishVolumeRequest> $request) async {
    return controllerUnpublishVolume($call, await $request);
  }

  $async.Future<$0.ControllerUnpublishVolumeResponse> controllerUnpublishVolume(
      $grpc.ServiceCall call, $0.ControllerUnpublishVolumeRequest request);

  $async.Future<$0.ValidateVolumeCapabilitiesResponse>
      validateVolumeCapabilities_Pre($grpc.ServiceCall $call,
          $async.Future<$0.ValidateVolumeCapabilitiesRequest> $request) async {
    return validateVolumeCapabilities($call, await $request);
  }

  $async.Future<$0.ValidateVolumeCapabilitiesResponse>
      validateVolumeCapabilities(
          $grpc.ServiceCall call, $0.ValidateVolumeCapabilitiesRequest request);

  $async.Future<$0.ListVolumesResponse> listVolumes_Pre($grpc.ServiceCall $call,
      $async.Future<$0.ListVolumesRequest> $request) async {
    return listVolumes($call, await $request);
  }

  $async.Future<$0.ListVolumesResponse> listVolumes(
      $grpc.ServiceCall call, $0.ListVolumesRequest request);

  $async.Future<$0.GetCapacityResponse> getCapacity_Pre($grpc.ServiceCall $call,
      $async.Future<$0.GetCapacityRequest> $request) async {
    return getCapacity($call, await $request);
  }

  $async.Future<$0.GetCapacityResponse> getCapacity(
      $grpc.ServiceCall call, $0.GetCapacityRequest request);

  $async.Future<$0.ControllerGetCapabilitiesResponse>
      controllerGetCapabilities_Pre($grpc.ServiceCall $call,
          $async.Future<$0.ControllerGetCapabilitiesRequest> $request) async {
    return controllerGetCapabilities($call, await $request);
  }

  $async.Future<$0.ControllerGetCapabilitiesResponse> controllerGetCapabilities(
      $grpc.ServiceCall call, $0.ControllerGetCapabilitiesRequest request);

  $async.Future<$0.CreateSnapshotResponse> createSnapshot_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.CreateSnapshotRequest> $request) async {
    return createSnapshot($call, await $request);
  }

  $async.Future<$0.CreateSnapshotResponse> createSnapshot(
      $grpc.ServiceCall call, $0.CreateSnapshotRequest request);

  $async.Future<$0.DeleteSnapshotResponse> deleteSnapshot_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.DeleteSnapshotRequest> $request) async {
    return deleteSnapshot($call, await $request);
  }

  $async.Future<$0.DeleteSnapshotResponse> deleteSnapshot(
      $grpc.ServiceCall call, $0.DeleteSnapshotRequest request);

  $async.Future<$0.ListSnapshotsResponse> listSnapshots_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ListSnapshotsRequest> $request) async {
    return listSnapshots($call, await $request);
  }

  $async.Future<$0.ListSnapshotsResponse> listSnapshots(
      $grpc.ServiceCall call, $0.ListSnapshotsRequest request);

  $async.Future<$0.ControllerExpandVolumeResponse> controllerExpandVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ControllerExpandVolumeRequest> $request) async {
    return controllerExpandVolume($call, await $request);
  }

  $async.Future<$0.ControllerExpandVolumeResponse> controllerExpandVolume(
      $grpc.ServiceCall call, $0.ControllerExpandVolumeRequest request);

  $async.Future<$0.ControllerGetVolumeResponse> controllerGetVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ControllerGetVolumeRequest> $request) async {
    return controllerGetVolume($call, await $request);
  }

  $async.Future<$0.ControllerGetVolumeResponse> controllerGetVolume(
      $grpc.ServiceCall call, $0.ControllerGetVolumeRequest request);

  $async.Future<$0.ControllerModifyVolumeResponse> controllerModifyVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.ControllerModifyVolumeRequest> $request) async {
    return controllerModifyVolume($call, await $request);
  }

  $async.Future<$0.ControllerModifyVolumeResponse> controllerModifyVolume(
      $grpc.ServiceCall call, $0.ControllerModifyVolumeRequest request);
}

@$pb.GrpcServiceName('csi.v1.GroupController')
class GroupControllerClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  GroupControllerClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.GroupControllerGetCapabilitiesResponse>
      groupControllerGetCapabilities(
    $0.GroupControllerGetCapabilitiesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$groupControllerGetCapabilities, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.CreateVolumeGroupSnapshotResponse>
      createVolumeGroupSnapshot(
    $0.CreateVolumeGroupSnapshotRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$createVolumeGroupSnapshot, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.DeleteVolumeGroupSnapshotResponse>
      deleteVolumeGroupSnapshot(
    $0.DeleteVolumeGroupSnapshotRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$deleteVolumeGroupSnapshot, request,
        options: options);
  }

  $grpc.ResponseFuture<$0.GetVolumeGroupSnapshotResponse>
      getVolumeGroupSnapshot(
    $0.GetVolumeGroupSnapshotRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$getVolumeGroupSnapshot, request,
        options: options);
  }

  // method descriptors

  static final _$groupControllerGetCapabilities = $grpc.ClientMethod<
          $0.GroupControllerGetCapabilitiesRequest,
          $0.GroupControllerGetCapabilitiesResponse>(
      '/csi.v1.GroupController/GroupControllerGetCapabilities',
      ($0.GroupControllerGetCapabilitiesRequest value) => value.writeToBuffer(),
      $0.GroupControllerGetCapabilitiesResponse.fromBuffer);
  static final _$createVolumeGroupSnapshot = $grpc.ClientMethod<
          $0.CreateVolumeGroupSnapshotRequest,
          $0.CreateVolumeGroupSnapshotResponse>(
      '/csi.v1.GroupController/CreateVolumeGroupSnapshot',
      ($0.CreateVolumeGroupSnapshotRequest value) => value.writeToBuffer(),
      $0.CreateVolumeGroupSnapshotResponse.fromBuffer);
  static final _$deleteVolumeGroupSnapshot = $grpc.ClientMethod<
          $0.DeleteVolumeGroupSnapshotRequest,
          $0.DeleteVolumeGroupSnapshotResponse>(
      '/csi.v1.GroupController/DeleteVolumeGroupSnapshot',
      ($0.DeleteVolumeGroupSnapshotRequest value) => value.writeToBuffer(),
      $0.DeleteVolumeGroupSnapshotResponse.fromBuffer);
  static final _$getVolumeGroupSnapshot = $grpc.ClientMethod<
          $0.GetVolumeGroupSnapshotRequest, $0.GetVolumeGroupSnapshotResponse>(
      '/csi.v1.GroupController/GetVolumeGroupSnapshot',
      ($0.GetVolumeGroupSnapshotRequest value) => value.writeToBuffer(),
      $0.GetVolumeGroupSnapshotResponse.fromBuffer);
}

@$pb.GrpcServiceName('csi.v1.GroupController')
abstract class GroupControllerServiceBase extends $grpc.Service {
  $core.String get $name => 'csi.v1.GroupController';

  GroupControllerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GroupControllerGetCapabilitiesRequest,
            $0.GroupControllerGetCapabilitiesResponse>(
        'GroupControllerGetCapabilities',
        groupControllerGetCapabilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GroupControllerGetCapabilitiesRequest.fromBuffer(value),
        ($0.GroupControllerGetCapabilitiesResponse value) =>
            value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.CreateVolumeGroupSnapshotRequest,
            $0.CreateVolumeGroupSnapshotResponse>(
        'CreateVolumeGroupSnapshot',
        createVolumeGroupSnapshot_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.CreateVolumeGroupSnapshotRequest.fromBuffer(value),
        ($0.CreateVolumeGroupSnapshotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteVolumeGroupSnapshotRequest,
            $0.DeleteVolumeGroupSnapshotResponse>(
        'DeleteVolumeGroupSnapshot',
        deleteVolumeGroupSnapshot_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteVolumeGroupSnapshotRequest.fromBuffer(value),
        ($0.DeleteVolumeGroupSnapshotResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetVolumeGroupSnapshotRequest,
            $0.GetVolumeGroupSnapshotResponse>(
        'GetVolumeGroupSnapshot',
        getVolumeGroupSnapshot_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetVolumeGroupSnapshotRequest.fromBuffer(value),
        ($0.GetVolumeGroupSnapshotResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GroupControllerGetCapabilitiesResponse>
      groupControllerGetCapabilities_Pre(
          $grpc.ServiceCall $call,
          $async.Future<$0.GroupControllerGetCapabilitiesRequest>
              $request) async {
    return groupControllerGetCapabilities($call, await $request);
  }

  $async.Future<$0.GroupControllerGetCapabilitiesResponse>
      groupControllerGetCapabilities($grpc.ServiceCall call,
          $0.GroupControllerGetCapabilitiesRequest request);

  $async.Future<$0.CreateVolumeGroupSnapshotResponse>
      createVolumeGroupSnapshot_Pre($grpc.ServiceCall $call,
          $async.Future<$0.CreateVolumeGroupSnapshotRequest> $request) async {
    return createVolumeGroupSnapshot($call, await $request);
  }

  $async.Future<$0.CreateVolumeGroupSnapshotResponse> createVolumeGroupSnapshot(
      $grpc.ServiceCall call, $0.CreateVolumeGroupSnapshotRequest request);

  $async.Future<$0.DeleteVolumeGroupSnapshotResponse>
      deleteVolumeGroupSnapshot_Pre($grpc.ServiceCall $call,
          $async.Future<$0.DeleteVolumeGroupSnapshotRequest> $request) async {
    return deleteVolumeGroupSnapshot($call, await $request);
  }

  $async.Future<$0.DeleteVolumeGroupSnapshotResponse> deleteVolumeGroupSnapshot(
      $grpc.ServiceCall call, $0.DeleteVolumeGroupSnapshotRequest request);

  $async.Future<$0.GetVolumeGroupSnapshotResponse> getVolumeGroupSnapshot_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.GetVolumeGroupSnapshotRequest> $request) async {
    return getVolumeGroupSnapshot($call, await $request);
  }

  $async.Future<$0.GetVolumeGroupSnapshotResponse> getVolumeGroupSnapshot(
      $grpc.ServiceCall call, $0.GetVolumeGroupSnapshotRequest request);
}

@$pb.GrpcServiceName('csi.v1.Node')
class NodeClient extends $grpc.Client {
  /// The hostname for this service.
  static const $core.String defaultHost = '';

  /// OAuth scopes needed for the client.
  static const $core.List<$core.String> oauthScopes = [
    '',
  ];

  NodeClient(super.channel, {super.options, super.interceptors});

  $grpc.ResponseFuture<$0.NodeStageVolumeResponse> nodeStageVolume(
    $0.NodeStageVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeStageVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeUnstageVolumeResponse> nodeUnstageVolume(
    $0.NodeUnstageVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeUnstageVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodePublishVolumeResponse> nodePublishVolume(
    $0.NodePublishVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodePublishVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeUnpublishVolumeResponse> nodeUnpublishVolume(
    $0.NodeUnpublishVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeUnpublishVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeGetVolumeStatsResponse> nodeGetVolumeStats(
    $0.NodeGetVolumeStatsRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeGetVolumeStats, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeExpandVolumeResponse> nodeExpandVolume(
    $0.NodeExpandVolumeRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeExpandVolume, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeGetCapabilitiesResponse> nodeGetCapabilities(
    $0.NodeGetCapabilitiesRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeGetCapabilities, request, options: options);
  }

  $grpc.ResponseFuture<$0.NodeGetInfoResponse> nodeGetInfo(
    $0.NodeGetInfoRequest request, {
    $grpc.CallOptions? options,
  }) {
    return $createUnaryCall(_$nodeGetInfo, request, options: options);
  }

  // method descriptors

  static final _$nodeStageVolume =
      $grpc.ClientMethod<$0.NodeStageVolumeRequest, $0.NodeStageVolumeResponse>(
          '/csi.v1.Node/NodeStageVolume',
          ($0.NodeStageVolumeRequest value) => value.writeToBuffer(),
          $0.NodeStageVolumeResponse.fromBuffer);
  static final _$nodeUnstageVolume = $grpc.ClientMethod<
          $0.NodeUnstageVolumeRequest, $0.NodeUnstageVolumeResponse>(
      '/csi.v1.Node/NodeUnstageVolume',
      ($0.NodeUnstageVolumeRequest value) => value.writeToBuffer(),
      $0.NodeUnstageVolumeResponse.fromBuffer);
  static final _$nodePublishVolume = $grpc.ClientMethod<
          $0.NodePublishVolumeRequest, $0.NodePublishVolumeResponse>(
      '/csi.v1.Node/NodePublishVolume',
      ($0.NodePublishVolumeRequest value) => value.writeToBuffer(),
      $0.NodePublishVolumeResponse.fromBuffer);
  static final _$nodeUnpublishVolume = $grpc.ClientMethod<
          $0.NodeUnpublishVolumeRequest, $0.NodeUnpublishVolumeResponse>(
      '/csi.v1.Node/NodeUnpublishVolume',
      ($0.NodeUnpublishVolumeRequest value) => value.writeToBuffer(),
      $0.NodeUnpublishVolumeResponse.fromBuffer);
  static final _$nodeGetVolumeStats = $grpc.ClientMethod<
          $0.NodeGetVolumeStatsRequest, $0.NodeGetVolumeStatsResponse>(
      '/csi.v1.Node/NodeGetVolumeStats',
      ($0.NodeGetVolumeStatsRequest value) => value.writeToBuffer(),
      $0.NodeGetVolumeStatsResponse.fromBuffer);
  static final _$nodeExpandVolume = $grpc.ClientMethod<
          $0.NodeExpandVolumeRequest, $0.NodeExpandVolumeResponse>(
      '/csi.v1.Node/NodeExpandVolume',
      ($0.NodeExpandVolumeRequest value) => value.writeToBuffer(),
      $0.NodeExpandVolumeResponse.fromBuffer);
  static final _$nodeGetCapabilities = $grpc.ClientMethod<
          $0.NodeGetCapabilitiesRequest, $0.NodeGetCapabilitiesResponse>(
      '/csi.v1.Node/NodeGetCapabilities',
      ($0.NodeGetCapabilitiesRequest value) => value.writeToBuffer(),
      $0.NodeGetCapabilitiesResponse.fromBuffer);
  static final _$nodeGetInfo =
      $grpc.ClientMethod<$0.NodeGetInfoRequest, $0.NodeGetInfoResponse>(
          '/csi.v1.Node/NodeGetInfo',
          ($0.NodeGetInfoRequest value) => value.writeToBuffer(),
          $0.NodeGetInfoResponse.fromBuffer);
}

@$pb.GrpcServiceName('csi.v1.Node')
abstract class NodeServiceBase extends $grpc.Service {
  $core.String get $name => 'csi.v1.Node';

  NodeServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.NodeStageVolumeRequest,
            $0.NodeStageVolumeResponse>(
        'NodeStageVolume',
        nodeStageVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeStageVolumeRequest.fromBuffer(value),
        ($0.NodeStageVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeUnstageVolumeRequest,
            $0.NodeUnstageVolumeResponse>(
        'NodeUnstageVolume',
        nodeUnstageVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeUnstageVolumeRequest.fromBuffer(value),
        ($0.NodeUnstageVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodePublishVolumeRequest,
            $0.NodePublishVolumeResponse>(
        'NodePublishVolume',
        nodePublishVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodePublishVolumeRequest.fromBuffer(value),
        ($0.NodePublishVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeUnpublishVolumeRequest,
            $0.NodeUnpublishVolumeResponse>(
        'NodeUnpublishVolume',
        nodeUnpublishVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeUnpublishVolumeRequest.fromBuffer(value),
        ($0.NodeUnpublishVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeGetVolumeStatsRequest,
            $0.NodeGetVolumeStatsResponse>(
        'NodeGetVolumeStats',
        nodeGetVolumeStats_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeGetVolumeStatsRequest.fromBuffer(value),
        ($0.NodeGetVolumeStatsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeExpandVolumeRequest,
            $0.NodeExpandVolumeResponse>(
        'NodeExpandVolume',
        nodeExpandVolume_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeExpandVolumeRequest.fromBuffer(value),
        ($0.NodeExpandVolumeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeGetCapabilitiesRequest,
            $0.NodeGetCapabilitiesResponse>(
        'NodeGetCapabilities',
        nodeGetCapabilities_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NodeGetCapabilitiesRequest.fromBuffer(value),
        ($0.NodeGetCapabilitiesResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.NodeGetInfoRequest, $0.NodeGetInfoResponse>(
            'NodeGetInfo',
            nodeGetInfo_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.NodeGetInfoRequest.fromBuffer(value),
            ($0.NodeGetInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.NodeStageVolumeResponse> nodeStageVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeStageVolumeRequest> $request) async {
    return nodeStageVolume($call, await $request);
  }

  $async.Future<$0.NodeStageVolumeResponse> nodeStageVolume(
      $grpc.ServiceCall call, $0.NodeStageVolumeRequest request);

  $async.Future<$0.NodeUnstageVolumeResponse> nodeUnstageVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeUnstageVolumeRequest> $request) async {
    return nodeUnstageVolume($call, await $request);
  }

  $async.Future<$0.NodeUnstageVolumeResponse> nodeUnstageVolume(
      $grpc.ServiceCall call, $0.NodeUnstageVolumeRequest request);

  $async.Future<$0.NodePublishVolumeResponse> nodePublishVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodePublishVolumeRequest> $request) async {
    return nodePublishVolume($call, await $request);
  }

  $async.Future<$0.NodePublishVolumeResponse> nodePublishVolume(
      $grpc.ServiceCall call, $0.NodePublishVolumeRequest request);

  $async.Future<$0.NodeUnpublishVolumeResponse> nodeUnpublishVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeUnpublishVolumeRequest> $request) async {
    return nodeUnpublishVolume($call, await $request);
  }

  $async.Future<$0.NodeUnpublishVolumeResponse> nodeUnpublishVolume(
      $grpc.ServiceCall call, $0.NodeUnpublishVolumeRequest request);

  $async.Future<$0.NodeGetVolumeStatsResponse> nodeGetVolumeStats_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeGetVolumeStatsRequest> $request) async {
    return nodeGetVolumeStats($call, await $request);
  }

  $async.Future<$0.NodeGetVolumeStatsResponse> nodeGetVolumeStats(
      $grpc.ServiceCall call, $0.NodeGetVolumeStatsRequest request);

  $async.Future<$0.NodeExpandVolumeResponse> nodeExpandVolume_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeExpandVolumeRequest> $request) async {
    return nodeExpandVolume($call, await $request);
  }

  $async.Future<$0.NodeExpandVolumeResponse> nodeExpandVolume(
      $grpc.ServiceCall call, $0.NodeExpandVolumeRequest request);

  $async.Future<$0.NodeGetCapabilitiesResponse> nodeGetCapabilities_Pre(
      $grpc.ServiceCall $call,
      $async.Future<$0.NodeGetCapabilitiesRequest> $request) async {
    return nodeGetCapabilities($call, await $request);
  }

  $async.Future<$0.NodeGetCapabilitiesResponse> nodeGetCapabilities(
      $grpc.ServiceCall call, $0.NodeGetCapabilitiesRequest request);

  $async.Future<$0.NodeGetInfoResponse> nodeGetInfo_Pre($grpc.ServiceCall $call,
      $async.Future<$0.NodeGetInfoRequest> $request) async {
    return nodeGetInfo($call, await $request);
  }

  $async.Future<$0.NodeGetInfoResponse> nodeGetInfo(
      $grpc.ServiceCall call, $0.NodeGetInfoRequest request);
}
