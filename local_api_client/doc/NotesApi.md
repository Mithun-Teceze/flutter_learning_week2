# local_api_client.api.NotesApi

## Load the API package
```dart
import 'package:local_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1NotesGet**](NotesApi.md#apiv1notesget) | **GET** /api/v1/notes | Get all notes for user
[**apiV1NotesIdDelete**](NotesApi.md#apiv1notesiddelete) | **DELETE** /api/v1/notes/{id} | Delete a note
[**apiV1NotesIdGet**](NotesApi.md#apiv1notesidget) | **GET** /api/v1/notes/{id} | Get a specific note by ID
[**apiV1NotesIdPut**](NotesApi.md#apiv1notesidput) | **PUT** /api/v1/notes/{id} | Update an existing note
[**apiV1NotesPost**](NotesApi.md#apiv1notespost) | **POST** /api/v1/notes | Create a new note
[**apiV1NotesSharePost**](NotesApi.md#apiv1notessharepost) | **POST** /api/v1/notes/share | Share a new note


# **apiV1NotesGet**
> ApiV1NotesGet200Response apiV1NotesGet()

Get all notes for user

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();

try {
    final response = api.apiV1NotesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ApiV1NotesGet200Response**](ApiV1NotesGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotesIdDelete**
> ApiV1NotesIdDelete200Response apiV1NotesIdDelete(id)

Delete a note

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiV1NotesIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiV1NotesIdDelete200Response**](ApiV1NotesIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotesIdGet**
> ApiV1NotesPost201Response apiV1NotesIdGet(id)

Get a specific note by ID

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiV1NotesIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ApiV1NotesPost201Response**](ApiV1NotesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotesIdPut**
> ApiV1NotesPost201Response apiV1NotesIdPut(id, apiV1NotesIdPutRequest)

Update an existing note

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();
final String id = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final ApiV1NotesIdPutRequest apiV1NotesIdPutRequest = ; // ApiV1NotesIdPutRequest | 

try {
    final response = api.apiV1NotesIdPut(id, apiV1NotesIdPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesIdPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **apiV1NotesIdPutRequest** | [**ApiV1NotesIdPutRequest**](ApiV1NotesIdPutRequest.md)|  | [optional] 

### Return type

[**ApiV1NotesPost201Response**](ApiV1NotesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotesPost**
> ApiV1NotesPost201Response apiV1NotesPost(apiV1NotesPostRequest)

Create a new note

Create a note for the authenticated user

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();
final ApiV1NotesPostRequest apiV1NotesPostRequest = ; // ApiV1NotesPostRequest | 

try {
    final response = api.apiV1NotesPost(apiV1NotesPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiV1NotesPostRequest** | [**ApiV1NotesPostRequest**](ApiV1NotesPostRequest.md)|  | [optional] 

### Return type

[**ApiV1NotesPost201Response**](ApiV1NotesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1NotesSharePost**
> ApiV1NotesPost201Response apiV1NotesSharePost(apiV1NotesSharePostRequest)

Share a new note

Share a note for the authenticated user

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getNotesApi();
final ApiV1NotesSharePostRequest apiV1NotesSharePostRequest = ; // ApiV1NotesSharePostRequest | 

try {
    final response = api.apiV1NotesSharePost(apiV1NotesSharePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling NotesApi->apiV1NotesSharePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apiV1NotesSharePostRequest** | [**ApiV1NotesSharePostRequest**](ApiV1NotesSharePostRequest.md)|  | [optional] 

### Return type

[**ApiV1NotesPost201Response**](ApiV1NotesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

