part of 'search_todo_bloc.dart';

enum SearchTodoStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class SearchTodoState with _$SearchTodoState {
  const SearchTodoState._();

  const factory SearchTodoState({
    @Default(SearchTodoStatus.initial) SearchTodoStatus status,
    @Default(SearchTodoStatus.initial) SearchTodoStatus labelListStatus,
    @Default(SearchOption()) SearchOption searchOption,
    @Default([]) List<SearchHistory> history,
    @Default([]) Iterable<Todo> result,
  }) = _SearchTodoState;
}
