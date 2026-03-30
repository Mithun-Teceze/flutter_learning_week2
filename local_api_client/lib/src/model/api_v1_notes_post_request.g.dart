// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesPostRequest extends ApiV1NotesPostRequest {
  @override
  final String title;
  @override
  final String content;
  @override
  final ApiV1NotesPostRequestFileMetadata? fileMetadata;

  factory _$ApiV1NotesPostRequest(
          [void Function(ApiV1NotesPostRequestBuilder)? updates]) =>
      (ApiV1NotesPostRequestBuilder()..update(updates))._build();

  _$ApiV1NotesPostRequest._(
      {required this.title, required this.content, this.fileMetadata})
      : super._();
  @override
  ApiV1NotesPostRequest rebuild(
          void Function(ApiV1NotesPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesPostRequestBuilder toBuilder() =>
      ApiV1NotesPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesPostRequest &&
        title == other.title &&
        content == other.content &&
        fileMetadata == other.fileMetadata;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, fileMetadata.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesPostRequest')
          ..add('title', title)
          ..add('content', content)
          ..add('fileMetadata', fileMetadata))
        .toString();
  }
}

class ApiV1NotesPostRequestBuilder
    implements Builder<ApiV1NotesPostRequest, ApiV1NotesPostRequestBuilder> {
  _$ApiV1NotesPostRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ApiV1NotesPostRequestFileMetadataBuilder? _fileMetadata;
  ApiV1NotesPostRequestFileMetadataBuilder get fileMetadata =>
      _$this._fileMetadata ??= ApiV1NotesPostRequestFileMetadataBuilder();
  set fileMetadata(ApiV1NotesPostRequestFileMetadataBuilder? fileMetadata) =>
      _$this._fileMetadata = fileMetadata;

  ApiV1NotesPostRequestBuilder() {
    ApiV1NotesPostRequest._defaults(this);
  }

  ApiV1NotesPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _fileMetadata = $v.fileMetadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesPostRequest other) {
    _$v = other as _$ApiV1NotesPostRequest;
  }

  @override
  void update(void Function(ApiV1NotesPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesPostRequest build() => _build();

  _$ApiV1NotesPostRequest _build() {
    _$ApiV1NotesPostRequest _$result;
    try {
      _$result = _$v ??
          _$ApiV1NotesPostRequest._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, r'ApiV1NotesPostRequest', 'title'),
            content: BuiltValueNullFieldError.checkNotNull(
                content, r'ApiV1NotesPostRequest', 'content'),
            fileMetadata: _fileMetadata?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'fileMetadata';
        _fileMetadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ApiV1NotesPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
