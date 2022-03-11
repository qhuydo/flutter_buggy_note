import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';

enum TodoStatus {
  pending,
  completed,
}

@freezed
class Todo with _$Todo {
  factory Todo({
    required String title,
    required int id,
    int? colour,
    int? dueDate,
    @Default(0) int priority,
    @Default('') String comment,
    @Default(TodoStatus.pending) TodoStatus status,
    @Default([]) List<String> tagList,
    @Default(false) isArchived,
    @Default(false) isRemoved,
    @Default(0) int order,
  }) = _Todo;
}
