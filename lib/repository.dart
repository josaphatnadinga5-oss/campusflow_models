import 'course.dart';
import 'task.dart';
import 'user.dart';

class CampusRepository {
  Future<List<Task>> loadTasks() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = [
      {'id': 't1', 'title': 'Rapport de TP', 'dueDate': '2026-11-20', 'courseId': 'c1'},
      {'id': 't2', 'title': 'Projet Flutter', 'dueDate': '2026-11-27', 'courseId': 'c2', 'done': true},
    ];
    return data.map(Task.fromJson).toList();
  }

  Future<List<Course>> loadCourses() async {
    await Future.delayed(const Duration(seconds: 1));
    final data = [
      {'id': 'c1', 'name': 'Réseaux', 'teacher': 'M. Traoré'},
      {'id': 'c2', 'name': 'Développement mobile', 'teacher': 'Mme Ouédraogo'},
    ];
    return data.map(Course.fromJson).toList();
  }

  Future<User> loadUser() async {
    await Future.delayed(const Duration(seconds: 1));
    return User.fromJson({'id': 'u1', 'name': 'Josaphat', 'email': 'josaphat@exemple.com'});
  }
}