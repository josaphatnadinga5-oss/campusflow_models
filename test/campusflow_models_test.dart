import 'package:campusflow_models/campusflow_models.dart';
import 'package:test/test.dart';

void main() {
  test('copyWith modifie un champ et garde les autres', () {
    final task = Task(
      id: 't1',
      title: 'Rapport de TP',
      dueDate: DateTime(2026, 11, 20),
      courseId: 'c1',
    );

    final updated = task.copyWith(done: true);

    expect(updated.done, true);
    expect(updated.title, 'Rapport de TP');
    expect(updated.id, 't1');
    expect(task.done, false); // l'original n'a pas changé
  });

  test('fromJson construit correctement un Task', () {
    final task = Task.fromJson({
      'id': 't1',
      'title': 'Rapport de TP',
      'dueDate': '2026-11-20',
      'courseId': 'c1',
    });

    expect(task.id, 't1');
    expect(task.title, 'Rapport de TP');
    expect(task.dueDate, DateTime(2026, 11, 20));
    expect(task.done, false); // valeur par défaut
  });

  test('fromJson lève une FormatException si un champ manque', () {
    expect(
          () => Task.fromJson({'id': 't1', 'title': 'Sans date'}),
      throwsA(isA<FormatException>()),
    );
  });
}