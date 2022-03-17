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

  factory EditTodoState(
      {EditTodoStatus status = EditTodoStatus.initial,
      Todo? initialTodo,
      String title = '',
      String description = ''}) {
    return EditTodoState.__(
      status,
      initialTodo,
      initialTodo?.title ?? title,
      initialTodo?.description ?? description,
    );
  }

  factory EditTodoState.__(
    EditTodoStatus status,
    Todo? initialTodo,
    String title,
    String description,
  ) = _EditTodoState;

  bool get isNewTodo => initialTodo == null;
}
