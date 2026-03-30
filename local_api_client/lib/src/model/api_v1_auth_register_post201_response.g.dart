// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_register_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthRegisterPost201Response
    extends ApiV1AuthRegisterPost201Response {
  @override
  final bool success;
  @override
  final ApiV1AuthRegisterPost201ResponseUser user;
  @override
  final String token;

  factory _$ApiV1AuthRegisterPost201Response(
          [void Function(ApiV1AuthRegisterPost201ResponseBuilder)? updates]) =>
      (ApiV1AuthRegisterPost201ResponseBuilder()..update(updates))._build();

  _$ApiV1AuthRegisterPost201Response._(
      {required this.success, required this.user, required this.token})
      : super._();
  @override
  ApiV1AuthRegisterPost201Response rebuild(
          void Function(ApiV1AuthRegisterPost201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthRegisterPost201ResponseBuilder toBuilder() =>
      ApiV1AuthRegisterPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthRegisterPost201Response &&
        success == other.success &&
        user == other.user &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthRegisterPost201Response')
          ..add('success', success)
          ..add('user', user)
          ..add('token', token))
        .toString();
  }
}

class ApiV1AuthRegisterPost201ResponseBuilder
    implements
        Builder<ApiV1AuthRegisterPost201Response,
            ApiV1AuthRegisterPost201ResponseBuilder> {
  _$ApiV1AuthRegisterPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ApiV1AuthRegisterPost201ResponseUserBuilder? _user;
  ApiV1AuthRegisterPost201ResponseUserBuilder get user =>
      _$this._user ??= ApiV1AuthRegisterPost201ResponseUserBuilder();
  set user(ApiV1AuthRegisterPost201ResponseUserBuilder? user) =>
      _$this._user = user;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ApiV1AuthRegisterPost201ResponseBuilder() {
    ApiV1AuthRegisterPost201Response._defaults(this);
  }

  ApiV1AuthRegisterPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _user = $v.user.toBuilder();
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthRegisterPost201Response other) {
    _$v = other as _$ApiV1AuthRegisterPost201Response;
  }

  @override
  void update(void Function(ApiV1AuthRegisterPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthRegisterPost201Response build() => _build();

  _$ApiV1AuthRegisterPost201Response _build() {
    _$ApiV1AuthRegisterPost201Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1AuthRegisterPost201Response._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ApiV1AuthRegisterPost201Response', 'success'),
            user: user.build(),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'ApiV1AuthRegisterPost201Response', 'token'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1AuthRegisterPost201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
