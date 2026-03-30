import 'package:local_api_client/local_api_client.dart';
import '../api_client/api_manager.dart';

class ApiClientService {
  static LocalApiClient? _client;

  static Future<LocalApiClient> get instance async {
    _client ??= LocalApiClient(dio: ApiManager.dio, serializers: standardSerializers);
    return _client!;
  }

  static void dispose() {
    _client = null;
  }
}
