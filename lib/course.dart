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
}