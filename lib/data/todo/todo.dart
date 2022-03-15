import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../label/label.dart';
part 'todo.freezed.dart';
part 'todo.g.dart';

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
    @Default(false) isArchived,
    @Default(false) isRemoved,
    @Default(0) int order,
    List<Label>? labels,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
