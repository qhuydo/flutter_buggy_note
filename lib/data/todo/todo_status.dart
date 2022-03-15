
import 'package:hive/hive.dart';

import '../helpers/hive_type_id_map.dart';

part 'todo_status.g.dart';

@HiveType(typeId: typeIdTodoStatus)
enum TodoStatus {
  @HiveField(0)
  pending,
  @HiveField(1)
  completed,
}
