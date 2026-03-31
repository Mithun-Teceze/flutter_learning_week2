# local_api_client.api.FilesApi

## Load the API package
```dart
import 'package:local_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apiV1FilesAttachmentIdDelete**](FilesApi.md#apiv1filesattachmentiddelete) | **DELETE** /api/v1/files/{attachmentId} | Delete a file
[**apiV1FilesAttachmentIdGet**](FilesApi.md#apiv1filesattachmentidget) | **GET** /api/v1/files/{attachmentId} | Get file download URL
[**apiV1FilesNoteNoteIdGet**](FilesApi.md#apiv1filesnotenoteidget) | **GET** /api/v1/files/note/{noteId} | Get files by note ID
[**apiV1FilesPost**](FilesApi.md#apiv1filespost) | **POST** /api/v1/files | Upload a file


# **apiV1FilesAttachmentIdDelete**
> ApiV1NotesIdDelete200Response apiV1FilesAttachmentIdDelete(attachmentId)

Delete a file

Delete a file attachment

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getFilesApi();
final String attachmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiV1FilesAttachmentIdDelete(attachmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilesApi->apiV1FilesAttachmentIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**|  | 

### Return type

[**ApiV1NotesIdDelete200Response**](ApiV1NotesIdDelete200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FilesAttachmentIdGet**
> ApiV1FilesAttachmentIdGet200Response apiV1FilesAttachmentIdGet(attachmentId)

Get file download URL

Get presigned download URL for a file

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getFilesApi();
final String attachmentId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiV1FilesAttachmentIdGet(attachmentId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilesApi->apiV1FilesAttachmentIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **attachmentId** | **String**|  | 

### Return type

[**ApiV1FilesAttachmentIdGet200Response**](ApiV1FilesAttachmentIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FilesNoteNoteIdGet**
> ApiV1FilesNoteNoteIdGet200Response apiV1FilesNoteNoteIdGet(noteId)

Get files by note ID

Get all files attached to a note

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getFilesApi();
final String noteId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 

try {
    final response = api.apiV1FilesNoteNoteIdGet(noteId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilesApi->apiV1FilesNoteNoteIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **String**|  | 

### Return type

[**ApiV1FilesNoteNoteIdGet200Response**](ApiV1FilesNoteNoteIdGet200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apiV1FilesPost**
> ApiV1FilesPost201Response apiV1FilesPost(noteId, file)

Upload a file

Upload a file to a note

### Example
```dart
import 'package:local_api_client/api.dart';

final api = LocalApiClient().getFilesApi();
final String noteId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | 
final JsonObject file = ; // JsonObject | 

try {
    final response = api.apiV1FilesPost(noteId, file);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilesApi->apiV1FilesPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **noteId** | **String**|  | 
 **file** | [**JsonObject**](JsonObject.md)|  | [optional] 

### Return type

[**ApiV1FilesPost201Response**](ApiV1FilesPost201Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

