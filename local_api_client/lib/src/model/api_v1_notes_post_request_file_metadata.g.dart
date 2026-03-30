// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_notes_post_request_file_metadata.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1NotesPostRequestFileMetadata
    extends ApiV1NotesPostRequestFileMetadata {
  @override
  final String filename;
  @override
  final String mimeType;
  @override
  final num size;

  factory _$ApiV1NotesPostRequestFileMetadata(
          [void Function(ApiV1NotesPostRequestFileMetadataBuilder)? updates]) =>
      (ApiV1NotesPostRequestFileMetadataBuilder()..update(updates))._build();

  _$ApiV1NotesPostRequestFileMetadata._(
      {required this.filename, required this.mimeType, required this.size})
      : super._();
  @override
  ApiV1NotesPostRequestFileMetadata rebuild(
          void Function(ApiV1NotesPostRequestFileMetadataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1NotesPostRequestFileMetadataBuilder toBuilder() =>
      ApiV1NotesPostRequestFileMetadataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1NotesPostRequestFileMetadata &&
        filename == other.filename &&
        mimeType == other.mimeType &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, filename.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ApiV1NotesPostRequestFileMetadata')
          ..add('filename', filename)
          ..add('mimeType', mimeType)
          ..add('size', size))
        .toString();
  }
}

class ApiV1NotesPostRequestFileMetadataBuilder
    implements
        Builder<ApiV1NotesPostRequestFileMetadata,
            ApiV1NotesPostRequestFileMetadataBuilder> {
  _$ApiV1NotesPostRequestFileMetadata? _$v;

  String? _filename;
  String? get filename => _$this._filename;
  set filename(String? filename) => _$this._filename = filename;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  num? _size;
  num? get size => _$this._size;
  set size(num? size) => _$this._size = size;

  ApiV1NotesPostRequestFileMetadataBuilder() {
    ApiV1NotesPostRequestFileMetadata._defaults(this);
  }

  ApiV1NotesPostRequestFileMetadataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _filename = $v.filename;
      _mimeType = $v.mimeType;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1NotesPostRequestFileMetadata other) {
    _$v = other as _$ApiV1NotesPostRequestFileMetadata;
  }

  @override
  void update(
      void Function(ApiV1NotesPostRequestFileMetadataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1NotesPostRequestFileMetadata build() => _build();

  _$ApiV1NotesPostRequestFileMetadata _build() {
    final _$result = _$v ??
        _$ApiV1NotesPostRequestFileMetadata._(
          filename: BuiltValueNullFieldError.checkNotNull(
              filename, r'ApiV1NotesPostRequestFileMetadata', 'filename'),
          mimeType: BuiltValueNullFieldError.checkNotNull(
              mimeType, r'ApiV1NotesPostRequestFileMetadata', 'mimeType'),
          size: BuiltValueNullFieldError.checkNotNull(
              size, r'ApiV1NotesPostRequestFileMetadata', 'size'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
