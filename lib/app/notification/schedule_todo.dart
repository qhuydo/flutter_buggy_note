import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

import '../../common/date_utils.dart';
import '../../data/todo/todo.dart';

extension FlutterLocalNotificationsPluginX on FlutterLocalNotificationsPlugin {
  Future<void> scheduleTodo(Todo todo, {reschedule = false}) async {
    if (kIsWeb || !Platform.isLinux) {
      if (reschedule) {
        await cancel(todo.id);
      }

      if (todo.dueDate == null) return;

      if (todo.dueDate?.isBefore(DateTime.now()) == true) return;

      var date = todo.dueDate!;
      if (DateTime.now().add(const Duration(minutes: 10)).isBefore(date)) {
        date = date.subtract(const Duration(minutes: 10));
      }
      log('Schedule at ${date.getFormattedDueDate()}');

      await zonedSchedule(
        todo.id,
        todo.title,
        todo.description,
        tz.TZDateTime.from(date, tz.local),
        const NotificationDetails(
          android: AndroidNotificationDetails(
            'reminder',
            'Reminders',
          ),
        ),
        uiLocalNotificationDateInterpretation:
            UILocalNotificationDateInterpretation.absoluteTime,
        androidAllowWhileIdle: true,
        payload: todo.id.toString(),
      );
    }
  }
}
