import 'package:test/test.dart';
import 'package:local_api_client/local_api_client.dart';

/// tests for AuthenticationApi
void main() {
  final instance = LocalApiClient().getAuthenticationApi();

  group(AuthenticationApi, () {
    // Login with email and password
    //
    //Future<ApiV1AuthRegisterPost201Response> apiV1AuthLoginPost({ ApiV1AuthLoginPostRequest apiV1AuthLoginPostRequest }) async
    test('test apiV1AuthLoginPost', () async {
      // TODO
    });

    // Get current user information
    //
    //Future<ApiV1AuthMeGet200Response> apiV1AuthMeGet() async
    test('test apiV1AuthMeGet', () async {
      // TODO
    });

    // Register a new user
    //
    //Future<ApiV1AuthRegisterPost201Response> apiV1AuthRegisterPost({ ApiV1AuthRegisterPostRequest apiV1AuthRegisterPostRequest }) async
    test('test apiV1AuthRegisterPost', () async {
      // TODO
    });
  });
}
