import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final TodoRepository _todoRepository;

  HomeBloc({
    required TodoRepository todoRepository,
  })  : _todoRepository = todoRepository,
        super(HomeState()) {
    on<HomeEvent>((event, emit) async {
      await event.when(
        todoRemoved: (todo) async => await _onTodoRemoved(todo, emit),
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

  Future<void> _onTodoRemoved(
    Todo todo,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(recentlyRemovedTodo: todo));
    await _todoRepository.deleteTodo(todo.id);
  }

  Future<void> _onTodoCompletionToggled(
    Todo todo,
    bool isCompleted,
    Emitter<HomeState> emit,
  ) async {
    await _todoRepository.saveTodo(
      todo.copyWith(
        status: isCompleted.fromCompletionState(),
      ),
      overwrite: true,
    );
  }

  Future<void> _onUndoDeletionRequested(
    Emitter<HomeState> emit,
  ) async {
    if (state.recentlyRemovedTodo != null) {
      final Todo todo = state.recentlyRemovedTodo!;
      emit(state.copyWith(recentlyRemovedTodo: null));
      await _todoRepository.saveTodo(todo, overwrite: true);
    }
  }
}
