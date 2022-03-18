import 'package:flutter/material.dart';
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

extension PriorityX on Priority {
  Color getColour(ThemeData themeData, {bool hidePriority4 = false}) {
    switch (this) {
      case Priority.priority1:
        return themeData.colorScheme.secondary;
      case Priority.priority2:
        return themeData.primaryColorDark;
      case Priority.priority3:
        return themeData.primaryColorLight;
      case Priority.priority4:
        return hidePriority4
            ? Colors.transparent
            : themeData.textTheme.caption!.color!;
    }
  }

  String getText() {
    switch (this) {
      case Priority.priority1:
        return 'Priority 1';
      case Priority.priority2:
        return 'Priority 2';
      case Priority.priority3:
        return 'Priority 3';
      case Priority.priority4:
        return 'Priority 4';
    }
  }
}
