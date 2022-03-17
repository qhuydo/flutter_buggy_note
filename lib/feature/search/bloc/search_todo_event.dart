part of 'search_todo_bloc.dart';

@freezed
class SearchTodoEvent with _$SearchTodoEvent {
  const factory SearchTodoEvent.subscriptionRequested() =
      _SearchTodoEventSubscriptionRequested;

  const factory SearchTodoEvent.submitted() = _SearchTodoEventSubmitted;

  const factory SearchTodoEvent.keywordChanged(String keyword) =
      _SearchTodoEventKeywordChanged;

  const factory SearchTodoEvent.searchOptionCleared() =
    _SearchTodoEventSearchOptionCleared;

  const factory SearchTodoEvent.filterOptionCleared() =
      _SearchTodoEventFilterOptionCleared;

  const factory SearchTodoEvent.historyCleared(
      {required SearchHistory history}) = _SearchTodoEventHistoryCleared;

  const factory SearchTodoEvent.historySelected(
      {required SearchHistory history}) = _SearchTodoEventHistorySelected;

  const factory SearchTodoEvent.labelSubscriptionRequested() =
      _SeachTodoEventLabelSubscriptionRequested;
}
