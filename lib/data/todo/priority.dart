import 'package:hive/hive.dart';

import '../helpers/hive_type_id_map.dart';

part 'priority.g.dart';

@HiveType(typeId: typeIdPriority)
enum Priority {
  @HiveField(0)
  priority1,
  @HiveField(1)
  priority2,
  @HiveField(2)
  priority3,
  @HiveField(3)
  priority4,
}
