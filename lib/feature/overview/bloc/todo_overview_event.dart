part of 'todo_overview_bloc.dart';

@freezed
class TodoOverviewEvent with _$TodoOverviewEvent {
  factory TodoOverviewEvent.subscriptionRequested() =
      TodoOverviewSubscriptionRequested;

  factory TodoOverviewEvent.todoRemoved({required Todo todo}) =
      TodoOverviewTodoRemoved;

  factory TodoOverviewEvent.filterOptionChanged({
    required TodoViewFilter filter,
  }) = TodoOverviewFilterOptionChanged;

  factory TodoOverviewEvent.todoCompletionToggled({
    required Todo todo,
    required bool isCompleted,
  }) = TodoOverviewEventTodoCompletionToggled;

  factory TodoOverviewEvent.undoDeletionRequested() =
      TodoOverviewEventUndoDeletionRequested;
}
