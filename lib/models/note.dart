class Note {
  final String id;
  final String title;
  final String content;
  final DateTime createdAt;
  final List<String> attachments;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.createdAt,
    required this.attachments,
  });

  factory Note.fromJson(Map<String, dynamic> json) {
    return Note(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      attachments: List<String>.from(json['attachments'] ?? []),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'content': content,
      'createdAt': createdAt.toIso8601String(),
      'attachments': attachments,
    };
  }

  @override
  String toString() {
    return 'Note(id: $id, title: $title, createdAt: $createdAt)';
  }
}
