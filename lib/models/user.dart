class User {
  final String name;
  final String email;
  final String? userId;

  User({
    required this.name,
    required this.email,
    this.userId,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'] ?? json['username'] ?? json['full_name'] ?? json['display_name'] ?? '',
      email: json['email'] ?? '',
      userId: json['userId']?.toString() ?? json['id']?.toString(),
    );
  }
}

