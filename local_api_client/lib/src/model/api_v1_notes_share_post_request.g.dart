// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_share_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesSharePostRequest extends ApiV1NotesSharePostRequest {
  @override
  final String userId;
  @override
  final String noteId;

  factory _$ApiV1NotesSharePostRequest(
          [void Function(ApiV1NotesSharePostRequestBuilder)? updates]) =>
      (ApiV1NotesSharePostRequestBuilder()..update(updates))._build();

  _$ApiV1NotesSharePostRequest._({required this.userId, required this.noteId})
      : super._();
  @override
  ApiV1NotesSharePostRequest rebuild(
          void Function(ApiV1NotesSharePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesSharePostRequestBuilder toBuilder() =>
      ApiV1NotesSharePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesSharePostRequest &&
        userId == other.userId &&
        noteId == other.noteId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesSharePostRequest')
          ..add('userId', userId)
          ..add('noteId', noteId))
        .toString();
  }
}

class ApiV1NotesSharePostRequestBuilder
    implements
        Builder<ApiV1NotesSharePostRequest, ApiV1NotesSharePostRequestBuilder> {
  _$ApiV1NotesSharePostRequest? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  ApiV1NotesSharePostRequestBuilder() {
    ApiV1NotesSharePostRequest._defaults(this);
  }

  ApiV1NotesSharePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _noteId = $v.noteId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesSharePostRequest other) {
    _$v = other as _$ApiV1NotesSharePostRequest;
  }

  @override
  void update(void Function(ApiV1NotesSharePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesSharePostRequest build() => _build();

  _$ApiV1NotesSharePostRequest _build() {
    final _$result = _$v ??
        _$ApiV1NotesSharePostRequest._(
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ApiV1NotesSharePostRequest', 'userId'),
          noteId: BuiltValueNullFieldError.checkNotNull(
              noteId, r'ApiV1NotesSharePostRequest', 'noteId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
