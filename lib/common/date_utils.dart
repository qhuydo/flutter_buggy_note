extension DateTimeX on DateTime {
  bool isSameDate(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }

  DateTime keepDayInfo() {
    return DateTime(year, month, day);
  }
}
