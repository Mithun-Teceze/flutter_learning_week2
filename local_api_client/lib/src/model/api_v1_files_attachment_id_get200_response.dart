//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_files_attachment_id_get200_response.g.dart';

/// ApiV1FilesAttachmentIdGet200Response
///
/// Properties:
/// * [success]
/// * [result]
@BuiltValue()
abstract class ApiV1FilesAttachmentIdGet200Response
    implements
        Built<ApiV1FilesAttachmentIdGet200Response,
            ApiV1FilesAttachmentIdGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'result')
  String get result;

  ApiV1FilesAttachmentIdGet200Response._();

  factory ApiV1FilesAttachmentIdGet200Response(
          [void updates(ApiV1FilesAttachmentIdGet200ResponseBuilder b)]) =
      _$ApiV1FilesAttachmentIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1FilesAttachmentIdGet200ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1FilesAttachmentIdGet200Response> get serializer =>
      _$ApiV1FilesAttachmentIdGet200ResponseSerializer();
}

class _$ApiV1FilesAttachmentIdGet200ResponseSerializer
    implements PrimitiveSerializer<ApiV1FilesAttachmentIdGet200Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1FilesAttachmentIdGet200Response,
    _$ApiV1FilesAttachmentIdGet200Response
  ];

  @override
  final String wireName = r'ApiV1FilesAttachmentIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1FilesAttachmentIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'result';
    yield serializers.serialize(
      object.result,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1FilesAttachmentIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ApiV1FilesAttachmentIdGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'result':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.result = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1FilesAttachmentIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1FilesAttachmentIdGet200ResponseBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}
