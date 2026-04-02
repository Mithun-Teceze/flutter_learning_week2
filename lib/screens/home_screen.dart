import 'package:flutter/material.dart';
import '../models/note.dart';
// import '../models/attachment.dart';
import '../services/notes_service.dart';
import '../services/auth_service.dart';
import 'login_screen.dart';
import 'profile_screen.dart';
import 'add_note_screen.dart';
import 'attachment_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<List<Note>> _notesFuture;
  bool _showSearch = false;
  late TextEditingController _searchController;
  List<Note> _allNotes = [];
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchController.addListener(_onSearchChanged);
    _refreshNotes();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _onSearchChanged() {
    setState(() {
      _searchQuery = _searchController.text.toLowerCase();
    });
  }

  List<Note> _getFilteredNotes() {
    if (_searchQuery.isEmpty) return _allNotes;
    return _allNotes.where((note) => note.title.toLowerCase().contains(_searchQuery)).toList();
  }

  void _clearSearch() {
    _searchController.clear();
    setState(() {
      _searchQuery = '';
    });
  }

  Future<void> _refreshNotes() async {
    setState(() {
      _notesFuture = NotesService.getNotes();
    });
  }

  Future<void> _logout() async {
    await AuthService.clearToken();
    if (mounted) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginScreen()),
      );
    }
  }

  Future<void> _addOrEditNote(Note? note) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => AddNoteScreen(),
        settings: RouteSettings(arguments: note),
      ),
    );
    if (result == true && mounted) {
      _refreshNotes();
    }
  }

  Future<void> _deleteNote(String id) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Note'),
        content: const Text('Are you sure you want to delete this note?'),
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
      await NotesService.deleteNote(id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Note deleted')),
        );
        _refreshNotes();
      }
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year} ${date.hour.toString().padLeft(2, '0')}:${date.minute.toString().padLeft(2, '0')}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notes App'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => setState(() => _showSearch = !_showSearch),
            tooltip: _showSearch ? 'Close search' : 'Search',
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.account_circle),
            onSelected: (value) {
              if (value == 'profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              } else if (value == 'logout') {
                _logout();
              }
            },
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'profile',
                child: Row(
                  children: [
                    Icon(Icons.person, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('My Profile'),
                  ],
                ),
              ),
              const PopupMenuItem(
                value: 'logout',
                child: Row(
                  children: [
                    Icon(Icons.logout, color: Colors.red),
                    SizedBox(width: 8),
                    Text('Log Out'),
                  ],
                ),
              ),
            ],
            tooltip: 'Account',
          ),
        ],
      ),
      body: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            height: _showSearch ? 72 : 0,
            child: _showSearch
              ? Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _searchController,
                          autofocus: true,
                          decoration: InputDecoration(
                            hintText: 'Search notes...',
                            border: const OutlineInputBorder(),
                            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                            suffixIcon: _searchController.text.isNotEmpty 
                              ? IconButton(
                                  icon: const Icon(Icons.close),
                                  onPressed: _clearSearch,
                                ) 
                              : null,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : null,
          ),
          Expanded(
            child: FutureBuilder<List<Note>>(
              future: _notesFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.error_outline, size: 64, color: Colors.red[300]),
                        const SizedBox(height: 16),
                        const Text('Failed to load notes', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.red)),
                        const SizedBox(height: 8),
                        const Text('Please check your connection and try again.', style: TextStyle(fontSize: 16, color: Colors.red)),
                        const SizedBox(height: 24),
                        ElevatedButton.icon(
                          onPressed: _refreshNotes,
                          icon: const Icon(Icons.refresh),
                          label: const Text('Retry'),
                        ),
                      ],
                    ),
                  );
                }
                _allNotes = snapshot.data ?? [];
                final filteredNotes = _getFilteredNotes();
                if (filteredNotes.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          _searchQuery.isEmpty ? Icons.notes_outlined : Icons.search_off,
                          size: 100,
                          color: Colors.grey,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          _searchQuery.isEmpty ? 'No notes yet' : 'No matching notes',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        if (_searchQuery.isEmpty) ...[
                          const SizedBox(height: 8),
                          const Text(
                            'Tap + to add your first note',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ],
                    ),
                  );
                }
                return ListView.builder(
                  padding: const EdgeInsets.all(16),
                  itemCount: filteredNotes.length,
                  itemBuilder: (context, index) {
                    final note = filteredNotes[index];
                    return Card(
                      margin: const EdgeInsets.only(bottom: 12),
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                  child: Text(
                                    note.title,
                                    style: Theme.of(context).textTheme.titleLarge,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                PopupMenuButton<NoteAction>(
                                  icon: const Icon(Icons.more_vert, color: Colors.grey),
                                  onSelected: (action) {
                                    if (action == NoteAction.edit) {
                                      _addOrEditNote(note);
                                    } else if (action == NoteAction.attach) {
                                      Navigator.push<bool>(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AttachmentScreen(noteId: note.id),
                                        ),
                                      ).then((refresh) {
                                        if (refresh == true && mounted) {
                                          _refreshNotes();
                                        }
                                      });
                                    } else {
                                      _deleteNote(note.id);
                                    }
                                  },
                                  itemBuilder: (context) => [
                                    PopupMenuItem<NoteAction>(
                                      value: NoteAction.edit,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.edit, color: Colors.blue),
                                          SizedBox(width: 8),
                                          Text('Edit'),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem<NoteAction>(
                                      value: NoteAction.attach,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.attach_file, color: Colors.green),
                                          SizedBox(width: 8),
                                          Text('Attach File'),
                                        ],
                                      ),
                                    ),
                                    PopupMenuItem<NoteAction>(
                                      value: NoteAction.delete,
                                      child: const Row(
                                        children: [
                                          Icon(Icons.delete, color: Colors.red),
                                          SizedBox(width: 8),
                                          Text('Delete'),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              note.content,
                              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: Colors.grey[600],
                              ),
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                            ),
                            if (note.attachments.isNotEmpty) ...[
                              const SizedBox(height: 8),
                              SizedBox(
                                height: 100,
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: note.attachments.length,
                                  itemBuilder: (context, index) {
                                    final att = note.attachments[index];
                                    return Padding(
                                      padding: const EdgeInsets.only(right: 8),
                                      child: Stack(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(8),
                                            child: SizedBox(
                                              width: 90,
                                              height: 90,
                                              child: att.filename.toLowerCase().contains(RegExp(r'.(png|jpg|jpeg|webp|gif)$'))
                                                ? Image.network(att.url, fit: BoxFit.cover, errorBuilder: (c, e, st) => Icon(Icons.image, color: Colors.grey))
                                                : Icon(Icons.insert_drive_file, color: Colors.grey),
                                            ),
                                          ),
                                        ],

                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                            const SizedBox(height: 12),
                            Text(
                              _formatDate(note.createdAt),
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey[500],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _addOrEditNote(null),
        backgroundColor: Colors.blue[700],
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

enum NoteAction { edit, delete, attach }

