import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'todo_overview_bloc.freezed.dart';

part 'todo_overview_event.dart';

part 'todo_overview_state.dart';

class TodoOverviewBloc extends Bloc<TodoOverviewEvent, TodoOverviewState> {
  final TodoRepository _todoRepository;

  TodoOverviewBloc({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(TodoOverviewState()) {
    on<TodoOverviewEvent>((event, emit) async {
      await event.when(
        subscriptionRequested: () async => await _onSubscriptionRequested(emit),
        todoRemoved: (todo) async => await _onTodoRemoved(todo, emit),
        filterOptionChanged: (filter) async => await _onFilterOptionChanged(
          filter,
          emit,
        ),
        todoCompletionToggled: (todo, isCompleted) async =>
            await _onTodoCompletionToggled(
          todo,
          isCompleted,
          emit,
        ),
        undoDeletionRequested: () async => await _onUndoDeletionRequested(emit),
      );
    });
  }

  Future<void> _onSubscriptionRequested(Emitter<TodoOverviewState> emit) async {
    emit(state.copyWith(status: TodoOverViewStatus.loading));
    await emit.forEach<List<Todo>>(
      _todoRepository.getTodos(),
      onData: (todos) => state.copyWith(
        status: TodoOverViewStatus.success,
        todos: todos,
      ),
      onError: (_, __) => state.copyWith(
        status: TodoOverViewStatus.failure,
      ),
    );
  }

  Future<void> _onTodoRemoved(
    Todo todo,
    Emitter<TodoOverviewState> emit,
  ) async {
    emit(state.copyWith(recentlyRemovedTodo: todo));
    await _todoRepository.deleteTodo(todo.id);
  }

  Future<void> _onFilterOptionChanged(
    TodoViewFilter filter,
    Emitter<TodoOverviewState> emit,
  ) async {
    emit(state.copyWith(filter: filter));
  }

  Future<void> _onTodoCompletionToggled(
    Todo todo,
    bool isCompleted,
    Emitter<TodoOverviewState> emit,
  ) async {
    await _todoRepository.saveTodo(
      todo.copyWith(
        status: isCompleted.fromCompletionState(),
      ),
      overwrite: true,
    );
  }

  Future<void> _onUndoDeletionRequested(
    Emitter<TodoOverviewState> emit,
  ) async {
    if (state.recentlyRemovedTodo != null) {
      final Todo todo = state.recentlyRemovedTodo!;
      emit(state.copyWith(recentlyRemovedTodo: null));
      await _todoRepository.saveTodo(todo, overwrite: true);
    }
  }
}
