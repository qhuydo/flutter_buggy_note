import '../models.dart';

enum TodoViewFilter {
  all,
  activeOnly,
  completedOnly,
}

extension TodoViewFilterX on TodoViewFilter {
  bool apply(Todo todo) {
    switch (this) {
      case TodoViewFilter.all:
        return true;
      case TodoViewFilter.activeOnly:
      case TodoViewFilter.completedOnly:
        return todo.status == TodoStatus.completed;
    }
  }

  Iterable<Todo> applyAll(Iterable<Todo> todos) => todos.where(apply);
}
