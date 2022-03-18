import 'package:intl/intl.dart';

extension DateTimeX on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  DateTime keepDayInfo() {
    return DateTime(year, month, day);
  }

  String getFormattedDueDate() {
    return "${DateFormat.yMMMd().format(this)}"
        " ${DateFormat.jm().format(this)}";
  }
}
