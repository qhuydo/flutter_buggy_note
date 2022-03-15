import '../data/api/todo_api.dart';
import '../data/todo/todo.dart';

class TodoRepository {
  final TodoApi _todoApi;

  const TodoRepository(this._todoApi);

  Stream<List<Todo>> getTodos() => _todoApi.getTodos();

  Future<void> saveTodo(Todo todo) => _todoApi.saveTodo(todo);

  Future<void> deleteTodo(int id) => _todoApi.removeTodo(id);

  Future<void> completeTodo(int id) => _todoApi.completeTodo(id: id);
}
