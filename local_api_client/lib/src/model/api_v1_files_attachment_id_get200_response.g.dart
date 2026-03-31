// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_v1_files_attachment_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ApiV1FilesAttachmentIdGet200Response
    extends ApiV1FilesAttachmentIdGet200Response {
  @override
  final bool success;
  @override
  final String result;

  factory _$ApiV1FilesAttachmentIdGet200Response(
          [void Function(ApiV1FilesAttachmentIdGet200ResponseBuilder)?
              updates]) =>
      (ApiV1FilesAttachmentIdGet200ResponseBuilder()..update(updates))._build();

  _$ApiV1FilesAttachmentIdGet200Response._(
      {required this.success, required this.result})
      : super._();
  @override
  ApiV1FilesAttachmentIdGet200Response rebuild(
          void Function(ApiV1FilesAttachmentIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiV1FilesAttachmentIdGet200ResponseBuilder toBuilder() =>
      ApiV1FilesAttachmentIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiV1FilesAttachmentIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ApiV1FilesAttachmentIdGet200Response')
          ..add('success', success)
          ..add('result', result))
        .toString();
  }
}

class ApiV1FilesAttachmentIdGet200ResponseBuilder
    implements
        Builder<ApiV1FilesAttachmentIdGet200Response,
            ApiV1FilesAttachmentIdGet200ResponseBuilder> {
  _$ApiV1FilesAttachmentIdGet200Response? _$v;

  bool? _success;
  bool? get success => _$this._success;
  set success(bool? success) => _$this._success = success;

  String? _result;
  String? get result => _$this._result;
  set result(String? result) => _$this._result = result;

  ApiV1FilesAttachmentIdGet200ResponseBuilder() {
    ApiV1FilesAttachmentIdGet200Response._defaults(this);
  }

  ApiV1FilesAttachmentIdGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _success = $v.success;
      _result = $v.result;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiV1FilesAttachmentIdGet200Response other) {
    _$v = other as _$ApiV1FilesAttachmentIdGet200Response;
  }

  @override
  void update(
      void Function(ApiV1FilesAttachmentIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ApiV1FilesAttachmentIdGet200Response build() => _build();

  _$ApiV1FilesAttachmentIdGet200Response _build() {
    final _$result = _$v ??
        _$ApiV1FilesAttachmentIdGet200Response._(
          success: BuiltValueNullFieldError.checkNotNull(
              success, r'ApiV1FilesAttachmentIdGet200Response', 'success'),
          result: BuiltValueNullFieldError.checkNotNull(
              result, r'ApiV1FilesAttachmentIdGet200Response', 'result'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
