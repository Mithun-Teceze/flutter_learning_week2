import 'package:test/test.dart';
import 'package:local_api_client/local_api_client.dart';

/// tests for NotesApi
void main() {
  final instance = LocalApiClient().getNotesApi();

  group(NotesApi, () {
    // Get all notes for user
    //
    //Future<ApiV1NotesGet200Response> apiV1NotesGet() async
    test('test apiV1NotesGet', () async {
      // TODO
    });

    // Delete a note
    //
    //Future<ApiV1NotesIdDelete200Response> apiV1NotesIdDelete(String id) async
    test('test apiV1NotesIdDelete', () async {
      // TODO
    });

    // Get a specific note by ID
    //
    //Future<ApiV1NotesPost201Response> apiV1NotesIdGet(String id) async
    test('test apiV1NotesIdGet', () async {
      // TODO
    });

    // Update an existing note
    //
    //Future<ApiV1NotesPost201Response> apiV1NotesIdPut(String id, { ApiV1NotesIdPutRequest apiV1NotesIdPutRequest }) async
    test('test apiV1NotesIdPut', () async {
      // TODO
    });

    // Create a new note
    //
    // Create a note for the authenticated user
    //
    //Future<ApiV1NotesPost201Response> apiV1NotesPost({ ApiV1NotesPostRequest apiV1NotesPostRequest }) async
    test('test apiV1NotesPost', () async {
      // TODO
    });
  });
}
