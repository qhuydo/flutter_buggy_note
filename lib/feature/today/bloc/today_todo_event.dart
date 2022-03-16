part of 'today_todo_bloc.dart';

@freezed
class TodayTodoEvent with _$TodayTodoEvent {
  factory TodayTodoEvent.subscriptionRequested() =
      TodayTodoSubscriptionRequested;
}
