// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_register_post201_response_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthRegisterPost201ResponseUser
    extends ApiV1AuthRegisterPost201ResponseUser {
  @override
  final String id;
  @override
  final String email;
  @override
  final String? name;

  factory _$ApiV1AuthRegisterPost201ResponseUser(
          [void Function(ApiV1AuthRegisterPost201ResponseUserBuilder)?
              updates]) =>
      (ApiV1AuthRegisterPost201ResponseUserBuilder()..update(updates))._build();

  _$ApiV1AuthRegisterPost201ResponseUser._(
      {required this.id, required this.email, this.name})
      : super._();
  @override
  ApiV1AuthRegisterPost201ResponseUser rebuild(
          void Function(ApiV1AuthRegisterPost201ResponseUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthRegisterPost201ResponseUserBuilder toBuilder() =>
      ApiV1AuthRegisterPost201ResponseUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthRegisterPost201ResponseUser &&
        id == other.id &&
        email == other.email &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthRegisterPost201ResponseUser')
          ..add('id', id)
          ..add('email', email)
          ..add('name', name))
        .toString();
  }
}

class ApiV1AuthRegisterPost201ResponseUserBuilder
    implements
        Builder<ApiV1AuthRegisterPost201ResponseUser,
            ApiV1AuthRegisterPost201ResponseUserBuilder> {
  _$ApiV1AuthRegisterPost201ResponseUser? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiV1AuthRegisterPost201ResponseUserBuilder() {
    ApiV1AuthRegisterPost201ResponseUser._defaults(this);
  }

  ApiV1AuthRegisterPost201ResponseUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthRegisterPost201ResponseUser other) {
    _$v = other as _$ApiV1AuthRegisterPost201ResponseUser;
  }

  @override
  void update(
      void Function(ApiV1AuthRegisterPost201ResponseUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthRegisterPost201ResponseUser build() => _build();

  _$ApiV1AuthRegisterPost201ResponseUser _build() {
    final _$result = _$v ??
        _$ApiV1AuthRegisterPost201ResponseUser._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ApiV1AuthRegisterPost201ResponseUser', 'id'),
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ApiV1AuthRegisterPost201ResponseUser', 'email'),
          name: name,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
