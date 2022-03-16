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
    @Default(EditTodoStatus.initial) EditTodoStatus status,
    Todo? initialTodo,
    @Default('') String title,
    @Default('') String description,
  }) = _EditTodoState;

  bool get isNewTodo => initialTodo == null;
}
