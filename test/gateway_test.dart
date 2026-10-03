import 'dart:async';
import 'dart:math';
import 'dart:io';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:test/test.dart';
import 'package:csi_gatekeeper/src/generated/csi.pbgrpc.dart';
import 'package:protobuf/well_known_types/google/protobuf/timestamp.pb.dart';

import 'support.dart';

VolumeCapability capability({bool block = false}) => VolumeCapability(
  mount: block ? null : VolumeCapability_MountVolume(fsType: 'nfs'),
  block: block ? VolumeCapability_BlockVolume() : null,
  accessMode: VolumeCapability_AccessMode(
    mode: VolumeCapability_AccessMode_Mode.SINGLE_NODE_WRITER,
  ),
);
CreateVolumeRequest create(String name, {VolumeContentSource? source}) =>
    CreateVolumeRequest(
      name: name,
      capacityRange: CapacityRange(requiredBytes: Int64(1073741824)),
      volumeCapabilities: [capability()],
      volumeContentSource: source,
    );
Volume volume(Rig rig, String id, {VolumeContentSource? source}) => Volume(
  volumeId: id,
  capacityBytes: Int64(1073741824),
  volumeContext: rig.config.contextFor(id).entries,
  contentSource: source,
);
Snapshot snapshot(String id, String source) => Snapshot(
  snapshotId: id,
  sourceVolumeId: source,
  sizeBytes: Int64(1073741824),
  creationTime: Timestamp(seconds: Int64(1700000000)),
  readyToUse: true,
);
Matcher code(int value) =>
    isA<GrpcError>().having((e) => e.code, 'code', value);

