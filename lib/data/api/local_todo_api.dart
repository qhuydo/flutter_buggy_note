import 'package:hive/hive.dart';
import 'package:rxdart/subjects.dart';

import '../../common/todo_failure.dart';
import '../todo/todo.dart';
import '../todo/todo_status.dart';
import 'todo_api.dart';

class LocalTodoApi implements TodoApi {
  late final Box<Todo> _box;
  static const _boxName = 'todo';
  final _todoStreamController = BehaviorSubject<List<Todo>>.seeded(const []);

  LocalTodoApi() {
    _init();
  }

  Future<void> _init() async {
    _box = await Hive.openBox<Todo>(_boxName);
    final todos = _box.values.toList();
    _todoStreamController.add(todos);
  }

  @override
  Stream<List<Todo>> getTodos() => _todoStreamController.asBroadcastStream();

  @override
  Future<void> removeTodo(int id) async {
    await _box.deleteAt(id);
    _todoStreamController.add(_box.values.toList());
  }

  @override
  Future<void> completeTodo({required int id}) async {
    final todo = _box.get(id);
    if (todo == null) {
      throw TodoFailure.notFound();
    }
    await _box.putAt(id, todo.copyWith(status: TodoStatus.completed));
    _todoStreamController.add(_box.values.toList());
  }

  @override
  Future<void> saveTodo(Todo todo) async {
    final nextId = await _box.add(todo);
    // final nextId = _box.length;
    await _box.putAt(nextId, todo.copyWith(id: nextId));
    _todoStreamController.add(_box.values.toList());
  }

}