// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesGet200Response extends ApiV1NotesGet200Response {
  @override
  final bool success;
  @override
  final BuiltList<ApiV1NotesGet200ResponseResultInner> result;

  factory _$ApiV1NotesGet200Response(
          [void Function(ApiV1NotesGet200ResponseBuilder)? updates]) =>
      (ApiV1NotesGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1NotesGet200Response._({required this.success, required this.result})
      : super._();
  @override
  ApiV1NotesGet200Response rebuild(
          void Function(ApiV1NotesGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesGet200ResponseBuilder toBuilder() =>
      ApiV1NotesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ApiV1NotesGet200Response')
          ..add('success', success)
          ..add('result', result))
        .toString();
  }
}

class ApiV1NotesGet200ResponseBuilder
    implements
        Builder<ApiV1NotesGet200Response, ApiV1NotesGet200ResponseBuilder> {
  _$ApiV1NotesGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  ListBuilder<ApiV1NotesGet200ResponseResultInner>? _result;
  ListBuilder<ApiV1NotesGet200ResponseResultInner> get result =>
      _$this._result ??= ListBuilder<ApiV1NotesGet200ResponseResultInner>();
  set result(ListBuilder<ApiV1NotesGet200ResponseResultInner>? result) =>
      _$this._result = result;

  ApiV1NotesGet200ResponseBuilder() {
    ApiV1NotesGet200Response._defaults(this);
  }

  ApiV1NotesGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _result = $v.result.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesGet200Response other) {
    _$v = other as _$ApiV1NotesGet200Response;
  }

  @override
  void update(void Function(ApiV1NotesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesGet200Response build() => _build();

  _$ApiV1NotesGet200Response _build() {
    _$ApiV1NotesGet200Response _$result;
    try {
      _$result = _$v ??
          _$ApiV1NotesGet200Response._(
            success: BuiltValueNullFieldError.checkNotNull(
                success, r'ApiV1NotesGet200Response', 'success'),
            result: result.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'result';
        result.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1NotesGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
