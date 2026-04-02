// Openapi Generator last run: : 2026-04-02T11:29:39.911879
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

@Openapi(
  generatorName: Generator.dio,
  outputDirectory: 'local_api_client',

  inputSpec: RemoteSpec(
    path: 'http://192.168.1.41:4000/api/reference/openapi.json',
  ),


  additionalProperties: DioProperties(
    pubName: 'local_api_client',
    pubVersion: '1.0.0',
  ),
)
class ApiConfig {}