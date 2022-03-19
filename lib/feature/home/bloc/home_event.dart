part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {

  factory HomeEvent.todoRemoved({required Todo todo}) = HomeEventTodoRemoved;

  factory HomeEvent.todoCompletionToggled({
    required Todo todo,
    required bool isCompleted,
  }) = HomeEventTodoCompletionToggled;

  factory HomeEvent.undoDeletionRequested() = HomeEventUndoDeletionRequested;
  factory HomeEvent.viewModeChanged(ViewMode viewMode) = _HomeEventViewModeChanged;
  factory HomeEvent.filterCompletedTodoOptionChanged(bool showCompletedNote) = _HomeEventFilterCompletedTodoOptionChanged;
}
