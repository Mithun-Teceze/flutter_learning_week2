//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_get200_response_result_inner.g.dart';

/// ApiV1NotesGet200ResponseResultInner
///
/// Properties:
/// * [id] - Unique note identifier
/// * [title] - Note title
/// * [content] - Note body content
/// * [userId] - Owner user ID
/// * [createdAt] - Creation timestamp
/// * [updatedAt] - Last update timestamp
@BuiltValue()
abstract class ApiV1NotesGet200ResponseResultInner
    implements
        Built<ApiV1NotesGet200ResponseResultInner,
            ApiV1NotesGet200ResponseResultInnerBuilder> {
  /// Unique note identifier
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Note title
  @BuiltValueField(wireName: r'title')
  String get title;

  /// Note body content
  @BuiltValueField(wireName: r'content')
  String get content;

  /// Owner user ID
  @BuiltValueField(wireName: r'userId')
  String get userId;

  /// Creation timestamp
  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  /// Last update timestamp
  @BuiltValueField(wireName: r'updatedAt')
  DateTime? get updatedAt;

  ApiV1NotesGet200ResponseResultInner._();

  factory ApiV1NotesGet200ResponseResultInner(
          [void updates(ApiV1NotesGet200ResponseResultInnerBuilder b)]) =
      _$ApiV1NotesGet200ResponseResultInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesGet200ResponseResultInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesGet200ResponseResultInner> get serializer =>
      _$ApiV1NotesGet200ResponseResultInnerSerializer();
}

class _$ApiV1NotesGet200ResponseResultInnerSerializer
    implements PrimitiveSerializer<ApiV1NotesGet200ResponseResultInner> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesGet200ResponseResultInner,
    _$ApiV1NotesGet200ResponseResultInner
  ];

  @override
  final String wireName = r'ApiV1NotesGet200ResponseResultInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesGet200ResponseResultInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'title';
    yield serializers.serialize(
      object.title,
      specifiedType: const FullType(String),
    );
    yield r'content';
    yield serializers.serialize(
      object.content,
      specifiedType: const FullType(String),
    );
    yield r'userId';
    yield serializers.serialize(
      object.userId,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.updatedAt != null) {
      yield r'updatedAt';
      yield serializers.serialize(
        object.updatedAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesGet200ResponseResultInner object, {
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
    required ApiV1NotesGet200ResponseResultInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
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
        case r'userId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updatedAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesGet200ResponseResultInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesGet200ResponseResultInnerBuilder();
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
