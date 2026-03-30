import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import '../models/note.dart';

class NotesService {
  static const String _notesKey = 'notes_list';

  static Future<List<Note>> getNotes() async {
    final prefs = await SharedPreferences.getInstance();
    final notesJsonString = prefs.getString(_notesKey);
    if (notesJsonString == null) {
      return [];
    }
    final List<dynamic> notesJson = json.decode(notesJsonString);
    final notes = notesJson.map((json) => Note.fromJson(json as Map<String, dynamic>)).toList();
    // Sort reverse chronological (newest first)
    notes.sort((a, b) => b.id.compareTo(a.id));
    return notes;
  }

  static Future<void> addNote(Note note) async {
    final notes = await getNotes();
    notes.add(note);
    await _saveNotes(notes);
  }

  static Future<void> updateNote(int id, Note updatedNote) async {
    final notes = await getNotes();
    final index = notes.indexWhere((note) => note.id == id);
    if (index != -1) {
      notes[index] = updatedNote;
      await _saveNotes(notes);
    }
  }

  static Future<void> deleteNote(int id) async {
    final notes = await getNotes();
    notes.removeWhere((note) => note.id == id);
    await _saveNotes(notes);
  }

  static Future<void> _saveNotes(List<Note> notes) async {
    final prefs = await SharedPreferences.getInstance();
    final notesJson = notes.map((note) => note.toJson()).toList();
    await prefs.setString(_notesKey, json.encode(notesJson));
  }
}

