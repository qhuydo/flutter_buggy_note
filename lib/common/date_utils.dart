import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  DateTime keepDayInfo() {
    return DateTime(year, month, day);
  }

  String getFormattedDueDateWithTime() {
    return "${DateFormat.yMMMd().format(this)}"
        " ${DateFormat.jm().format(this)}";
  }

  String getFormattedDueDate() => DateFormat.yMMMd().format(this);
}
