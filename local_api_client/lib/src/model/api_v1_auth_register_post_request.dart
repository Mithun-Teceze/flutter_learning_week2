//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_register_post_request.g.dart';

/// ApiV1AuthRegisterPostRequest
///
/// Properties:
/// * [email]
/// * [password]
/// * [name]
@BuiltValue()
abstract class ApiV1AuthRegisterPostRequest
    implements
        Built<ApiV1AuthRegisterPostRequest,
            ApiV1AuthRegisterPostRequestBuilder> {
  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'password')
  String get password;

  @BuiltValueField(wireName: r'name')
  String get name;

  ApiV1AuthRegisterPostRequest._();

  factory ApiV1AuthRegisterPostRequest(
          [void updates(ApiV1AuthRegisterPostRequestBuilder b)]) =
      _$ApiV1AuthRegisterPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthRegisterPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthRegisterPostRequest> get serializer =>
      _$ApiV1AuthRegisterPostRequestSerializer();
}

class _$ApiV1AuthRegisterPostRequestSerializer
    implements PrimitiveSerializer<ApiV1AuthRegisterPostRequest> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthRegisterPostRequest,
    _$ApiV1AuthRegisterPostRequest
  ];

  @override
  final String wireName = r'ApiV1AuthRegisterPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthRegisterPostRequest object, {
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
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthRegisterPostRequest object, {
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
    required ApiV1AuthRegisterPostRequestBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthRegisterPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthRegisterPostRequestBuilder();
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
