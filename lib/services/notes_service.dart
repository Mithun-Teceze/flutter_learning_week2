import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import '../models/note.dart';
import '../api_client/api_manager.dart';

class NotesService {
  static Future<List<Note>> getNotes() async {
    try {
      final dio = ApiManager.dio;
      final response = await dio.get('/api/v1/notes');
      final data = response.data;
      
      List<dynamic> notesList;
      
      if (data is List<dynamic>) {
        notesList = data;
      } else if (data is Map<String, dynamic> && data['result'] is List<dynamic>) {
        if (data['success'] != true) {
          throw Exception(data['message'] ?? 'Failed to fetch notes');
        }
        notesList = data['result'] as List<dynamic>;
      } else {
        throw Exception('Unexpected response format: expected List or {success, result: List}');
      }
      
      final notes = notesList.map<Note>((json) => Note.fromJson(json as Map<String, dynamic>)).toList();
      notes.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return notes;
    } on DioException catch (e) {
      throw Exception('Failed to fetch notes: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Failed to fetch notes: $e');
    }
  }

  static Future<void> addNote(Note note) async {
    try {
      final dio = ApiManager.dio;
      await dio.post('/api/v1/notes', data: {
        'title': note.title,
        'content': note.content,
      });
    } on DioException catch (e) {
      throw Exception('Failed to add note: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Failed to add note: $e');
    }
  }

  static Future<void> updateNote(String id, Note updatedNote) async {
    try {
      final dio = ApiManager.dio;
      await dio.put('/api/v1/notes/$id', data: {
        'title': updatedNote.title,
        'content': updatedNote.content,
      });
    } on DioException catch (e) {
      throw Exception('Failed to update note: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Failed to update note: $e');
    }
  }

  static Future<void> deleteNote(String id) async {
    try {
      final dio = ApiManager.dio;
      await dio.delete('/api/v1/notes/$id');
    } on DioException catch (e) {
      throw Exception('Failed to delete note: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Failed to delete note: $e');
    }
  }

  static Future<String> uploadAttachment(String noteId, PlatformFile file) async {
    try {
      if (file.bytes == null || file.bytes!.isEmpty) {
        throw Exception('Invalid file: no bytes available');
      }
      final dio = ApiManager.dio;
      FormData formData = FormData();
      formData.fields.add(MapEntry('noteId', noteId));
      formData.files.add(MapEntry(
        'file',
        await MultipartFile.fromBytes(
          file.bytes ?? [],
          filename: file.name,
        ),
      ));
      final response = await dio.post('/api/v1/files', data: formData);
      
      final data = response.data;
      String fileRef = '';
      
      if (data is Map<String, dynamic>) {
        if (data['success'] != true) {
          final msg = data['message'] ?? 'Upload failed';
          throw Exception(msg);
        }
        fileRef = data['id']?.toString() ?? 
                  data['url']?.toString() ?? 
                  data['filename']?.toString() ?? 
                  data['name']?.toString() ?? '';
        
        // Check result if present
        final result = data['result'];
        if (result is Map<String, dynamic>) {
          fileRef = result['id']?.toString() ?? 
                    result['url']?.toString() ?? 
                    result['filename']?.toString() ?? 
                    result['name']?.toString() ?? fileRef;
        }
      } else {
        fileRef = data?.toString() ?? '';
      }
      
      if (fileRef.isEmpty) {
        throw Exception('Upload succeeded but no file reference returned');
      }
      
      return fileRef;
    } on DioException catch (e) {
      throw Exception('Upload failed: ${e.response?.data ?? e.message}');
    } catch (e) {
      throw Exception('Upload failed: $e');
    }
  }
}
