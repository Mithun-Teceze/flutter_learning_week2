// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_files_post201_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FilesPost201Response extends ApiV1FilesPost201Response {
  @override
  final bool success;
  @override
  final ApiV1FilesPost201ResponseResult result;

  factory _$ApiV1FilesPost201Response(
          [void Function(ApiV1FilesPost201ResponseBuilder)? updates]) =>
      (ApiV1FilesPost201ResponseBuilder()..update(updates))._build();

  _$ApiV1FilesPost201Response._({required this.success, required this.result})
      : super._();
  @override
  ApiV1FilesPost201Response rebuild(
          void Function(ApiV1FilesPost201ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1FilesPost201ResponseBuilder toBuilder() =>
      ApiV1FilesPost201ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FilesPost201Response &&
        success == other.success &&
        result == other.result;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, success.hashCode);
    _$hash = $jc(_$hash, result.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1FilesPost201Response')
          ..add('success', success)
          ..add('result', result))
        .toString();
  }
}

class ApiV1FilesPost201ResponseBuilder
    implements
        Builder<ApiV1FilesPost201Response, ApiV1FilesPost201ResponseBuilder> {
  _$ApiV1FilesPost201Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ApiV1FilesPost201ResponseResultBuilder? _result;
  ApiV1FilesPost201ResponseResultBuilder get result =>
      _$this._result ??= ApiV1FilesPost201ResponseResultBuilder();
  set result(ApiV1FilesPost201ResponseResultBuilder? result) =>
      _$this._result = result;

  ApiV1FilesPost201ResponseBuilder() {
    ApiV1FilesPost201Response._defaults(this);
  }

  ApiV1FilesPost201ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _result = $v.result.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FilesPost201Response other) {
    _$v = other as _$ApiV1FilesPost201Response;
  }

  @override
  void update(void Function(ApiV1FilesPost201ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FilesPost201Response build() => _build();

  _$ApiV1FilesPost201Response _build() {
    _$ApiV1FilesPost201Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1FilesPost201Response._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ApiV1FilesPost201Response', 'success'),
            result: result.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        result.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1FilesPost201Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
