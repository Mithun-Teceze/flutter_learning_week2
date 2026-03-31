import 'package:test/test.dart';
import 'package:local_api_client/local_api_client.dart';

/// tests for FilesApi
void main() {
  final instance = LocalApiClient().getFilesApi();

  group(FilesApi, () {
    // Delete a file
    //
    // Delete a file attachment
    //
    //Future<ApiV1NotesIdDelete200Response> apiV1FilesAttachmentIdDelete(String attachmentId) async
    test('test apiV1FilesAttachmentIdDelete', () async {
      // TODO
    });

    // Get file download URL
    //
    // Get presigned download URL for a file
    //
    //Future<ApiV1FilesAttachmentIdGet200Response> apiV1FilesAttachmentIdGet(String attachmentId) async
    test('test apiV1FilesAttachmentIdGet', () async {
      // TODO
    });

    // Get files by note ID
    //
    // Get all files attached to a note
    //
    //Future<ApiV1FilesNoteNoteIdGet200Response> apiV1FilesNoteNoteIdGet(String noteId) async
    test('test apiV1FilesNoteNoteIdGet', () async {
      // TODO
    });

    // Upload a file
    //
    // Upload a file to a note
    //
    //Future<ApiV1FilesPost201Response> apiV1FilesPost(String noteId, { JsonObject file }) async
    test('test apiV1FilesPost', () async {
      // TODO
    });
  });
}
