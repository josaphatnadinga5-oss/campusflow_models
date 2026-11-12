class Task {
  final String id;
  final String title;
  final DateTime dueDate;
  final bool done;
  final String courseId;

  const Task({
    required this.id,
    required this.title,
    required this.dueDate,
    required this.courseId,
    this.done = false,
  });

  Task copyWith({
    String? title,
    DateTime? dueDate,
    bool? done,
    String? courseId,
  }) {
    return Task(
      id: id,
      title: title ?? this.title,
      dueDate: dueDate ?? this.dueDate,
      courseId: courseId ?? this.courseId,
      done: done ?? this.done,
    );
  }
  factory Task.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final title = json['title'];
    final dueDate = json['dueDate'];
    final courseId = json['courseId'];
    if (id == null || title == null || dueDate == null || courseId == null) {
      throw const FormatException('Champ manquant dans Task');
    }
    return Task(
      id: id as String,
      title: title as String,
      dueDate: DateTime.parse(dueDate as String),
      courseId: courseId as String,
      done: (json['done'] as bool?) ?? false,
    );
  }
}