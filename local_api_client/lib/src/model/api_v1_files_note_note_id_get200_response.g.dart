// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_files_note_note_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FilesNoteNoteIdGet200Response
    extends ApiV1FilesNoteNoteIdGet200Response {
  @override
  final bool success;
  @override
  final BuiltList<ApiV1FilesPost201ResponseResult> result;

  factory _$ApiV1FilesNoteNoteIdGet200Response(
          [void Function(ApiV1FilesNoteNoteIdGet200ResponseBuilder)?
              updates]) =>
      (ApiV1FilesNoteNoteIdGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1FilesNoteNoteIdGet200Response._(
      {required this.success, required this.result})
      : super._();
  @override
  ApiV1FilesNoteNoteIdGet200Response rebuild(
          void Function(ApiV1FilesNoteNoteIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1FilesNoteNoteIdGet200ResponseBuilder toBuilder() =>
      ApiV1FilesNoteNoteIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FilesNoteNoteIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ApiV1FilesNoteNoteIdGet200Response')
          ..add('success', success)
          ..add('result', result))
        .toString();
  }
}

class ApiV1FilesNoteNoteIdGet200ResponseBuilder
    implements
        Builder<ApiV1FilesNoteNoteIdGet200Response,
            ApiV1FilesNoteNoteIdGet200ResponseBuilder> {
  _$ApiV1FilesNoteNoteIdGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<ApiV1FilesPost201ResponseResult>? _result;
  ListBuilder<ApiV1FilesPost201ResponseResult> get result =>
      _$this._result ??= ListBuilder<ApiV1FilesPost201ResponseResult>();
  set result(ListBuilder<ApiV1FilesPost201ResponseResult>? result) =>
      _$this._result = result;

  ApiV1FilesNoteNoteIdGet200ResponseBuilder() {
    ApiV1FilesNoteNoteIdGet200Response._defaults(this);
  }

  ApiV1FilesNoteNoteIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _result = $v.result.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FilesNoteNoteIdGet200Response other) {
    _$v = other as _$ApiV1FilesNoteNoteIdGet200Response;
  }

  @override
  void update(
      void Function(ApiV1FilesNoteNoteIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FilesNoteNoteIdGet200Response build() => _build();

  _$ApiV1FilesNoteNoteIdGet200Response _build() {
    _$ApiV1FilesNoteNoteIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1FilesNoteNoteIdGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ApiV1FilesNoteNoteIdGet200Response', 'success'),
            result: result.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        result.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1FilesNoteNoteIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
