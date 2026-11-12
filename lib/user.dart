class User {
  final String id;
  final String name;
  final String email;

  const User({required this.id, required this.name, required this.email});

  User copyWith({String? name, String? email}) {
    return User(
      id: id,
      name: name ?? this.name,
      email: email ?? this.email,
    );
  }
  factory User.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    final email = json['email'];
    if (id == null || name == null || email == null) {
      throw const FormatException('Champ manquant dans User');
    }
    return User(
      id: id as String,
      name: name as String,
      email: email as String,
    );
  }
}