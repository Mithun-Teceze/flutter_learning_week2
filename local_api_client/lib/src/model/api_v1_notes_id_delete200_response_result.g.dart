// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_id_delete200_response_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesIdDelete200ResponseResult
    extends ApiV1NotesIdDelete200ResponseResult {
  @override
  final String message;
  @override
  final String deletedId;

  factory _$ApiV1NotesIdDelete200ResponseResult(
          [void Function(ApiV1NotesIdDelete200ResponseResultBuilder)?
              updates]) =>
      (ApiV1NotesIdDelete200ResponseResultBuilder()..update(updates))._build();

  _$ApiV1NotesIdDelete200ResponseResult._(
      {required this.message, required this.deletedId})
      : super._();
  @override
  ApiV1NotesIdDelete200ResponseResult rebuild(
          void Function(ApiV1NotesIdDelete200ResponseResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesIdDelete200ResponseResultBuilder toBuilder() =>
      ApiV1NotesIdDelete200ResponseResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesIdDelete200ResponseResult &&
        message == other.message &&
        deletedId == other.deletedId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, deletedId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesIdDelete200ResponseResult')
          ..add('message', message)
          ..add('deletedId', deletedId))
        .toString();
  }
}

class ApiV1NotesIdDelete200ResponseResultBuilder
    implements
        Builder<ApiV1NotesIdDelete200ResponseResult,
            ApiV1NotesIdDelete200ResponseResultBuilder> {
  _$ApiV1NotesIdDelete200ResponseResult? _$v;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _deletedId;
  String? get deletedId => _$this._deletedId;
  set deletedId(String? deletedId) => _$this._deletedId = deletedId;

  ApiV1NotesIdDelete200ResponseResultBuilder() {
    ApiV1NotesIdDelete200ResponseResult._defaults(this);
  }

  ApiV1NotesIdDelete200ResponseResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _deletedId = $v.deletedId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesIdDelete200ResponseResult other) {
    _$v = other as _$ApiV1NotesIdDelete200ResponseResult;
  }

  @override
  void update(
      void Function(ApiV1NotesIdDelete200ResponseResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesIdDelete200ResponseResult build() => _build();

  _$ApiV1NotesIdDelete200ResponseResult _build() {
    final _$result = _$v ??
        _$ApiV1NotesIdDelete200ResponseResult._(
          message: BuiltValueNullFieldError.checkNotNull(
              message, r'ApiV1NotesIdDelete200ResponseResult', 'message'),
          deletedId: BuiltValueNullFieldError.checkNotNull(
              deletedId, r'ApiV1NotesIdDelete200ResponseResult', 'deletedId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
