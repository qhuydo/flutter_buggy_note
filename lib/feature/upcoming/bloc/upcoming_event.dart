part of 'upcoming_bloc.dart';

@freezed
class UpcomingEvent with _$UpcomingEvent {
  const factory UpcomingEvent.subscriptionSelected() =
      _UpcomingEventSubscriptionSelected;

  const factory UpcomingEvent.dateSelected({
    required DateTime selectedDay,
    required DateTime focusedDay,
  }) = _UpcomingEventDateSelected;

  const factory UpcomingEvent.formatChanged({
    required CalendarFormat format,
  }) = _UpcomingEventFormatChanged;
}
