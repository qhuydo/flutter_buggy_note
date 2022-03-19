import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

import '../../common/date_utils.dart';
import '../helpers/hive_type_id_map.dart';
import '../label/label.dart';
import 'priority.dart';
import 'todo_status.dart';

part 'todo.freezed.dart';

part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const Todo._();

  @HiveType(typeId: typeIdTodo, adapterName: 'TodoAdapter')
  const factory Todo({
    @HiveField(0) required int id,
    @HiveField(1) @Default('') String title,
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

  String? get formattedDueDate {
    if (dueDate == null) return null;
    return dueDate!.getFormattedDueDateWithTime();
  }

  bool get isOverdue =>
      (dueDate?.isBefore(DateTime.now()) == true) &&
      status == TodoStatus.pending;
}
