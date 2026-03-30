// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_login_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthLoginPostRequest extends ApiV1AuthLoginPostRequest {
  @override
  final String email;
  @override
  final String password;

  factory _$ApiV1AuthLoginPostRequest(
          [void Function(ApiV1AuthLoginPostRequestBuilder)? updates]) =>
      (ApiV1AuthLoginPostRequestBuilder()..update(updates))._build();

  _$ApiV1AuthLoginPostRequest._({required this.email, required this.password})
      : super._();
  @override
  ApiV1AuthLoginPostRequest rebuild(
          void Function(ApiV1AuthLoginPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthLoginPostRequestBuilder toBuilder() =>
      ApiV1AuthLoginPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthLoginPostRequest &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthLoginPostRequest')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class ApiV1AuthLoginPostRequestBuilder
    implements
        Builder<ApiV1AuthLoginPostRequest, ApiV1AuthLoginPostRequestBuilder> {
  _$ApiV1AuthLoginPostRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ApiV1AuthLoginPostRequestBuilder() {
    ApiV1AuthLoginPostRequest._defaults(this);
  }

  ApiV1AuthLoginPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthLoginPostRequest other) {
    _$v = other as _$ApiV1AuthLoginPostRequest;
  }

  @override
  void update(void Function(ApiV1AuthLoginPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthLoginPostRequest build() => _build();

  _$ApiV1AuthLoginPostRequest _build() {
    final _$result = _$v ??
        _$ApiV1AuthLoginPostRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'ApiV1AuthLoginPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'ApiV1AuthLoginPostRequest', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
