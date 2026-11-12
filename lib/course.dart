class Course {
  final String id;
  final String name;
  final String teacher;

  const Course({required this.id, required this.name, required this.teacher});

  Course copyWith({String? name, String? teacher}) {
    return Course(
      id: id,
      name: name ?? this.name,
      teacher: teacher ?? this.teacher,
    );
  }
  factory Course.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    final teacher = json['teacher'];
    if (id == null || name == null || teacher == null) {
      throw const FormatException('Champ manquant dans Course');
    }
    return Course(
      id: id as String,
      name: name as String,
      teacher: teacher as String,
    );
  }
}