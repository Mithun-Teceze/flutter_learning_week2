# local_api_client.api.AuthenticationApi

## Load the API package
```dart
import 'package:local_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1AuthLoginPost**](AuthenticationApi.md#apiv1authloginpost) | **POST** /api/v1/auth/login | Login with email and password
[**apiV1AuthMeGet**](AuthenticationApi.md#apiv1authmeget) | **GET** /api/v1/auth/me | Get current user information
[**apiV1AuthRegisterPost**](AuthenticationApi.md#apiv1authregisterpost) | **POST** /api/v1/auth/register | Register a new user
[**apiV1AuthUsersGet**](AuthenticationApi.md#apiv1authusersget) | **GET** /api/v1/auth/users | Get all the users


# **apiV1AuthLoginPost**
> ApiV1AuthRegisterPost201Response apiV1AuthLoginPost(apiV1AuthLoginPostRequest)

Login with email and password

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getAuthenticationApi();
final ApiV1AuthLoginPostRequest apiV1AuthLoginPostRequest = ; // ApiV1AuthLoginPostRequest | 

try {
    final response = api.apiV1AuthLoginPost(apiV1AuthLoginPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->apiV1AuthLoginPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiV1AuthLoginPostRequest** | [**ApiV1AuthLoginPostRequest**](ApiV1AuthLoginPostRequest.md)|  | [optional] 

### Return type

[**ApiV1AuthRegisterPost201Response**](ApiV1AuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AuthMeGet**
> ApiV1AuthMeGet200Response apiV1AuthMeGet()

Get current user information

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getAuthenticationApi();

try {
    final response = api.apiV1AuthMeGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->apiV1AuthMeGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiV1AuthMeGet200Response**](ApiV1AuthMeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AuthRegisterPost**
> ApiV1AuthRegisterPost201Response apiV1AuthRegisterPost(apiV1AuthRegisterPostRequest)

Register a new user

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getAuthenticationApi();
final ApiV1AuthRegisterPostRequest apiV1AuthRegisterPostRequest = ; // ApiV1AuthRegisterPostRequest | 

try {
    final response = api.apiV1AuthRegisterPost(apiV1AuthRegisterPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->apiV1AuthRegisterPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiV1AuthRegisterPostRequest** | [**ApiV1AuthRegisterPostRequest**](ApiV1AuthRegisterPostRequest.md)|  | [optional] 

### Return type

[**ApiV1AuthRegisterPost201Response**](ApiV1AuthRegisterPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1AuthUsersGet**
> ApiV1AuthMeGet200Response apiV1AuthUsersGet()

Get all the users

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getAuthenticationApi();

try {
    final response = api.apiV1AuthUsersGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthenticationApi->apiV1AuthUsersGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiV1AuthMeGet200Response**](ApiV1AuthMeGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

