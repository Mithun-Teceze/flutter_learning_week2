//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_me_get200_response_user.g.dart';

/// ApiV1AuthMeGet200ResponseUser
///
/// Properties:
/// * [id]
/// * [email]
/// * [name]
/// * [createdAt]
@BuiltValue()
abstract class ApiV1AuthMeGet200ResponseUser
    implements
        Built<ApiV1AuthMeGet200ResponseUser,
            ApiV1AuthMeGet200ResponseUserBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  @BuiltValueField(wireName: r'createdAt')
  DateTime get createdAt;

  ApiV1AuthMeGet200ResponseUser._();

  factory ApiV1AuthMeGet200ResponseUser(
          [void updates(ApiV1AuthMeGet200ResponseUserBuilder b)]) =
      _$ApiV1AuthMeGet200ResponseUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthMeGet200ResponseUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthMeGet200ResponseUser> get serializer =>
      _$ApiV1AuthMeGet200ResponseUserSerializer();
}

class _$ApiV1AuthMeGet200ResponseUserSerializer
    implements PrimitiveSerializer<ApiV1AuthMeGet200ResponseUser> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthMeGet200ResponseUser,
    _$ApiV1AuthMeGet200ResponseUser
  ];

  @override
  final String wireName = r'ApiV1AuthMeGet200ResponseUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthMeGet200ResponseUser object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield object.name == null
        ? null
        : serializers.serialize(
            object.name,
            specifiedType: const FullType.nullable(String),
          );
    yield r'createdAt';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthMeGet200ResponseUser object, {
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
    required ApiV1AuthMeGet200ResponseUserBuilder result,
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
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        case r'createdAt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
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
  ApiV1AuthMeGet200ResponseUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthMeGet200ResponseUserBuilder();
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
