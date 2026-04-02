import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import '../models/note.dart';
import '../api_client/api_manager.dart';

class NotesService {
static Future<List<Note>> getNotes() async {
    try {
      print('🔄 Fetching notes from /api/v1/notes...');
      final dio = ApiManager.dio;
      final response = await dio.get('/api/v1/notes');
      final data = response.data;
      print('📥 Raw response: $data');
      
      List<dynamic> notesList = [];
      
      if (data is List<dynamic>) {
        notesList = data;
      } else if (data is Map<String, dynamic>) {
        // Handle common response wrappers
        if (data['success'] != true && data['message'] != null) {
          print('❌ Server error: ${data['message']}');
          return [];
        }
        notesList = data['result'] as List<dynamic>? ?? 
                    data['data'] as List<dynamic>? ?? 
                    data['notes'] as List<dynamic>? ?? 
                    [];
      }
      
      if (notesList.isEmpty) {
        print('📝 No notes found');
        return [];
      }
      
      print('🔄 Parsing ${notesList.length} notes...');
      final notes = <Note>[];
      for (final json in notesList) {
        try {
          notes.add(Note.fromJson(json as Map<String, dynamic>));
        } catch (e) {
          print('⚠️ Failed to parse note $json: $e');
        }
      }
      
      notes.sort((a, b) => b.createdAt.compareTo(a.createdAt));
      print('✅ Loaded ${notes.length} notes');
      return notes;
    } on DioException catch (e) {
      final errorMsg = e.response?.data ?? e.message ?? 'Unknown Dio error';
      print('🌐 DioException details:');
      print('  Status: ${e.response?.statusCode}');
      print('  Data: ${e.response?.data}');
      print('  Message: $errorMsg');
      return [];
    } catch (e) {
      print('💥 Unexpected error in getNotes: $e');
      return [];
    }
  }

  static Future<void> addNote(Note note) async {
    try {
      print('➕ Adding note: ${note.title}');
      final dio = ApiManager.dio;
      final response = await dio.post('/api/v1/notes', data: {
        'title': note.title,
        'content': note.content,
      });
      print('✅ Add note response: ${response.data}');
    } on DioException catch (e) {
      final errorMsg = e.response?.data ?? e.message ?? 'Unknown error';
      print('❌ Add note failed: $errorMsg');
      throw Exception('Failed to add note: $errorMsg');
    } catch (e) {
      print('💥 Add note error: $e');
      throw Exception('Failed to add note: $e');
    }
  }

  static Future<void> updateNote(String id, Note updatedNote) async {
    try {
      print('✏️ Updating note $id: ${updatedNote.title}');
      final dio = ApiManager.dio;
      final response = await dio.put('/api/v1/notes/$id', data: {
        'title': updatedNote.title,
        'content': updatedNote.content,
      });
      print('✅ Update response: ${response.data}');
    } on DioException catch (e) {
      final errorMsg = e.response?.data ?? e.message ?? 'Unknown error';
      print('❌ Update failed: $errorMsg');
      throw Exception('Failed to update note: $errorMsg');
    } catch (e) {
      print('💥 Update error: $e');
      throw Exception('Failed to update note: $e');
    }
  }

  static Future<void> deleteNote(String id) async {
    try {
      print('🗑️ Deleting note $id');
      final dio = ApiManager.dio;
      final response = await dio.delete('/api/v1/notes/$id');
      print('✅ Delete response: ${response.data}');
    } on DioException catch (e) {
      final errorMsg = e.response?.data ?? e.message ?? 'Unknown error';
      print('❌ Delete failed: $errorMsg');
      throw Exception('Failed to delete note: $errorMsg');
    } catch (e) {
      print('💥 Delete error: $e');
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

  static Future<void> deleteAttachment(String attachmentId) async {
    try {
      print('🗑️ Deleting attachment $attachmentId');
      final dio = ApiManager.dio;
      final response = await dio.delete('/api/v1/files/$attachmentId');
      print('✅ Delete attachment response: ${response.data}');
    } on DioException catch (e) {
      final errorMsg = e.response?.data ?? e.message ?? 'Unknown error';
      print('❌ Delete attachment failed: $errorMsg');
      throw Exception('Failed to delete attachment: $errorMsg');
    } catch (e) {
      print('💥 Delete attachment error: $e');
      throw Exception('Failed to delete attachment: $e');
    }
  }
}
