import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

import '../label/label.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

enum TodoStatus {
  pending,
  completed,
}

@freezed
class Todo with _$Todo {
  factory Todo._({
    required String title,
    required String id,
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

  factory Todo({
    required String title,
    String? id,
    int? colour,
    int? dueDate,
    int? priority,
    String? comment,
    TodoStatus? status,
    bool? isArchived,
    bool? isRemoved,
    int? order,
    List<Label>? labels,
  }) =>
      Todo._(
        title: title,
        id: id ?? const Uuid().v4(),
        colour: colour,
        dueDate: dueDate,
        priority: priority ?? 0,
        comment: comment ?? '',
        status: status ?? TodoStatus.pending,
        isArchived: isArchived ?? false,
        isRemoved: isRemoved ?? false,
        order: order ?? 0,
        labels: labels,
      );

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
