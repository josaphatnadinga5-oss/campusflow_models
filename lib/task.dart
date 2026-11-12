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
}