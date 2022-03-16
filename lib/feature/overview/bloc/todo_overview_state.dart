part of 'todo_overview_bloc.dart';

enum TodoOverViewStatus {
  initial,
  loading,
  success,
  failure,
}

@freezed
class TodoOverviewState with _$TodoOverviewState {
  const TodoOverviewState._();

  factory TodoOverviewState({
    @Default(TodoOverViewStatus.initial) TodoOverViewStatus status,
    @Default([]) List<Todo> todos,
    @Default(TodoViewFilter.all) TodoViewFilter filter,
    Todo? recentlyRemovedTodo,
  }) = _TodoOverviewState;

  Iterable<Todo> get filteredTodos => filter.applyAll(todos);
}
