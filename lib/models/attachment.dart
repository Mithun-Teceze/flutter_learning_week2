class Attachment {
  final String attachmentId;
  final String filename;
  final String url;

  const Attachment({
    required this.attachmentId,
    required this.filename,
    required this.url,
  });

  factory Attachment.fromJson(Map<String, dynamic> json) {
    return Attachment(
      attachmentId: json['attachmentId'] as String,
      filename: json['filename'] as String,
      url: json['url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'attachmentId': attachmentId,
      'filename': filename,
      'url': url,
    };
  }
}
