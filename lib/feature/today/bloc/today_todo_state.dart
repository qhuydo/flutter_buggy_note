part of 'today_todo_bloc.dart';

enum TodayTodoStatus {
  initial,
  loading,
  success,
  failure,
}


@freezed
class TodayTodoState with _$TodayTodoState {
  factory TodayTodoState({
    @Default(TodayTodoStatus.initial) TodayTodoStatus status,
    @Default([]) List<Todo> todos,
  }) = _TodayTodoState;
}
