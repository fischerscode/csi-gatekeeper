import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:protobuf/protobuf.dart';

/// Inspect original bytes: protobuf runtimes may discard unknown map-entry
/// fields or overwritten oneof values before normal message validation.
void validateWire(List<int> bytes, BuilderInfo info, [int depth = 0]) {
  if (depth > 32) throw const FormatException('Request rejected');
  var position = 0;
  int varint() {
    var result = 0;
    for (var i = 0; i < 10; i++) {
      if (position >= bytes.length)
        throw const FormatException('Request rejected');
      final b = bytes[position++];
      result |= (b & 127) << (i * 7);
      if (b < 128) return result;
    }
    throw const FormatException('Request rejected');
  }

  while (position < bytes.length) {
    final tag = varint();
    final field = info.fieldInfo[tag >> 3];
    if (field == null) throw const FormatException('Request rejected');
    switch (tag & 7) {
      case 0:
        varint();
      case 1:
        position += 8;
      case 5:
        position += 4;
      case 2:
        final length = varint();
        final end = position + length;
        if (length < 0 || end > bytes.length)
          throw const FormatException('Request rejected');
        final nested = field is MapFieldInfo
            ? field.mapEntryBuilderInfo
            : field.subBuilder?.call().info_;
        if (nested != null)
          validateWire(bytes.sublist(position, end), nested, depth + 1);
        position = end;
      default:
        throw const FormatException('Request rejected');
    }
    if (position > bytes.length)
      throw const FormatException('Request rejected');
  }
}

class _StrictMethod extends ServiceMethod {
  final ServiceMethod original;
  _StrictMethod(this.original)
    : super(
        original.name,
        original.handler,
        original.streamingRequest,
        original.streamingResponse,
        original.requestDeserializer,
        (dynamic value) => original.serialize(value),
      );
  @override
  dynamic deserialize(List<int> bytes) {
    try {
      final prototype =
          original.requestDeserializer(<int>[]) as GeneratedMessage;
      validateWire(bytes, prototype.info_);
      return original.deserialize(bytes);
    } on Object {
      throw const FormatException('Request rejected');
    }
  }

  @override
  StreamController createRequestStream(StreamSubscription incoming) =>
      original.createRequestStream(incoming);
  @override
  Stream handle(
    ServiceCall call,
    Stream requests,
    List<ServerInterceptor> interceptors,
  ) => original.handle(call, requests, interceptors);
}

mixin StrictWire on Service {
  @override
  void $addMethod(ServiceMethod method) =>
      super.$addMethod(_StrictMethod(method));
}
