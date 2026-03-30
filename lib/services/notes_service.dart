import 'package:dio/dio.dart';
import '../models/note.dart';
import '../api_client/api_manager.dart';

class NotesService {
  static Future<List<Note>> getNotes() async {
    try {
      final dio = ApiManager.dio;
      final response = await dio.get('/api/v1/notes');
      final data = response.data as Map<String, dynamic>;
      if (data['success'] != true) throw Exception(data['message'] ?? 'Failed to fetch notes');
      final result = data['result'] as Map<String, dynamic>;
      final notes = result.values.map<Note>((json) => Note.fromJson(json as Map<String, dynamic>)).toList();
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
}
