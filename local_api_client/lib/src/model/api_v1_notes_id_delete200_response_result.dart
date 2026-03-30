//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_id_delete200_response_result.g.dart';

/// ApiV1NotesIdDelete200ResponseResult
///
/// Properties:
/// * [message]
/// * [deletedId]
@BuiltValue()
abstract class ApiV1NotesIdDelete200ResponseResult
    implements
        Built<ApiV1NotesIdDelete200ResponseResult,
            ApiV1NotesIdDelete200ResponseResultBuilder> {
  @BuiltValueField(wireName: r'message')
  String get message;

  @BuiltValueField(wireName: r'deletedId')
  String get deletedId;

  ApiV1NotesIdDelete200ResponseResult._();

  factory ApiV1NotesIdDelete200ResponseResult(
          [void updates(ApiV1NotesIdDelete200ResponseResultBuilder b)]) =
      _$ApiV1NotesIdDelete200ResponseResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesIdDelete200ResponseResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesIdDelete200ResponseResult> get serializer =>
      _$ApiV1NotesIdDelete200ResponseResultSerializer();
}

class _$ApiV1NotesIdDelete200ResponseResultSerializer
    implements PrimitiveSerializer<ApiV1NotesIdDelete200ResponseResult> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesIdDelete200ResponseResult,
    _$ApiV1NotesIdDelete200ResponseResult
  ];

  @override
  final String wireName = r'ApiV1NotesIdDelete200ResponseResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesIdDelete200ResponseResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'message';
    yield serializers.serialize(
      object.message,
      specifiedType: const FullType(String),
    );
    yield r'deletedId';
    yield serializers.serialize(
      object.deletedId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesIdDelete200ResponseResult object, {
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
    required ApiV1NotesIdDelete200ResponseResultBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'message':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.message = valueDes;
          break;
        case r'deletedId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.deletedId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesIdDelete200ResponseResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesIdDelete200ResponseResultBuilder();
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
