part of 'edit_todo_bloc.dart';

@freezed
class EditTodoEvent with _$EditTodoEvent {
  factory EditTodoEvent.titleChanged(String title) = _EditTodoTitleChanged;

  factory EditTodoEvent.descriptionChanged(String description) =
      _EditTodoDescriptionChanged;

  factory EditTodoEvent.submitted() = _EditTodoSubmitted;
}
