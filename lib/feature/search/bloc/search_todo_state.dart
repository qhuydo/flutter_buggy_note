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
    @JsonKey(ignore: true)
    @Default(SearchTodoStatus.initial)
        SearchTodoStatus status,
    @JsonKey(ignore: true)
    @Default(SearchTodoStatus.initial)
        SearchTodoStatus labelListStatus,
    @JsonKey(ignore: true) @Default(SearchOption()) SearchOption searchOption,
    @Default({}) Set<SearchHistory> history,
    @JsonKey(ignore: true) @Default([]) Iterable<Todo> result,
  }) = _SearchTodoState;

  factory SearchTodoState.fromJson(Map<String, dynamic> json) =>
      _$SearchTodoStateFromJson(json);
}
