//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_post_request_file_metadata.g.dart';

/// ApiV1NotesPostRequestFileMetadata
///
/// Properties:
/// * [filename]
/// * [mimeType]
/// * [size]
@BuiltValue()
abstract class ApiV1NotesPostRequestFileMetadata
    implements
        Built<ApiV1NotesPostRequestFileMetadata,
            ApiV1NotesPostRequestFileMetadataBuilder> {
  @BuiltValueField(wireName: r'filename')
  String get filename;

  @BuiltValueField(wireName: r'mimeType')
  String get mimeType;

  @BuiltValueField(wireName: r'size')
  num get size;

  ApiV1NotesPostRequestFileMetadata._();

  factory ApiV1NotesPostRequestFileMetadata(
          [void updates(ApiV1NotesPostRequestFileMetadataBuilder b)]) =
      _$ApiV1NotesPostRequestFileMetadata;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesPostRequestFileMetadataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesPostRequestFileMetadata> get serializer =>
      _$ApiV1NotesPostRequestFileMetadataSerializer();
}

class _$ApiV1NotesPostRequestFileMetadataSerializer
    implements PrimitiveSerializer<ApiV1NotesPostRequestFileMetadata> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesPostRequestFileMetadata,
    _$ApiV1NotesPostRequestFileMetadata
  ];

  @override
  final String wireName = r'ApiV1NotesPostRequestFileMetadata';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesPostRequestFileMetadata object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'filename';
    yield serializers.serialize(
      object.filename,
      specifiedType: const FullType(String),
    );
    yield r'mimeType';
    yield serializers.serialize(
      object.mimeType,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(num),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesPostRequestFileMetadata object, {
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
    required ApiV1NotesPostRequestFileMetadataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'filename':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.filename = valueDes;
          break;
        case r'mimeType':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.mimeType = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.size = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesPostRequestFileMetadata deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesPostRequestFileMetadataBuilder();
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
