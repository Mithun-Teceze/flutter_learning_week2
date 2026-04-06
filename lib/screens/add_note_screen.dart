import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/note.dart';
import '../models/attachment.dart';
import '../services/notes_service.dart';
import 'attachment_screen.dart';

class AddNoteScreen extends StatefulWidget {
  const AddNoteScreen({super.key});

  @override
  State<AddNoteScreen> createState() => _AddNoteScreenState();
}

class _AddNoteScreenState extends State<AddNoteScreen> {
  Note? _note;
  List<Attachment> _attachments = [];
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _contentController = TextEditingController();
  bool _isLoading = false;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _note ??= ModalRoute.of(context)?.settings.arguments as Note?;
    if (_note != null && (_titleController.text.isEmpty)) {
      _titleController.text = _note!.title;
      _contentController.text = _note!.content;
      setState(() {
        _attachments = List<Attachment>.from(_note!.attachments);
      });
    }
  }

  Future<void> _refreshNote() async {
    try {
      final notes = await NotesService.getNotes();
      final updatedNote = notes.firstWhere((n) => n.id == _note!.id);
      setState(() {
        _note = updatedNote;
        _titleController.text = updatedNote.title;
        _contentController.text = updatedNote.content;
        _attachments = List<Attachment>.from(updatedNote.attachments);
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Failed to refresh note: $e')),
      );
    }
  }

  Future<void> _deleteAttachment(Attachment attachment) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Attachment'),
        content: Text('Delete "${attachment.filename}"?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirm == true) {
      try {
        await NotesService.deleteAttachment(attachment.attachmentId);
        setState(() {
          _attachments.remove(attachment);
        });
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Attachment deleted')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to delete attachment: $e')),
        );
      }
    }
  }

  Future<void> _manageAttachments() async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => AttachmentScreen(noteId: _note!.id),
      ),
    );
    if (result == true) {
      await _refreshNote();
    }
  }

  @override
  void dispose() {
    _titleController.dispose();
    _contentController.dispose();
    super.dispose();
  }

  Future<void> _saveNote() async {
    if (!_formKey.currentState!.validate()) return;

    final isEdit = _note != null;
    if (isEdit) {
      final confirm = await showDialog<bool>(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text('Update Note'),
          content: const Text('Are you sure you want to update this note?'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context, false),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, true),
              style: TextButton.styleFrom(foregroundColor: Colors.orange),
              child: const Text('Update'),
            ),
          ],
        ),
      );
      if (confirm != true) return;
    }

    setState(() => _isLoading = true);

    final now = DateTime.now();
    final id = _note?.id ?? now.millisecondsSinceEpoch.toString();
    final note = Note(
      id: id,
      title: _titleController.text,
      content: _contentController.text,
      createdAt: _note?.createdAt ?? now,
      attachments: _attachments,
    );

    try {
      if (_note != null) {
        await NotesService.updateNote(id, note);
      } else {
        await NotesService.addNote(note);
      }
      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error when saving note')),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isEdit = _note != null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isEdit ? 'Edit Note' : 'Add Note'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        actions: isEdit && _attachments.isNotEmpty ? [
          IconButton(
            icon: const Icon(Icons.attach_file),
            onPressed: _manageAttachments,
            tooltip: 'Manage Attachments',
          ),
        ] : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.title),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
                maxLength: 100,
              ),
              const SizedBox(height: 16),
              Expanded(
                child: TextFormField(
                  controller: _contentController,
                  decoration: const InputDecoration(
                    labelText: 'Content',
                    border: OutlineInputBorder(),
                    alignLabelWithHint: true,
                    prefixIcon: Icon(Icons.note),
                  ),
                  maxLines: null,
                  keyboardType: TextInputType.multiline,
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter content';
                    }
                    return null;
                  },
                ),
              ),
              if (isEdit && _attachments.isNotEmpty) ...[
                const Text(
                  'Attachments',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green),
                ),

                const SizedBox(height: 8),
                SizedBox(
                  height: 280,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: _attachments.length,
                    itemBuilder: (context, index) {
                      final attachment = _attachments[index];
                      final isImage = RegExp(r'\.(png|jpg|jpeg|webp|gif)$', caseSensitive: false).hasMatch(attachment.filename);
                      final isPdf = attachment.filename.toLowerCase().endsWith('.pdf');
                      return Padding(
                        padding: const EdgeInsets.only(right: 12),
                        child: SizedBox(
                          width: 200,
                          height: 280,
                          child: Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey[300]!),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: isImage
                                    ? CachedNetworkImage(
                                        imageUrl: attachment.url,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: double.infinity,
                                        placeholder: (context, url) => Icon(Icons.image, color: Colors.grey[400], size: 40),
                                        errorWidget: (context, url, error) => Icon(Icons.image, color: Colors.grey[600], size: 40),
                                      )
                                    : isPdf
                                      ? Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.picture_as_pdf, size: 64, color: Colors.red[600]),
                                            const SizedBox(height: 4),
                                            Text(
                                              'PDF',
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red[700]),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.insert_drive_file, size: 48, color: Colors.grey[600]),
                                            Text(
                                              attachment.filename.split('.').last.toUpperCase(),
                                              style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                                            ),
                                          ],
                                        ),
                                ),
                              ),
                              Positioned(
                                top: 4,
                                right: 4,
                                child: IconButton(
                                  icon: const Icon(Icons.close, size: 20, color: Colors.red),
                                  onPressed: () => _deleteAttachment(attachment),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _saveNote,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[700],
                    foregroundColor: Colors.white,
                  ),
                  child: _isLoading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : Text(isEdit ? 'Update Note' : 'Save Note'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
