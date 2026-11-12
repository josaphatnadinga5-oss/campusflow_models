import 'package:campusflow_models/campusflow_models.dart';

Future<void> main() async {
  final repo = CampusRepository();
  print('Chargement...');
  final tasks = await repo.loadTasks();
  for (final t in tasks) {
    print('${t.title} - ${t.dueDate} - fait : ${t.done}');
  }
}