//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:local_api_client/src/model/api_v1_auth_register_post201_response_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_register_post201_response.g.dart';

/// ApiV1AuthRegisterPost201Response
///
/// Properties:
/// * [success]
/// * [user]
/// * [token]
@BuiltValue()
abstract class ApiV1AuthRegisterPost201Response
    implements
        Built<ApiV1AuthRegisterPost201Response,
            ApiV1AuthRegisterPost201ResponseBuilder> {
  @BuiltValueField(wireName: r'success')
  bool get success;

  @BuiltValueField(wireName: r'user')
  ApiV1AuthRegisterPost201ResponseUser get user;

  @BuiltValueField(wireName: r'token')
  String get token;

  ApiV1AuthRegisterPost201Response._();

  factory ApiV1AuthRegisterPost201Response(
          [void updates(ApiV1AuthRegisterPost201ResponseBuilder b)]) =
      _$ApiV1AuthRegisterPost201Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthRegisterPost201ResponseBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthRegisterPost201Response> get serializer =>
      _$ApiV1AuthRegisterPost201ResponseSerializer();
}

class _$ApiV1AuthRegisterPost201ResponseSerializer
    implements PrimitiveSerializer<ApiV1AuthRegisterPost201Response> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthRegisterPost201Response,
    _$ApiV1AuthRegisterPost201Response
  ];

  @override
  final String wireName = r'ApiV1AuthRegisterPost201Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthRegisterPost201Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'user';
    yield serializers.serialize(
      object.user,
      specifiedType: const FullType(ApiV1AuthRegisterPost201ResponseUser),
    );
    yield r'token';
    yield serializers.serialize(
      object.token,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthRegisterPost201Response object, {
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
    required ApiV1AuthRegisterPost201ResponseBuilder result,
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
        case r'user':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ApiV1AuthRegisterPost201ResponseUser),
          ) as ApiV1AuthRegisterPost201ResponseUser;
          result.user.replace(valueDes);
          break;
        case r'token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.token = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthRegisterPost201Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthRegisterPost201ResponseBuilder();
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