void main() {
  late Rig rig;
  late ControllerClient client;
  late IdentityClient identity;
  setUpAll(() async {
    rig = Rig();
    await rig.init();
    final channel = await rig.client();
    client = ControllerClient(channel);
    identity = IdentityClient(channel);
  });
  tearDownAll(() async => rig.close());
  setUp(() {
    rig.calls.clear();
    rig.handlers.clear();
    rig.audit.clear();
  });
  Future<void> rejected(Future<dynamic> Function() send, {int? status}) async {
    final before = rig.calls.length;
    await expectLater(
      send(),
      status == null ? throwsA(isA<GrpcError>()) : throwsA(code(status)),
    );
    expect(
      rig.calls.length,
      before,
      reason: 'Rejected request must never reach backend',
    );
  }

  test('identity and capability intersection', () async {
    expect(
      (await identity.getPluginInfo(GetPluginInfoRequest())).name,
      'org.democratic-csi',
    );
    await identity.probe(ProbeRequest());
    await identity.getPluginCapabilities(GetPluginCapabilitiesRequest());
    rig.handlers['ControllerGetCapabilities'] = (_, __) async =>
        ControllerGetCapabilitiesResponse(
          capabilities: ControllerServiceCapability_RPC_Type.values.map(
            (v) => ControllerServiceCapability(
              rpc: ControllerServiceCapability_RPC(type: v),
            ),
          ),
        );
    final response = await client.controllerGetCapabilities(
      ControllerGetCapabilitiesRequest(),
    );
    expect(
      response.capabilities.map((c) => c.rpc.type.value).toSet(),
      rig.gateway.allowedCapabilities,
    );
    expect(rig.calls.length, 4);
  });
  test('create, retry, both clone sources and capacity', () async {
    rig.handlers['CreateVolume'] = (r, _) async {
      final q = r as CreateVolumeRequest;
      return CreateVolumeResponse(
        volume: volume(
          rig,
          q.name,
          source: q.hasVolumeContentSource() ? q.volumeContentSource : null,
        ),
      );
    };
    for (final source in [
      null,
      VolumeContentSource(
        snapshot: VolumeContentSource_SnapshotSource(
          snapshotId: 'pvc-original@snapshot-1',
        ),
      ),
      VolumeContentSource(
        snapshot: VolumeContentSource_SnapshotSource(
          snapshotId: 'pvc-original/snapshot-1',
        ),
      ),
      VolumeContentSource(
        volume: VolumeContentSource_VolumeSource(volumeId: 'pvc-original'),
      ),
    ]) {
      final r = create('pvc-clone', source: source);
      expect((await client.createVolume(r)).volume.volumeId, 'pvc-clone');
      expect((await client.createVolume(r)).volume.volumeId, 'pvc-clone');
    }
    rig.handlers['GetCapacity'] = (_, __) async =>
        GetCapacityResponse(availableCapacity: Int64(8192));
    expect(
      (await client.getCapacity(GetCapacityRequest())).availableCapacity,
      Int64(8192),
    );
    expect(rig.calls.length, 9);
  });
  test('delete missing resources remains successful and repeated', () async {
    for (var i = 0; i < 2; i++) {
      await client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-deleted'));
      await client.deleteSnapshot(
        DeleteSnapshotRequest(snapshotId: 'pvc-deleted@snapshot-1'),
      );
      await client.deleteSnapshot(
        DeleteSnapshotRequest(snapshotId: 'pvc-deleted/snapshot-1'),
      );
    }
    expect(rig.calls.length, 6);
  });
  test('native and detached snapshots and response binding', () async {
    rig.handlers['CreateSnapshot'] = (r, _) async {
      final q = r as CreateSnapshotRequest;
      return CreateSnapshotResponse(
        snapshot: snapshot(
          '${q.sourceVolumeId}${q.parameters['detachedSnapshots'] == 'true' ? '/' : '@'}${q.name}',
          q.sourceVolumeId,
        ),
      );
    };
    for (final detached in ['false', 'true']) {
      final v = await client.createSnapshot(
        CreateSnapshotRequest(
          name: 'snapshot-1',
          sourceVolumeId: 'pvc-1',
          parameters: {'detachedSnapshots': detached}.entries,
        ),
      );
      expect(
        v.snapshot.snapshotId,
        detached == 'true' ? 'pvc-1/snapshot-1' : 'pvc-1@snapshot-1',
      );
    }
    rig.handlers['CreateSnapshot'] = (_, __) async =>
        CreateSnapshotResponse(snapshot: snapshot('other@snapshot-1', 'other'));
    await expectLater(
      client.createSnapshot(
        CreateSnapshotRequest(name: 'snapshot-1', sourceVolumeId: 'pvc-1'),
      ),
      throwsA(code(StatusCode.dataLoss)),
    );
  });
  test('get, expand and validate typed requests', () async {
    rig.handlers['ControllerGetVolume'] = (_, __) async =>
        ControllerGetVolumeResponse(volume: volume(rig, 'pvc-1'));
    expect(
      (await client.controllerGetVolume(
        ControllerGetVolumeRequest(volumeId: 'pvc-1'),
      )).volume.volumeId,
      'pvc-1',
    );
    rig.handlers['ControllerExpandVolume'] = (_, __) async =>
        ControllerExpandVolumeResponse(capacityBytes: Int64(2147483648));
    await client.controllerExpandVolume(
      ControllerExpandVolumeRequest(
        volumeId: 'pvc-1',
        capacityRange: CapacityRange(requiredBytes: Int64(2147483648)),
      ),
    );
    rig.handlers['ValidateVolumeCapabilities'] = (r, _) async =>
        ValidateVolumeCapabilitiesResponse(
          confirmed: ValidateVolumeCapabilitiesResponse_Confirmed(
            volumeCapabilities:
                (r as ValidateVolumeCapabilitiesRequest).volumeCapabilities,
          ),
        );
    await client.validateVolumeCapabilities(
      ValidateVolumeCapabilitiesRequest(
        volumeId: 'pvc-1',
        volumeCapabilities: [capability()],
        volumeContext: rig.config.contextFor('pvc-1').entries,
      ),
    );
    expect(rig.calls.length, 3);
  });
  test(
    'CA-signed unauthorized, missing and untrusted client certificates',
    () async {
      for (final name in ['denied', null, 'untrusted']) {
        final denied = ControllerClient(await rig.client(name));
        await rejected(
          () => denied.deleteVolume(
            DeleteVolumeRequest(volumeId: 'pvc-1'),
            options: CallOptions(timeout: const Duration(seconds: 2)),
          ),
        );
      }
    },
  );
  test(
    'unknown methods, unsupported known methods and Node endpoint',
    () async {
      await rejected(
        () => client.controllerPublishVolume(ControllerPublishVolumeRequest()),
      );
      await rejected(
        () => client.controllerUnpublishVolume(
          ControllerUnpublishVolumeRequest(),
        ),
      );
      await rejected(
        () => client.controllerModifyVolume(ControllerModifyVolumeRequest()),
      );
      await rejected(
        () => NodeClient(rig.channels.first).nodeGetInfo(NodeGetInfoRequest()),
      );
      final raw = Client(rig.channels.first);
      await rejected(
        () => raw.$createUnaryCall(
          ClientMethod<ProbeRequest, ProbeResponse>(
            '/csi.v1.Controller/FutureMethod',
            (r) => r.writeToBuffer(),
            ProbeResponse.fromBuffer,
          ),
          ProbeRequest(),
        ),
      );
    },
  );
  test('unknown root, nested and raw map-entry fields fail closed', () async {
    final root = DeleteVolumeRequest.fromBuffer([
      ...DeleteVolumeRequest(volumeId: 'pvc-1').writeToBuffer(),
      0xf8,
      0x07,
      0x01,
    ]);
    await rejected(() => client.deleteVolume(root));
    final cap = VolumeCapability.fromBuffer([
      ...capability().writeToBuffer(),
      0xf8,
      0x07,
      0x01,
    ]);
    final r = create('pvc-1')
      ..volumeCapabilities.clear()
      ..volumeCapabilities.add(cap);
    await rejected(() => client.createVolume(r));
    final entry = <int>[
      10,
      17,
      ...'detachedSnapshots'.codeUnits,
      18,
      4,
      ...'true'.codeUnits,
      24,
      1,
    ];
    // Raw bytes preserve an unknown map-entry tag that Dart otherwise drops.
    final raw = Client(rig.channels.first);
    final base = CreateSnapshotRequest(
      name: 'snap',
      sourceVolumeId: 'pvc-1',
    ).writeToBuffer();
    await rejected(
      () => raw.$createUnaryCall(
        ClientMethod<List<int>, CreateSnapshotResponse>(
          '/csi.v1.Controller/CreateSnapshot',
          (b) => b,
          CreateSnapshotResponse.fromBuffer,
        ),
        [...base, 26, entry.length, ...entry],
      ),
    );
  });
  test(
    'every identifier path rejects injection and foreign references',
    () async {
      for (final bad in [
        '../foreign',
        'tank/other/volume',
        'x;id',
        'x\nset attribute authentication=0',
        '-rf',
        'x\u0000',
        'x`id`',
        'x\$(id)',
        'x /iscsi delete',
        'x@foreign',
        'x\\other',
      ]) {
        await rejected(
          () => client.deleteVolume(DeleteVolumeRequest(volumeId: bad)),
        );
        await rejected(
          () => client.controllerGetVolume(
            ControllerGetVolumeRequest(volumeId: bad),
          ),
        );
        await rejected(
          () => client.controllerExpandVolume(
            ControllerExpandVolumeRequest(
              volumeId: bad,
              capacityRange: CapacityRange(requiredBytes: Int64(1)),
            ),
          ),
        );
        await rejected(
          () => client.validateVolumeCapabilities(
            ValidateVolumeCapabilitiesRequest(
              volumeId: bad,
              volumeCapabilities: [capability()],
            ),
          ),
        );
        await rejected(
          () => client.createSnapshot(
            CreateSnapshotRequest(name: 'snap', sourceVolumeId: bad),
          ),
        );
        await rejected(
          () => client.createSnapshot(
            CreateSnapshotRequest(name: bad, sourceVolumeId: 'pvc-1'),
          ),
        );
        await rejected(() => client.createVolume(create(bad)));
        await rejected(
          () => client.createVolume(
            create(
              'pvc-1',
              source: VolumeContentSource(
                volume: VolumeContentSource_VolumeSource(volumeId: bad),
              ),
            ),
          ),
        );
        await rejected(
          () => client.createVolume(
            create(
              'pvc-1',
              source: VolumeContentSource(
                snapshot: VolumeContentSource_SnapshotSource(
                  snapshotId: '$bad@snap',
                ),
              ),
            ),
          ),
        );
        await rejected(
          () => client.deleteSnapshot(
            DeleteSnapshotRequest(snapshotId: '$bad/snap'),
          ),
        );
        await rejected(
          () => client.listSnapshots(ListSnapshotsRequest(sourceVolumeId: bad)),
        );
      }
    },
  );
  test(
    'secrets, overlays, PVC imports, metadata parameters and contexts',
    () async {
      for (final key in [
        'config',
        'load-config-from-pvc',
        'mountpoint',
        'datasetParentName',
        'targetcli',
        'democratic-csi/detachedSnapshots',
        'csi.storage.k8s.io/pvc/namespace',
      ]) {
        await rejected(
          () =>
              client.createVolume(create('pvc-1')..parameters[key] = 'foreign'),
        );
        await rejected(
          () => client.createSnapshot(
            CreateSnapshotRequest(
              name: 'snap',
              sourceVolumeId: 'pvc-1',
              parameters: {key: 'foreign'}.entries,
            ),
          ),
        );
      }
      await rejected(
        () => client.createVolume(
          create('pvc-1')..secrets['password'] = 'SUPER_SECRET',
        ),
      );
      await rejected(
        () => client.deleteVolume(
          DeleteVolumeRequest(
            volumeId: 'pvc-1',
            secrets: {'token': 'SUPER_SECRET'}.entries,
          ),
        ),
      );
      await rejected(
        () => client.validateVolumeCapabilities(
          ValidateVolumeCapabilitiesRequest(
            volumeId: 'pvc-1',
            volumeCapabilities: [capability()],
            volumeContext: {'share': '/foreign'}.entries,
          ),
        ),
      );
      await rejected(
        () => client.getCapacity(
          GetCapacityRequest(parameters: {'config': 'x'}.entries),
        ),
      );
      await rejected(
        () =>
            client.createVolume(create('pvc-1')..mutableParameters['x'] = 'x'),
      );
      await rejected(
        () => client.createVolume(
          create('pvc-1')
            ..volumeCapabilities.first.mount.mountFlags.add('rw;id'),
        ),
      );
      expect(rig.audit.join(), isNot(contains('SUPER_SECRET')));
    },
  );
  test(
    'numeric bounds, topology and capability fields fail before forwarding',
    () async {
      for (final range in [
        CapacityRange(requiredBytes: Int64(-1)),
        CapacityRange(requiredBytes: Int64(rig.config.maxBytes + 1)),
        CapacityRange(requiredBytes: Int64(20), limitBytes: Int64(10)),
        CapacityRange(),
      ]) {
        await rejected(
          () => client.createVolume(create('pvc-1')..capacityRange = range),
        );
      }
      for (final count in [-1, 10001]) {
        await rejected(
          () => client.listVolumes(ListVolumesRequest(maxEntries: count)),
        );
        await rejected(
          () => client.listSnapshots(ListSnapshotsRequest(maxEntries: count)),
        );
      }
      await rejected(
        () => client.createVolume(
          create('pvc-1')
            ..accessibilityRequirements = TopologyRequirement(
              requisite: [
                Topology(segments: {'zone': 'foreign'}.entries),
              ],
            ),
        ),
      );
      await rejected(
        () => client.getCapacity(
          GetCapacityRequest(
            accessibleTopology: Topology(segments: {'zone': 'foreign'}.entries),
          ),
        ),
      );
      for (final cap in [
        capability()..mount.fsType = 'nfs;id',
        capability()..mount.volumeMountGroup = '0;id',
        capability()
          ..accessMode.mode = VolumeCapability_AccessMode_Mode.UNKNOWN,
        capability()
          ..accessMode.mode =
              VolumeCapability_AccessMode_Mode.SINGLE_NODE_MULTI_WRITER,
        VolumeCapability(
          block: VolumeCapability_BlockVolume(),
          accessMode: capability().accessMode,
        ),
      ]) {
        await rejected(
          () => client.createVolume(
            create('pvc-1')
              ..volumeCapabilities.clear()
              ..volumeCapabilities.add(cap),
          ),
        );
      }
    },
  );
  test('disabled methods never call backend or advertise capability', () async {
    rig.config.methods.remove('DeleteVolume');
    try {
      await rejected(
        () => client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-1')),
        status: StatusCode.unimplemented,
      );
      expect(rig.gateway.allowedCapabilities, isNot(contains(1)));
    } finally {
      rig.config.methods.add('DeleteVolume');
    }
  });
  test(
    'malicious backend sources, tokens and unknown fields are rejected',
    () async {
      rig.handlers['CreateVolume'] = (_, __) async => CreateVolumeResponse(
        volume: volume(
          rig,
          'pvc-1',
          source: VolumeContentSource(
            volume: VolumeContentSource_VolumeSource(volumeId: 'tank/foreign'),
          ),
        ),
      );
      await expectLater(
        client.createVolume(create('pvc-1')),
        throwsA(code(StatusCode.dataLoss)),
      );
      rig.handlers['ListVolumes'] = (_, __) async =>
          ListVolumesResponse(nextToken: 'foreign-cache:0');
      await expectLater(
        client.listVolumes(ListVolumesRequest()),
        throwsA(code(StatusCode.dataLoss)),
      );
      rig.handlers['DeleteVolume'] = (_, __) async =>
          DeleteVolumeResponse.fromBuffer([0xf8, 0x07, 0x01]);
      await expectLater(
        client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-1')),
        throwsA(code(StatusCode.dataLoss)),
      );
      expect(rig.calls.length, 3);
    },
  );
  test('generative unsafe input rejection over real gRPC', () async {
    final random = Random(0xC51);
    const unsafe = [
      ';',
      '\n',
      ' ',
      '/',
      '@',
      '\$',
      '`',
      "'",
      '"',
      '\\',
      '\u0000',
    ];
    for (var i = 0; i < 150; i++) {
      final bad =
          'pvc-${random.nextInt(10000)}${unsafe[random.nextInt(unsafe.length)]}end';
      expect(() => rig.gateway.policy.leaf(bad), throwsA(isA<GrpcError>()));
      await rejected(
        () => client.deleteVolume(DeleteVolumeRequest(volumeId: bad)),
      );
    }
    for (var i = 0; i < 100; i++) {
      final id = 'pvc-${random.nextInt(1000000)}';
      rig.gateway.policy.leaf(id);
      rig.gateway.policy.snapshotId('$id@snapshot-${random.nextInt(1000000)}');
    }
  });
  test(
    'pagination is local, scope bound, replayable and invalid after restart',
    () async {
      rig.handlers['ListVolumes'] = (_, __) async => ListVolumesResponse(
        entries: [
          for (final id in ['pvc-a', 'pvc-b', 'pvc-c'])
            ListVolumesResponse_Entry(volume: volume(rig, id)),
        ],
      );
      final a = await client.listVolumes(ListVolumesRequest(maxEntries: 1));
      expect(rig.calls.single.request, ListVolumesRequest());
      expect(a.nextToken, isNotEmpty);
      await rejected(
        () => client.listVolumes(
          ListVolumesRequest(maxEntries: 1, startingToken: '../other:0'),
        ),
        status: StatusCode.aborted,
      );
      await rejected(
        () => client.listSnapshots(
          ListSnapshotsRequest(maxEntries: 1, startingToken: a.nextToken),
        ),
        status: StatusCode.aborted,
      );
      await rejected(
        () => client.listVolumes(
          ListVolumesRequest(maxEntries: 2, startingToken: a.nextToken),
        ),
        status: StatusCode.aborted,
      );
      final b = await client.listVolumes(
        ListVolumesRequest(maxEntries: 1, startingToken: a.nextToken),
      );
      expect(b.entries.single.volume.volumeId, 'pvc-b');
      expect(
        await client.listVolumes(
          ListVolumesRequest(maxEntries: 1, startingToken: a.nextToken),
        ),
        b,
      );
      final c = await client.listVolumes(
        ListVolumesRequest(maxEntries: 1, startingToken: b.nextToken),
      );
      expect(c.entries.single.volume.volumeId, 'pvc-c');
      expect(c.nextToken, isEmpty);
      expect(rig.calls.length, 1);
      for (final channel in rig.channels) {
        await channel.terminate();
      }
      await rig.server.shutdown();
      await rig.start();
      final restarted = ControllerClient(await rig.client());
      await rejected(
        () => restarted.listVolumes(
          ListVolumesRequest(maxEntries: 1, startingToken: a.nextToken),
        ),
        status: StatusCode.aborted,
      );
      client = restarted;
      identity = IdentityClient(rig.channels.last);
    },
  );
  test('list snapshots validates filters, backend ids and context', () async {
    rig.handlers['ListSnapshots'] = (_, __) async => ListSnapshotsResponse(
      entries: [
        ListSnapshotsResponse_Entry(snapshot: snapshot('pvc-a@snap', 'pvc-a')),
      ],
    );
    await client.listSnapshots(ListSnapshotsRequest(sourceVolumeId: 'pvc-a'));
    await expectLater(
      client.listSnapshots(ListSnapshotsRequest(sourceVolumeId: 'pvc-b')),
      throwsA(code(StatusCode.dataLoss)),
    );
    rig.handlers['ListVolumes'] = (_, __) async => ListVolumesResponse(
      entries: [
        ListVolumesResponse_Entry(
          volume: volume(rig, 'pvc-a')..volumeContext['share'] = '/foreign',
        ),
      ],
    );
    await expectLater(
      client.listVolumes(ListVolumesRequest()),
      throwsA(code(StatusCode.dataLoss)),
    );
    rig.handlers['ControllerGetVolume'] = (_, __) async =>
        ControllerGetVolumeResponse(volume: volume(rig, 'tank/foreign'));
    await expectLater(
      client.controllerGetVolume(ControllerGetVolumeRequest(volumeId: 'pvc-a')),
      throwsA(code(StatusCode.dataLoss)),
    );
  });
  test('errors and metadata are redacted while status codes survive', () async {
    rig.handlers['DeleteVolume'] = (_, c) async {
      expect(c.clientMetadata?['authorization'], isNull);
      throw const GrpcError.notFound('SUPER_SECRET /tank/foreign');
    };
    try {
      await client.deleteVolume(
        DeleteVolumeRequest(volumeId: 'pvc-a'),
        options: CallOptions(metadata: {'authorization': 'SUPER_SECRET'}),
      );
      fail('Expected error');
    } on GrpcError catch (e) {
      expect(e.code, StatusCode.notFound);
      expect(e.message, isNot(contains('SUPER_SECRET')));
    }
    expect(rig.audit.join(), isNot(contains('SUPER_SECRET')));
  });
  test('parallel calls, deadlines, cancellation and no write retry', () async {
    await Future.wait(
      List.generate(
        20,
        (i) => client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-$i')),
      ),
    );
    expect(rig.calls.length, 20);
    final started = Completer<ServiceCall>();
    rig.handlers['DeleteVolume'] = (_, c) async {
      if (!started.isCompleted) started.complete(c);
      await Future<void>.delayed(const Duration(milliseconds: 250));
      return DeleteVolumeResponse();
    };
    final before = rig.calls.length;
    await expectLater(
      client.deleteVolume(
        DeleteVolumeRequest(volumeId: 'pvc-timeout'),
        options: CallOptions(timeout: const Duration(milliseconds: 70)),
      ),
      throwsA(code(StatusCode.deadlineExceeded)),
    );
    final backendCall = await started.future;
    expect(backendCall.deadline, isNotNull);
    await Future<void>.delayed(const Duration(milliseconds: 50));
    expect(backendCall.isCanceled, isTrue);
    expect(rig.calls.length, before + 1);
    final canceled = client.deleteVolume(
      DeleteVolumeRequest(volumeId: 'pvc-cancel'),
    );
    final caught = expectLater(canceled, throwsA(isA<GrpcError>()));
    await Future<void>.delayed(const Duration(milliseconds: 30));
    await canceled.cancel();
    await caught;
    await Future<void>.delayed(const Duration(milliseconds: 50));
    expect(rig.calls.last.call.isCanceled, isTrue);
    rig.handlers['DeleteVolume'] = (_, __) async =>
        throw const GrpcError.unavailable('secret backend failure');
    final count = rig.calls.length;
    await expectLater(
      client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-failed')),
      throwsA(code(StatusCode.unavailable)),
    );
    expect(rig.calls.length, count + 1);
  });
  test('clients verify the server CA and hostname', () async {
    for (final badCa in [false, true]) {
      final context = SecurityContext(withTrustedRoots: false)
        ..setTrustedCertificates(
          '${rig.dir.path}/${badCa ? 'untrusted' : 'ca'}.pem',
        )
        ..useCertificateChain('${rig.dir.path}/allowed.pem')
        ..usePrivateKey('${rig.dir.path}/allowed.key')
        ..setAlpnProtocols(['h2'], false);
      final channel = ClientChannel(
        '127.0.0.1',
        port: rig.server.port!,
        options: ChannelOptions(
          credentials: ClientTls(
            context,
            authority: badCa ? 'localhost' : 'wrong.example',
          ),
        ),
      );
      rig.channels.add(channel);
      await rejected(
        () => IdentityClient(channel).probe(
          ProbeRequest(),
          options: CallOptions(timeout: const Duration(seconds: 2)),
        ),
      );
    }
  });
  test(
    'stateful CSI lifecycle and idempotency survive proxy restart',
    () async {
      final volumes = <String, Volume>{};
      final snapshots = <String, Snapshot>{};
      rig.handlers['CreateVolume'] = (r, _) async {
        final q = r as CreateVolumeRequest;
        final existing = volumes[q.name];
        if (existing != null &&
            q.capacityRange.requiredBytes > existing.capacityBytes)
          throw const GrpcError.alreadyExists('different capacity');
        return CreateVolumeResponse(
          volume: volumes.putIfAbsent(q.name, () => volume(rig, q.name)),
        );
      };
      rig.handlers['CreateSnapshot'] = (r, _) async {
        final q = r as CreateSnapshotRequest;
        if (!volumes.containsKey(q.sourceVolumeId))
          throw const GrpcError.notFound('source absent');
        final id = '${q.sourceVolumeId}@${q.name}';
        return CreateSnapshotResponse(
          snapshot: snapshots.putIfAbsent(
            id,
            () => snapshot(id, q.sourceVolumeId),
          ),
        );
      };
      rig.handlers['DeleteVolume'] = (r, _) async {
        volumes.remove((r as DeleteVolumeRequest).volumeId);
        return DeleteVolumeResponse();
      };
      rig.handlers['DeleteSnapshot'] = (r, _) async {
        snapshots.remove((r as DeleteSnapshotRequest).snapshotId);
        return DeleteSnapshotResponse();
      };
      final original = await client.createVolume(create('pvc-life'));
      expect(await client.createVolume(create('pvc-life')), original);
      await expectLater(
        client.createVolume(
          create('pvc-life')..capacityRange.requiredBytes = Int64(2147483648),
        ),
        throwsA(code(StatusCode.alreadyExists)),
      );
      final snapRequest = CreateSnapshotRequest(
        name: 'snap-life',
        sourceVolumeId: 'pvc-life',
      );
      final savedSnapshot = await client.createSnapshot(snapRequest);
      for (final channel in rig.channels) {
        await channel.terminate();
      }
      await rig.server.shutdown();
      await rig.start();
      client = ControllerClient(await rig.client());
      identity = IdentityClient(rig.channels.last);
      expect(await client.createVolume(create('pvc-life')), original);
      expect(await client.createSnapshot(snapRequest), savedSnapshot);
      for (var i = 0; i < 2; i++) {
        await client.deleteSnapshot(
          DeleteSnapshotRequest(snapshotId: 'pvc-life@snap-life'),
        );
        await client.deleteVolume(DeleteVolumeRequest(volumeId: 'pvc-life'));
      }
      expect(volumes, isEmpty);
      expect(snapshots, isEmpty);
    },
  );
}
