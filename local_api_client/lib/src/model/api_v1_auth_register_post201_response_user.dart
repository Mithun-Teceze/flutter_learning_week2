//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'api_v1_auth_register_post201_response_user.g.dart';

/// ApiV1AuthRegisterPost201ResponseUser
///
/// Properties:
/// * [id]
/// * [email]
/// * [name]
@BuiltValue()
abstract class ApiV1AuthRegisterPost201ResponseUser
    implements
        Built<ApiV1AuthRegisterPost201ResponseUser,
            ApiV1AuthRegisterPost201ResponseUserBuilder> {
  @BuiltValueField(wireName: r'id')
  String get id;

  @BuiltValueField(wireName: r'email')
  String get email;

  @BuiltValueField(wireName: r'name')
  String? get name;

  ApiV1AuthRegisterPost201ResponseUser._();

  factory ApiV1AuthRegisterPost201ResponseUser(
          [void updates(ApiV1AuthRegisterPost201ResponseUserBuilder b)]) =
      _$ApiV1AuthRegisterPost201ResponseUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ApiV1AuthRegisterPost201ResponseUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ApiV1AuthRegisterPost201ResponseUser> get serializer =>
      _$ApiV1AuthRegisterPost201ResponseUserSerializer();
}

class _$ApiV1AuthRegisterPost201ResponseUserSerializer
    implements PrimitiveSerializer<ApiV1AuthRegisterPost201ResponseUser> {
  @override
  final Iterable<Type> types = const [
    ApiV1AuthRegisterPost201ResponseUser,
    _$ApiV1AuthRegisterPost201ResponseUser
  ];

  @override
  final String wireName = r'ApiV1AuthRegisterPost201ResponseUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ApiV1AuthRegisterPost201ResponseUser object, {
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
  }

  @override
  Object serialize(
    Serializers serializers,
    ApiV1AuthRegisterPost201ResponseUser object, {
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
    required ApiV1AuthRegisterPost201ResponseUserBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ApiV1AuthRegisterPost201ResponseUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ApiV1AuthRegisterPost201ResponseUserBuilder();
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
