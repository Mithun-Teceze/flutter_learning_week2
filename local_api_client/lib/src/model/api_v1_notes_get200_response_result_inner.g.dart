// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_get200_response_result_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesGet200ResponseResultInner
    extends ApiV1NotesGet200ResponseResultInner {
  @override
  final String id;
  @override
  final String title;
  @override
  final String content;
  @override
  final String userId;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  factory _$ApiV1NotesGet200ResponseResultInner(
          [void Function(ApiV1NotesGet200ResponseResultInnerBuilder)?
              updates]) =>
      (ApiV1NotesGet200ResponseResultInnerBuilder()..update(updates))._build();

  _$ApiV1NotesGet200ResponseResultInner._(
      {required this.id,
      required this.title,
      required this.content,
      required this.userId,
      required this.createdAt,
      this.updatedAt})
      : super._();
  @override
  ApiV1NotesGet200ResponseResultInner rebuild(
          void Function(ApiV1NotesGet200ResponseResultInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesGet200ResponseResultInnerBuilder toBuilder() =>
      ApiV1NotesGet200ResponseResultInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesGet200ResponseResultInner &&
        id == other.id &&
        title == other.title &&
        content == other.content &&
        userId == other.userId &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, content.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesGet200ResponseResultInner')
          ..add('id', id)
          ..add('title', title)
          ..add('content', content)
          ..add('userId', userId)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt))
        .toString();
  }
}

class ApiV1NotesGet200ResponseResultInnerBuilder
    implements
        Builder<ApiV1NotesGet200ResponseResultInner,
            ApiV1NotesGet200ResponseResultInnerBuilder> {
  _$ApiV1NotesGet200ResponseResultInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  ApiV1NotesGet200ResponseResultInnerBuilder() {
    ApiV1NotesGet200ResponseResultInner._defaults(this);
  }

  ApiV1NotesGet200ResponseResultInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _content = $v.content;
      _userId = $v.userId;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesGet200ResponseResultInner other) {
    _$v = other as _$ApiV1NotesGet200ResponseResultInner;
  }

  @override
  void update(
      void Function(ApiV1NotesGet200ResponseResultInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesGet200ResponseResultInner build() => _build();

  _$ApiV1NotesGet200ResponseResultInner _build() {
    final _$result = _$v ??
        _$ApiV1NotesGet200ResponseResultInner._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ApiV1NotesGet200ResponseResultInner', 'id'),
          title: BuiltValueNullFieldError.checkNotNull(
              title, r'ApiV1NotesGet200ResponseResultInner', 'title'),
          content: BuiltValueNullFieldError.checkNotNull(
              content, r'ApiV1NotesGet200ResponseResultInner', 'content'),
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'ApiV1NotesGet200ResponseResultInner', 'userId'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ApiV1NotesGet200ResponseResultInner', 'createdAt'),
          updatedAt: updatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
