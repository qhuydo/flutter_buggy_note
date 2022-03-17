import 'package:collection/collection.dart';

import '../common/date_utils.dart';
import '../data/api/todo_api.dart';
import '../data/models.dart';

class TodoRepository {
  final TodoApi _todoApi;

  const TodoRepository(this._todoApi);

  Stream<List<Todo>> getTodos() => _todoApi.getTodos();

  Stream<List<Todo>> getTodayTodos() =>
      _todoApi.getTodos().map((todos) => todos.where((element) {
            return element.dueDate != null &&
                element.dueDate!.isSameDate(
                  DateTime.now(),
                );
          }).toList());

  Future<Iterable<Todo>> search(SearchOption searchOption) =>
      _todoApi.search(searchOption);

  Future<void> saveTodo(Todo todo, {bool overwrite = false}) =>
      _todoApi.saveTodo(
        todo,
        overwrite: overwrite,
      );

  Future<void> deleteTodo(int id) => _todoApi.removeTodo(id);

  Future<void> completeTodo(int id) => _todoApi.completeTodo(id: id);

  Stream<Map<DateTime, List<Todo>>> getEventMap() => _todoApi
      .getTodos()
      // remove unscheduled todos
      .map((todos) => todos.where((element) => element.dueDate != null))
      // group todos by due date
      .map(
        (todos) => todos.groupListsBy(
          (element) => element.dueDate!.keepDayInfo(),
        ),
      );
}
