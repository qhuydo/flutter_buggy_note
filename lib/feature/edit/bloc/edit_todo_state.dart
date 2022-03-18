part of 'edit_todo_bloc.dart';

enum EditTodoStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class EditTodoState with _$EditTodoState {
  const EditTodoState._();

  factory EditTodoState({
    EditTodoStatus status = EditTodoStatus.initial,
    Todo? initialTodo,
    String title = '',
    String description = '',
    bool isNewTodo = false,
    DateTime? dueDate,
    todo_model.Priority priority = todo_model.Priority.priority4,
  }) {
    return EditTodoState.__(
      status,
      initialTodo,
      initialTodo?.title ?? title,
      initialTodo?.description ?? description,
      isNewTodo,
      initialTodo?.dueDate ?? dueDate,
      initialTodo?.priority ?? priority,
    );
  }

  factory EditTodoState.__(
    EditTodoStatus status,
    Todo? initialTodo,
    String title,
    String description,
    bool isNewTodo,
    DateTime? dueDate,
    todo_model.Priority priority,
  ) = _EditTodoState;
}
