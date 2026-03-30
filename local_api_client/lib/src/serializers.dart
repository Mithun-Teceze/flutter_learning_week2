//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:one_of_serializer/any_of_serializer.dart';
import 'package:one_of_serializer/one_of_serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:local_api_client/src/date_serializer.dart';
import 'package:local_api_client/src/model/date.dart';

import 'package:local_api_client/src/model/api_v1_auth_login_post_request.dart';
import 'package:local_api_client/src/model/api_v1_auth_me_get200_response.dart';
import 'package:local_api_client/src/model/api_v1_auth_me_get200_response_user.dart';
import 'package:local_api_client/src/model/api_v1_auth_register_post201_response.dart';
import 'package:local_api_client/src/model/api_v1_auth_register_post201_response_user.dart';
import 'package:local_api_client/src/model/api_v1_auth_register_post_request.dart';
import 'package:local_api_client/src/model/api_v1_notes_get200_response.dart';
import 'package:local_api_client/src/model/api_v1_notes_get200_response_result_inner.dart';
import 'package:local_api_client/src/model/api_v1_notes_id_delete200_response.dart';
import 'package:local_api_client/src/model/api_v1_notes_id_delete200_response_result.dart';
import 'package:local_api_client/src/model/api_v1_notes_id_put_request.dart';
import 'package:local_api_client/src/model/api_v1_notes_post201_response.dart';
import 'package:local_api_client/src/model/api_v1_notes_post_request.dart';
import 'package:local_api_client/src/model/api_v1_notes_post_request_file_metadata.dart';

part 'serializers.g.dart';

@SerializersFor([
  ApiV1AuthLoginPostRequest,
  ApiV1AuthMeGet200Response,
  ApiV1AuthMeGet200ResponseUser,
  ApiV1AuthRegisterPost201Response,
  ApiV1AuthRegisterPost201ResponseUser,
  ApiV1AuthRegisterPostRequest,
  ApiV1NotesGet200Response,
  ApiV1NotesGet200ResponseResultInner,
  ApiV1NotesIdDelete200Response,
  ApiV1NotesIdDelete200ResponseResult,
  ApiV1NotesIdPutRequest,
  ApiV1NotesPost201Response,
  ApiV1NotesPostRequest,
  ApiV1NotesPostRequestFileMetadata,
])
Serializers serializers = (_$serializers.toBuilder()
      ..add(const OneOfSerializer())
      ..add(const AnyOfSerializer())
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
