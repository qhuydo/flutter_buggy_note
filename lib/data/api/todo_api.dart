import '../search_option/search_option.dart';
import '../todo/todo.dart';

abstract class TodoApi {
  const TodoApi();

  Stream<List<Todo>> getTodos();

  Future<int> saveTodo(Todo todo, {bool keepId = false});

  Future<void> removeTodo(int id);

  Future<void> completeTodo({required int id});

  Future<Iterable<Todo>> search(SearchOption searchOption);
}
