// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_id_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesIdPutRequest extends ApiV1NotesIdPutRequest {
  @override
  final String? title;
  @override
  final String? content;

  factory _$ApiV1NotesIdPutRequest(
          [void Function(ApiV1NotesIdPutRequestBuilder)? updates]) =>
      (ApiV1NotesIdPutRequestBuilder()..update(updates))._build();

  _$ApiV1NotesIdPutRequest._({this.title, this.content}) : super._();
  @override
  ApiV1NotesIdPutRequest rebuild(
          void Function(ApiV1NotesIdPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesIdPutRequestBuilder toBuilder() =>
      ApiV1NotesIdPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesIdPutRequest &&
        title == other.title &&
        content == other.content;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesIdPutRequest')
          ..add('title', title)
          ..add('content', content))
        .toString();
  }
}

class ApiV1NotesIdPutRequestBuilder
    implements Builder<ApiV1NotesIdPutRequest, ApiV1NotesIdPutRequestBuilder> {
  _$ApiV1NotesIdPutRequest? _$v;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  ApiV1NotesIdPutRequestBuilder() {
    ApiV1NotesIdPutRequest._defaults(this);
  }

  ApiV1NotesIdPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _content = $v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesIdPutRequest other) {
    _$v = other as _$ApiV1NotesIdPutRequest;
  }

  @override
  void update(void Function(ApiV1NotesIdPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesIdPutRequest build() => _build();

  _$ApiV1NotesIdPutRequest _build() {
    final _$result = _$v ??
        _$ApiV1NotesIdPutRequest._(
          title: title,
          content: content,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
