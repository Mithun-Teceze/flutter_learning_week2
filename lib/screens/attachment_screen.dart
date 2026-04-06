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
  List<PlatformFile> _selectedFiles = [];
  bool _isUploading = false;
  String? _uploadStatus;

  Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      type: FileType.any,
      allowMultiple: true,
    );

    if (result != null && result.files.isNotEmpty) {
      setState(() {
        // Add new files, dedupe by name + size to allow multiple picks
        for (final newFile in result.files) {
          if (!_selectedFiles.any((existing) => existing.name == newFile.name && existing.size == newFile.size)) {
            _selectedFiles.add(newFile);
          }
        }
        _uploadStatus = null;
      });
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Added ${result.files.length} files (${_selectedFiles.length} total)') ),
        );
      }
    } else {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('No files selected')),
        );
      }
    }
  }

  Future<void> _uploadAllFiles() async {
    if (_selectedFiles.isEmpty) return;

    setState(() {
      _isUploading = true;
      _uploadStatus = 'Uploading ${_selectedFiles.length} files...';
    });

    try {
      for (final file in _selectedFiles) {
        await NotesService.uploadAttachment(widget.noteId, file);
        setState(() {
          _uploadStatus = 'Uploaded ${file.name} ✅';
        });
        await Future.delayed(const Duration(milliseconds: 500));
      }
      if (mounted) {
        Navigator.pop(context, true);
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _uploadStatus = 'One or more uploads failed';
        });
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Upload failed: $e')),
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
        title: const Text('Manage Attachments'),
        backgroundColor: Colors.blue[700],
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              // Always show file picker section
              GestureDetector(
                onTap: _pickFile,
                child: Container(
                  width: double.infinity,
                  height: 160,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]!, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cloud_upload_outlined, size: 48, color: Colors.grey[400]),
                      const SizedBox(height: 12),
                      const Text(
                        'Click to browse files',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        'All file types supported',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              // Always show selected files section

              const SizedBox(height: 16),
              if (_selectedFiles.isEmpty)
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey[50],
                    border: Border.all(color: Colors.grey[300]!),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.folder_open, size: 64, color: Colors.grey),
                      SizedBox(height: 16),
                      Text(
                        'No files selected',
                        style: TextStyle(fontSize: 18, color: Colors.grey, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 8),
                      Text('Tap above to select files', style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                )
              else ...[
                LayoutBuilder(
                  builder: (context, constraints) {
                    final crossAxisCount = (constraints.maxWidth / 160).floor().clamp(2, 5);
                    return SizedBox(
                      height: 200,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          childAspectRatio: 1.0,
                          crossAxisSpacing: 12,
                          mainAxisSpacing: 12,
                        ),
                        itemCount: _selectedFiles.length,
                        itemBuilder: (context, index) {
                          final file = _selectedFiles[index];
                          final isImage = ['png', 'jpg', 'jpeg', 'webp', 'gif'].contains(file.extension?.toLowerCase());
                          final isPdf = file.extension?.toLowerCase() == 'pdf';
                          return Stack(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(color: Colors.grey[300]!),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12),
                                  child: isImage
                                    ? Image.memory(
                                        file.bytes!,
                                        fit: BoxFit.cover,
                                        width: double.infinity,
                                        height: double.infinity,
                                        errorBuilder: (context, error, stackTrace) => Icon(Icons.image, size: 56, color: Colors.grey[600]),
                                      )
                                    : isPdf
                                      ? Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.picture_as_pdf, size: 64, color: Colors.red[600]),
                                            const SizedBox(height: 4),
                                            const Text(
                                              'PDF',
                                              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.red),
                                            ),
                                          ],
                                        )
                                      : Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.insert_drive_file, size: 56, color: Colors.grey[600]),
                                            const SizedBox(height: 4),
                                          ],
                                        ),
                                ),
                              ),
                              Positioned(
                                top: 4,
                                right: 4,
                                child: IconButton(
                                  icon: const Icon(Icons.close, size: 20),
                                  onPressed: () => setState(() => _selectedFiles.removeAt(index)),
                                ),
                              ),
                              Positioned(
                                bottom: 4,
                                left: 4,
                                right: 4,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 2),
                                  decoration: BoxDecoration(
                                    color: Colors.black54,
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  child: Text(
                                    file.name,
                                    style: const TextStyle(fontSize: 11, color: Colors.white, fontWeight: FontWeight.w500),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                              if (file.size > 0)
                                Positioned(
                                  bottom: 4,
                                  right: 4,
                                  child: Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.black54,
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      '${(file.size / 1024).toStringAsFixed(1)} KB',
                                      style: const TextStyle(fontSize: 10, color: Colors.white),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    );
                  },
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _isUploading ? null : _uploadAllFiles,
                    icon: _isUploading
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Icon(Icons.upload),
                    label: Text(_isUploading ? 'Uploading...' : 'Upload All (${_selectedFiles.length})'),
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
                    color: _uploadStatus!.contains('Uploaded') || _uploadStatus!.contains('success')
                      ? Colors.green[50]
                      : Colors.red[50],
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: _uploadStatus!.contains('Uploaded') || _uploadStatus!.contains('success')
                        ? Colors.green
                        : Colors.red,
                    ),
                  ),
                  child: Row(
                    children: [
                      Icon(
                        _uploadStatus!.contains('Uploaded') || _uploadStatus!.contains('success')
                          ? Icons.check_circle
                          : Icons.error_outline,
                        color: _uploadStatus!.contains('Uploaded') || _uploadStatus!.contains('success')
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

