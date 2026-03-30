// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_auth_me_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1AuthMeGet200Response extends ApiV1AuthMeGet200Response {
  @override
  final bool success;
  @override
  final ApiV1AuthMeGet200ResponseUser user;

  factory _$ApiV1AuthMeGet200Response(
          [void Function(ApiV1AuthMeGet200ResponseBuilder)? updates]) =>
      (ApiV1AuthMeGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1AuthMeGet200Response._({required this.success, required this.user})
      : super._();
  @override
  ApiV1AuthMeGet200Response rebuild(
          void Function(ApiV1AuthMeGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1AuthMeGet200ResponseBuilder toBuilder() =>
      ApiV1AuthMeGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1AuthMeGet200Response &&
        success == other.success &&
        user == other.user;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1AuthMeGet200Response')
          ..add('success', success)
          ..add('user', user))
        .toString();
  }
}

class ApiV1AuthMeGet200ResponseBuilder
    implements
        Builder<ApiV1AuthMeGet200Response, ApiV1AuthMeGet200ResponseBuilder> {
  _$ApiV1AuthMeGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ApiV1AuthMeGet200ResponseUserBuilder? _user;
  ApiV1AuthMeGet200ResponseUserBuilder get user =>
      _$this._user ??= ApiV1AuthMeGet200ResponseUserBuilder();
  set user(ApiV1AuthMeGet200ResponseUserBuilder? user) => _$this._user = user;

  ApiV1AuthMeGet200ResponseBuilder() {
    ApiV1AuthMeGet200Response._defaults(this);
  }

  ApiV1AuthMeGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _user = $v.user.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1AuthMeGet200Response other) {
    _$v = other as _$ApiV1AuthMeGet200Response;
  }

  @override
  void update(void Function(ApiV1AuthMeGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1AuthMeGet200Response build() => _build();

  _$ApiV1AuthMeGet200Response _build() {
    _$ApiV1AuthMeGet200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1AuthMeGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ApiV1AuthMeGet200Response', 'success'),
            user: user.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        user.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1AuthMeGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
