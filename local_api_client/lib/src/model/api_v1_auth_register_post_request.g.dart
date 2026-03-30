// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_register_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthRegisterPostRequest extends ApiV1AuthRegisterPostRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final String name;

  factory _$ApiV1AuthRegisterPostRequest(
          [void Function(ApiV1AuthRegisterPostRequestBuilder)? updates]) =>
      (ApiV1AuthRegisterPostRequestBuilder()..update(updates))._build();

  _$ApiV1AuthRegisterPostRequest._(
      {required this.email, required this.password, required this.name})
      : super._();
  @override
  ApiV1AuthRegisterPostRequest rebuild(
          void Function(ApiV1AuthRegisterPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthRegisterPostRequestBuilder toBuilder() =>
      ApiV1AuthRegisterPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthRegisterPostRequest &&
        email == other.email &&
        password == other.password &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthRegisterPostRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('name', name))
        .toString();
  }
}

class ApiV1AuthRegisterPostRequestBuilder
    implements
        Builder<ApiV1AuthRegisterPostRequest,
            ApiV1AuthRegisterPostRequestBuilder> {
  _$ApiV1AuthRegisterPostRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ApiV1AuthRegisterPostRequestBuilder() {
    ApiV1AuthRegisterPostRequest._defaults(this);
  }

  ApiV1AuthRegisterPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthRegisterPostRequest other) {
    _$v = other as _$ApiV1AuthRegisterPostRequest;
  }

  @override
  void update(void Function(ApiV1AuthRegisterPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthRegisterPostRequest build() => _build();

  _$ApiV1AuthRegisterPostRequest _build() {
    final _$result = _$v ??
        _$ApiV1AuthRegisterPostRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ApiV1AuthRegisterPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'ApiV1AuthRegisterPostRequest', 'password'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'ApiV1AuthRegisterPostRequest', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
