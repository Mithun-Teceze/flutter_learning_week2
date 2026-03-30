//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:local_api_client/src/model/api_v1_notes_get200_response_result_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_notes_post201_response.g.dart';

/// ApiV1NotesPost201Response
///
/// Properties:
/// * [success]
/// * [result]
@BuiltValue()
abstract class ApiV1NotesPost201Response
    implements
        Built<ApiV1NotesPost201Response, ApiV1NotesPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'result')
  ApiV1NotesGet200ResponseResultInner get result;

  ApiV1NotesPost201Response._();

  factory ApiV1NotesPost201Response(
          [void updates(ApiV1NotesPost201ResponseBuilder b)]) =
      _$ApiV1NotesPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1NotesPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1NotesPost201Response> get serializer =>
      _$ApiV1NotesPost201ResponseSerializer();
}

class _$ApiV1NotesPost201ResponseSerializer
    implements PrimitiveSerializer<ApiV1NotesPost201Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1NotesPost201Response,
    _$ApiV1NotesPost201Response
  ];

  @override
  final String wireName = r'ApiV1NotesPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1NotesPost201Response object, {
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
      specifiedType: const FullType(ApiV1NotesGet200ResponseResultInner),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1NotesPost201Response object, {
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
    required ApiV1NotesPost201ResponseBuilder result,
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
            specifiedType: const FullType(ApiV1NotesGet200ResponseResultInner),
          ) as ApiV1NotesGet200ResponseResultInner;
          result.result.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1NotesPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1NotesPost201ResponseBuilder();
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
