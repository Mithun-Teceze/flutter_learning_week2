// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_share_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesSharePostRequest extends ApiV1NotesSharePostRequest {
  @override
  final BuiltList<String> userIds;
  @override
  final String noteId;

  factory _$ApiV1NotesSharePostRequest(
          [void Function(ApiV1NotesSharePostRequestBuilder)? updates]) =>
      (ApiV1NotesSharePostRequestBuilder()..update(updates))._build();

  _$ApiV1NotesSharePostRequest._({required this.userIds, required this.noteId})
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
        userIds == other.userIds &&
        noteId == other.noteId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, userIds.hashCode);
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesSharePostRequest')
          ..add('userIds', userIds)
          ..add('noteId', noteId))
        .toString();
  }
}

class ApiV1NotesSharePostRequestBuilder
    implements
        Builder<ApiV1NotesSharePostRequest, ApiV1NotesSharePostRequestBuilder> {
  _$ApiV1NotesSharePostRequest? _$v;

  ListBuilder<String>? _userIds;
  ListBuilder<String> get userIds => _$this._userIds ??= ListBuilder<String>();
  set userIds(ListBuilder<String>? userIds) => _$this._userIds = userIds;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  ApiV1NotesSharePostRequestBuilder() {
    ApiV1NotesSharePostRequest._defaults(this);
  }

  ApiV1NotesSharePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userIds = $v.userIds.toBuilder();
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
    _$ApiV1NotesSharePostRequest _$result;
    try {
      _$result = _$v ??
          _$ApiV1NotesSharePostRequest._(
            userIds: userIds.build(),
            noteId: BuiltValueNullFieldError.checkNotNull(
                noteId, r'ApiV1NotesSharePostRequest', 'noteId'),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userIds';
        userIds.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1NotesSharePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
