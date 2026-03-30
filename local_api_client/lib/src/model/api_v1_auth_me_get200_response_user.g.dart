// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_me_get200_response_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthMeGet200ResponseUser extends ApiV1AuthMeGet200ResponseUser {
  @override
  final String id;
  @override
  final String email;
  @override
  final String? name;
  @override
  final DateTime createdAt;

  factory _$ApiV1AuthMeGet200ResponseUser(
          [void Function(ApiV1AuthMeGet200ResponseUserBuilder)? updates]) =>
      (ApiV1AuthMeGet200ResponseUserBuilder()..update(updates))._build();

  _$ApiV1AuthMeGet200ResponseUser._(
      {required this.id,
      required this.email,
      this.name,
      required this.createdAt})
      : super._();
  @override
  ApiV1AuthMeGet200ResponseUser rebuild(
          void Function(ApiV1AuthMeGet200ResponseUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthMeGet200ResponseUserBuilder toBuilder() =>
      ApiV1AuthMeGet200ResponseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthMeGet200ResponseUser &&
        id == other.id &&
        email == other.email &&
        name == other.name &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthMeGet200ResponseUser')
          ..add('id', id)
          ..add('email', email)
          ..add('name', name)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ApiV1AuthMeGet200ResponseUserBuilder
    implements
        Builder<ApiV1AuthMeGet200ResponseUser,
            ApiV1AuthMeGet200ResponseUserBuilder> {
  _$ApiV1AuthMeGet200ResponseUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  ApiV1AuthMeGet200ResponseUserBuilder() {
    ApiV1AuthMeGet200ResponseUser._defaults(this);
  }

  ApiV1AuthMeGet200ResponseUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthMeGet200ResponseUser other) {
    _$v = other as _$ApiV1AuthMeGet200ResponseUser;
  }

  @override
  void update(void Function(ApiV1AuthMeGet200ResponseUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthMeGet200ResponseUser build() => _build();

  _$ApiV1AuthMeGet200ResponseUser _build() {
    final _$result = _$v ??
        _$ApiV1AuthMeGet200ResponseUser._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ApiV1AuthMeGet200ResponseUser', 'id'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ApiV1AuthMeGet200ResponseUser', 'email'),
          name: name,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ApiV1AuthMeGet200ResponseUser', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
