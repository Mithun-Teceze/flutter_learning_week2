//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_login_post_request.g.dart';

/// ApiV1AuthLoginPostRequest
///
/// Properties:
/// * [email]
/// * [password]
@BuiltValue()
abstract class ApiV1AuthLoginPostRequest
    implements
        Built<ApiV1AuthLoginPostRequest, ApiV1AuthLoginPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  ApiV1AuthLoginPostRequest._();

  factory ApiV1AuthLoginPostRequest(
          [void updates(ApiV1AuthLoginPostRequestBuilder b)]) =
      _$ApiV1AuthLoginPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthLoginPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthLoginPostRequest> get serializer =>
      _$ApiV1AuthLoginPostRequestSerializer();
}

class _$ApiV1AuthLoginPostRequestSerializer
    implements PrimitiveSerializer<ApiV1AuthLoginPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthLoginPostRequest,
    _$ApiV1AuthLoginPostRequest
  ];

  @override
  final String wireName = r'ApiV1AuthLoginPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthLoginPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'password';
    yield serializers.serialize(
      object.password,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthLoginPostRequest object, {
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
    required ApiV1AuthLoginPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthLoginPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthLoginPostRequestBuilder();
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
