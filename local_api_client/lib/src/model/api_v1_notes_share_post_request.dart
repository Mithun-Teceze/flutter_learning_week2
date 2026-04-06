//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_share_post_request.g.dart';

/// ApiV1NotesSharePostRequest
///
/// Properties:
/// * [userIds]
/// * [noteId]
@BuiltValue()
abstract class ApiV1NotesSharePostRequest
    implements
        Built<ApiV1NotesSharePostRequest, ApiV1NotesSharePostRequestBuilder> {
  @BuiltValueField(wireName: r'userIds')
  BuiltList<String> get userIds;

  @BuiltValueField(wireName: r'noteId')
  String get noteId;

  ApiV1NotesSharePostRequest._();

  factory ApiV1NotesSharePostRequest(
          [void updates(ApiV1NotesSharePostRequestBuilder b)]) =
      _$ApiV1NotesSharePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesSharePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesSharePostRequest> get serializer =>
      _$ApiV1NotesSharePostRequestSerializer();
}

class _$ApiV1NotesSharePostRequestSerializer
    implements PrimitiveSerializer<ApiV1NotesSharePostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesSharePostRequest,
    _$ApiV1NotesSharePostRequest
  ];

  @override
  final String wireName = r'ApiV1NotesSharePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesSharePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'userIds';
    yield serializers.serialize(
      object.userIds,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'noteId';
    yield serializers.serialize(
      object.noteId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesSharePostRequest object, {
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
    required ApiV1NotesSharePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'userIds':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.userIds.replace(valueDes);
          break;
        case r'noteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noteId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesSharePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesSharePostRequestBuilder();
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
