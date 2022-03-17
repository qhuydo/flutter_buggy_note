import '../search_option/search_option.dart';
import '../todo/todo.dart';

abstract class TodoApi {
  const TodoApi();

  Stream<List<Todo>> getTodos();

  Future<void> saveTodo(Todo todo, {bool overwrite = false});

  Future<void> removeTodo(int id);

  Future<void> completeTodo({required int id});

  Iterable<Todo> search(SearchOption searchOption);
}
