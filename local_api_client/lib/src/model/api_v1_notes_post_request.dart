//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:local_api_client/src/model/api_v1_notes_post_request_file_metadata.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_post_request.g.dart';

/// ApiV1NotesPostRequest
///
/// Properties:
/// * [title]
/// * [content]
/// * [fileMetadata]
@BuiltValue()
abstract class ApiV1NotesPostRequest
    implements Built<ApiV1NotesPostRequest, ApiV1NotesPostRequestBuilder> {
  @BuiltValueField(wireName: r'title')
  String get title;

  @BuiltValueField(wireName: r'content')
  String get content;

  @BuiltValueField(wireName: r'fileMetadata')
  ApiV1NotesPostRequestFileMetadata? get fileMetadata;

  ApiV1NotesPostRequest._();

  factory ApiV1NotesPostRequest(
      [void updates(ApiV1NotesPostRequestBuilder b)]) = _$ApiV1NotesPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesPostRequest> get serializer =>
      _$ApiV1NotesPostRequestSerializer();
}

class _$ApiV1NotesPostRequestSerializer
    implements PrimitiveSerializer<ApiV1NotesPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesPostRequest,
    _$ApiV1NotesPostRequest
  ];

  @override
  final String wireName = r'ApiV1NotesPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.fileMetadata != null) {
      yield r'fileMetadata';
      yield serializers.serialize(
        object.fileMetadata,
        specifiedType: const FullType(ApiV1NotesPostRequestFileMetadata),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesPostRequest object, {
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
    required ApiV1NotesPostRequestBuilder result,
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
        case r'fileMetadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiV1NotesPostRequestFileMetadata),
          ) as ApiV1NotesPostRequestFileMetadata;
          result.fileMetadata.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesPostRequestBuilder();
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
