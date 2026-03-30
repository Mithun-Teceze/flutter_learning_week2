//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_id_put_request.g.dart';

/// ApiV1NotesIdPutRequest
///
/// Properties:
/// * [title]
/// * [content]
@BuiltValue()
abstract class ApiV1NotesIdPutRequest
    implements Built<ApiV1NotesIdPutRequest, ApiV1NotesIdPutRequestBuilder> {
  @BuiltValueField(wireName: r'title')
  String? get title;

  @BuiltValueField(wireName: r'content')
  String? get content;

  ApiV1NotesIdPutRequest._();

  factory ApiV1NotesIdPutRequest(
          [void updates(ApiV1NotesIdPutRequestBuilder b)]) =
      _$ApiV1NotesIdPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesIdPutRequestBuilder b) =>
      b..title = 'Untitled';

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesIdPutRequest> get serializer =>
      _$ApiV1NotesIdPutRequestSerializer();
}

class _$ApiV1NotesIdPutRequestSerializer
    implements PrimitiveSerializer<ApiV1NotesIdPutRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesIdPutRequest,
    _$ApiV1NotesIdPutRequest
  ];

  @override
  final String wireName = r'ApiV1NotesIdPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesIdPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.title != null) {
      yield r'title';
      yield serializers.serialize(
        object.title,
        specifiedType: const FullType(String),
      );
    }
    if (object.content != null) {
      yield r'content';
      yield serializers.serialize(
        object.content,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesIdPutRequest object, {
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
    required ApiV1NotesIdPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'title':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.title = valueDes;
          break;
        case r'content':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.content = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesIdPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesIdPutRequestBuilder();
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
