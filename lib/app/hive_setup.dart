import 'package:hive_flutter/hive_flutter.dart';

import '../data/models.dart';

Future<void> initHive() async {
  await Hive.initFlutter();

  Hive
    ..registerAdapter(TodoAdapter())
    ..registerAdapter(PriorityAdapter())
    ..registerAdapter(TodoStatusAdapter())
    ..registerAdapter(LabelAdapter());
}
