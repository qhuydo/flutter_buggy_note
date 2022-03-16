import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../helpers/hive_type_id_map.dart';
import '../label/label.dart';
import 'priority.dart';
import 'todo_status.dart';

part 'todo.g.dart';
part 'todo.freezed.dart';

@freezed
class Todo with _$Todo {
  @HiveType(typeId: typeIdTodo, adapterName: 'TodoAdapter')
  factory Todo({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) int? colour,
    @HiveField(3) DateTime? dueDate,
    @HiveField(4) @Default(Priority.priority4) Priority priority,
    @HiveField(5) @Default('') String comment,
    @HiveField(6) @Default(TodoStatus.pending) TodoStatus status,
    @HiveField(7) @Default(false) isArchived,
    @HiveField(8) @Default(false) isRemoved,
    @HiveField(9) @Default(0) int order,
    @HiveField(10) @Default([]) List<Label> labels,
    @HiveField(11) @Default('') String description,
  }) = _Todo;

// factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
