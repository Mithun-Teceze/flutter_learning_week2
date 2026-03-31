//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_files_post201_response_result.g.dart';

/// ApiV1FilesPost201ResponseResult
///
/// Properties:
/// * [id]
/// * [filename]
/// * [mimeType]
/// * [size]
/// * [noteId]
/// * [storageKey]
/// * [uploadedBy]
/// * [createdAt]
@BuiltValue()
abstract class ApiV1FilesPost201ResponseResult
    implements
        Built<ApiV1FilesPost201ResponseResult,
            ApiV1FilesPost201ResponseResultBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'filename')
  String get filename;

  @BuiltValueField(wireName: r'mimeType')
  String get mimeType;

  @BuiltValueField(wireName: r'size')
  num get size;

  @BuiltValueField(wireName: r'noteId')
  String get noteId;

  @BuiltValueField(wireName: r'storageKey')
  String get storageKey;

  @BuiltValueField(wireName: r'uploadedBy')
  String get uploadedBy;

  @BuiltValueField(wireName: r'createdAt')
  String get createdAt;

  ApiV1FilesPost201ResponseResult._();

  factory ApiV1FilesPost201ResponseResult(
          [void updates(ApiV1FilesPost201ResponseResultBuilder b)]) =
      _$ApiV1FilesPost201ResponseResult;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1FilesPost201ResponseResultBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1FilesPost201ResponseResult> get serializer =>
      _$ApiV1FilesPost201ResponseResultSerializer();
}

class _$ApiV1FilesPost201ResponseResultSerializer
    implements PrimitiveSerializer<ApiV1FilesPost201ResponseResult> {
  @override
  final Iterable<Type> types = const [
    ApiV1FilesPost201ResponseResult,
    _$ApiV1FilesPost201ResponseResult
  ];

  @override
  final String wireName = r'ApiV1FilesPost201ResponseResult';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1FilesPost201ResponseResult object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
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
    yield r'noteId';
    yield serializers.serialize(
      object.noteId,
      specifiedType: const FullType(String),
    );
    yield r'storageKey';
    yield serializers.serialize(
      object.storageKey,
      specifiedType: const FullType(String),
    );
    yield r'uploadedBy';
    yield serializers.serialize(
      object.uploadedBy,
      specifiedType: const FullType(String),
    );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1FilesPost201ResponseResult object, {
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
    required ApiV1FilesPost201ResponseResultBuilder result,
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
        case r'noteId':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.noteId = valueDes;
          break;
        case r'storageKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.storageKey = valueDes;
          break;
        case r'uploadedBy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uploadedBy = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1FilesPost201ResponseResult deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1FilesPost201ResponseResultBuilder();
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
