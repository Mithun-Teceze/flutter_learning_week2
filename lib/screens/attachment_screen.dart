import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import '../../services/notes_service.dart';

class AttachmentScreen extends StatefulWidget {
  final String noteId;

  const AttachmentScreen({super.key, required this.noteId});

  @override
  State<AttachmentScreen> createState() => _AttachmentScreenState();
}

class _AttachmentScreenState extends State<AttachmentScreen> {
  PlatformFile? _selectedFile;
  bool _isUploading = false;
  String? _uploadStatus;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: false,
    );

    if (result != null && result.files.isNotEmpty) {
      final file = result.files.first;
      setState(() {
        _selectedFile = file;
        _uploadStatus = null;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Selected: ${file.name} (${file.size} bytes)')),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No file selected')),
        );
      }
    }
  }

  Future<void> _uploadFile() async {
    if (_selectedFile == null) return;

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Uploading ${_selectedFile!.name} to note ${widget.noteId}...')),
      );
    }

    setState(() {
      _isUploading = true;
      _uploadStatus = 'Uploading...';
    });

    try {
      final fileId = await NotesService.uploadAttachment(widget.noteId, _selectedFile!);
      if (mounted) {
        setState(() {
          _uploadStatus = fileId.isNotEmpty ? 'Success! File ID: $fileId' : 'Upload completed';
        });
        await Future.delayed(const Duration(seconds: 1));
        if (mounted) {
          Navigator.pop(context, true);
        }
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _uploadStatus = 'Failed: $e';
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Upload error: $e')),
        );
      }
    } finally {
      if (mounted) {
        setState(() => _isUploading = false);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Attach File'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 40),
              // Icon(
              //   Icons.attach_file,
              //   size: 80,
              //   color: Colors.grey[400],
              // ),
              // const SizedBox(height: 16),
              // Text(
              //   'Attach to note ID: ${widget.noteId.substring(0, 8)}...',
              //   style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.grey[600]),
              //   textAlign: TextAlign.center,
              // ),
              const SizedBox(height: 32),
              GestureDetector(
                onTap: _pickFile,
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!, width: 2, style: BorderStyle.solid),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: _selectedFile == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.cloud_upload_outlined, size: 48, color: Colors.grey[400]),
                          const SizedBox(height: 12),
                          Text(
                            'Click to browse files',
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                          Text(
                            'All file types supported',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.description, size: 48, color: Colors.blue[700]),
                          const SizedBox(height: 12),
                          Text(
                            _selectedFile!.name,
                            style: Theme.of(context).textTheme.titleMedium,
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 4),
                          Text(
                            '${(_selectedFile!.size / 1024).toStringAsFixed(1)} KB',
                            style: TextStyle(color: Colors.grey[600], fontSize: 14),
                          ),
                          Text(
                            _selectedFile!.extension?.toUpperCase() ?? 'FILE',
                            style: TextStyle(
                              color: Colors.blue[600],
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                ),
              ),
              const SizedBox(height: 24),
              if (_selectedFile != null) ...[
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _isUploading ? null : _uploadFile,
                    icon: _isUploading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Icon(Icons.upload),
                    label: Text(_isUploading ? 'Uploading...' : 'Upload File'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue[700],
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    ),
                  ),
                ),
              ],
              const SizedBox(height: 24),
              if (_uploadStatus != null) ...[
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: _uploadStatus!.contains('success') || _uploadStatus!.contains('completed')
                      ? Colors.green[50]
                      : Colors.red[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: (_uploadStatus!.contains('success') || _uploadStatus!.contains('completed'))
                        ? Colors.green!
                        : Colors.red!,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        _uploadStatus!.contains('success') || _uploadStatus!.contains('completed')
                          ? Icons.check_circle
                          : Icons.error_outline,
                        color: _uploadStatus!.contains('success') || _uploadStatus!.contains('completed')
                          ? Colors.green[700]
                          : Colors.red[700],
                        size: 24,
                      ),
                      const SizedBox(width: 12),
                      Expanded(child: Text(_uploadStatus!)),
                    ],
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
