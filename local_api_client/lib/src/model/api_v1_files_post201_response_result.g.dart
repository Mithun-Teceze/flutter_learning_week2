// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_files_post201_response_result.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FilesPost201ResponseResult
    extends ApiV1FilesPost201ResponseResult {
  @override
  final String id;
  @override
  final String filename;
  @override
  final String mimeType;
  @override
  final num size;
  @override
  final String noteId;
  @override
  final String storageKey;
  @override
  final String uploadedBy;
  @override
  final String createdAt;

  factory _$ApiV1FilesPost201ResponseResult(
          [void Function(ApiV1FilesPost201ResponseResultBuilder)? updates]) =>
      (ApiV1FilesPost201ResponseResultBuilder()..update(updates))._build();

  _$ApiV1FilesPost201ResponseResult._(
      {required this.id,
      required this.filename,
      required this.mimeType,
      required this.size,
      required this.noteId,
      required this.storageKey,
      required this.uploadedBy,
      required this.createdAt})
      : super._();
  @override
  ApiV1FilesPost201ResponseResult rebuild(
          void Function(ApiV1FilesPost201ResponseResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1FilesPost201ResponseResultBuilder toBuilder() =>
      ApiV1FilesPost201ResponseResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FilesPost201ResponseResult &&
        id == other.id &&
        filename == other.filename &&
        mimeType == other.mimeType &&
        size == other.size &&
        noteId == other.noteId &&
        storageKey == other.storageKey &&
        uploadedBy == other.uploadedBy &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, noteId.hashCode);
    _$hash = $jc(_$hash, storageKey.hashCode);
    _$hash = $jc(_$hash, uploadedBy.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1FilesPost201ResponseResult')
          ..add('id', id)
          ..add('filename', filename)
          ..add('mimeType', mimeType)
          ..add('size', size)
          ..add('noteId', noteId)
          ..add('storageKey', storageKey)
          ..add('uploadedBy', uploadedBy)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class ApiV1FilesPost201ResponseResultBuilder
    implements
        Builder<ApiV1FilesPost201ResponseResult,
            ApiV1FilesPost201ResponseResultBuilder> {
  _$ApiV1FilesPost201ResponseResult? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  num? _size;
  num? get size => _$this._size;
  set size(num? size) => _$this._size = size;

  String? _noteId;
  String? get noteId => _$this._noteId;
  set noteId(String? noteId) => _$this._noteId = noteId;

  String? _storageKey;
  String? get storageKey => _$this._storageKey;
  set storageKey(String? storageKey) => _$this._storageKey = storageKey;

  String? _uploadedBy;
  String? get uploadedBy => _$this._uploadedBy;
  set uploadedBy(String? uploadedBy) => _$this._uploadedBy = uploadedBy;

  String? _createdAt;
  String? get createdAt => _$this._createdAt;
  set createdAt(String? createdAt) => _$this._createdAt = createdAt;

  ApiV1FilesPost201ResponseResultBuilder() {
    ApiV1FilesPost201ResponseResult._defaults(this);
  }

  ApiV1FilesPost201ResponseResultBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _filename = $v.filename;
      _mimeType = $v.mimeType;
      _size = $v.size;
      _noteId = $v.noteId;
      _storageKey = $v.storageKey;
      _uploadedBy = $v.uploadedBy;
      _createdAt = $v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FilesPost201ResponseResult other) {
    _$v = other as _$ApiV1FilesPost201ResponseResult;
  }

  @override
  void update(void Function(ApiV1FilesPost201ResponseResultBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FilesPost201ResponseResult build() => _build();

  _$ApiV1FilesPost201ResponseResult _build() {
    final _$result = _$v ??
        _$ApiV1FilesPost201ResponseResult._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'ApiV1FilesPost201ResponseResult', 'id'),
          filename: BuiltValueNullFieldError.checkNotNull(
              filename, r'ApiV1FilesPost201ResponseResult', 'filename'),
          mimeType: BuiltValueNullFieldError.checkNotNull(
              mimeType, r'ApiV1FilesPost201ResponseResult', 'mimeType'),
          size: BuiltValueNullFieldError.checkNotNull(
              size, r'ApiV1FilesPost201ResponseResult', 'size'),
          noteId: BuiltValueNullFieldError.checkNotNull(
              noteId, r'ApiV1FilesPost201ResponseResult', 'noteId'),
          storageKey: BuiltValueNullFieldError.checkNotNull(
              storageKey, r'ApiV1FilesPost201ResponseResult', 'storageKey'),
          uploadedBy: BuiltValueNullFieldError.checkNotNull(
              uploadedBy, r'ApiV1FilesPost201ResponseResult', 'uploadedBy'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'ApiV1FilesPost201ResponseResult', 'createdAt'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
