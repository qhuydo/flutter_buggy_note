part of 'upcoming_bloc.dart';

enum UpcomingStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class UpcomingState with _$UpcomingState {
  static DateTime getDefaultFocusedDay() => DateTime.now();

  static DateTime defaultFirstDay = DateTime(1970, 1, 1);
  // unix timestamp last date
  static DateTime defaultLastDay = DateTime(2038, 1, 19);

  const UpcomingState._();

  const factory UpcomingState({
    @Default(UpcomingStatus.initial) UpcomingStatus status,
    @Default(CalendarFormat.twoWeeks) CalendarFormat format,
    required DateTime focusedDay,
    DateTime? selectedDay,
    required DateTime firstDay,
    required DateTime lastDay,
    @Default ({}) Map<DateTime, List<Todo>> eventMap,
  }) = _UpcomingState;

  List<Todo> get currentTodos => eventMap[selectedDay] ?? [];
}
