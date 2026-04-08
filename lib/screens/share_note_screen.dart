import 'package:flutter/material.dart';
import '../models/user.dart';
import '../services/auth_service.dart';
import '../services/users_service.dart';
import '../services/notes_service.dart';

class ShareNoteScreen extends StatefulWidget {
  final String noteId;

  const ShareNoteScreen({super.key, required this.noteId});

  @override
  State<ShareNoteScreen> createState() => _ShareNoteScreenState();
}

class _ShareNoteScreenState extends State<ShareNoteScreen> {
  bool isLoading = true;
  User? currentUser;
  List<User> filteredUsers = [];
  final Set<String> selectedUserIds = <String>{};

  @override
  void initState() {
    super.initState();
    _loadUsers();
  }

  Future<void> _loadUsers() async {
    try {
      final current = await AuthService.getCurrentUser();
      if (current == null) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Unable to load current user. Please login again.')),
          );
        }
        return;
      }
      final allUsers = await UsersService.getAllUsers();
      final filtered = allUsers.where((u) => u.userId != current.userId).toList();
      if (mounted) {
        setState(() {
          currentUser = current;
          filteredUsers = filtered;
          isLoading = false;
        });
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to load users: $e')),
        );
        setState(() => isLoading = false);
      }
    }
  }

  Future<void> _shareNote() async {
    final userIds = selectedUserIds.where((id) => id.isNotEmpty).toList();
    if (userIds.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please select at least one user')),
      );
      return;
    }

    try {
      await NotesService.shareNoteWithUsers(widget.noteId, userIds);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Note shared with ${userIds.length} user(s)!')),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Failed to share note: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Share Note'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: isLoading 
        ? const Center(child: CircularProgressIndicator()) 
        : Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Share note with (${selectedUserIds.length} selected):',
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
              Expanded(
                child: filteredUsers.isEmpty 
                  ? const Center(child: Text('No other users found'))
                  : ListView.builder(
                      itemCount: filteredUsers.length,
                      itemBuilder: (context, index) {
                        final user = filteredUsers[index];
                        final userIdOrEmail = user.userId ?? user.email;
                        final isSelected = selectedUserIds.contains(userIdOrEmail);
                        return CheckboxListTile(
                          title: Text(user.name),
                          subtitle: Text(user.email),
                          value: isSelected,
                          onChanged: (bool? value) {
                            setState(() {
                              if (value == true) {
                                selectedUserIds.add(userIdOrEmail);
                              } else {
                                selectedUserIds.remove(userIdOrEmail);
                              }
                            });
                          },
                        );
                      },
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: selectedUserIds.isNotEmpty ? _shareNote : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    child: Text('Share with ${selectedUserIds.length}', style: const TextStyle(fontSize: 18)),
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
