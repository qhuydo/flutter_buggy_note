import 'dart:async';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import '../../../app/notification/schedule_todo.dart';
import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';
import '../../common/helpers/view_mode.dart';

part 'home_bloc.freezed.dart';

part 'home_bloc.g.dart';

part 'home_event.dart';

part 'home_state.dart';

class HomeBloc extends HydratedBloc<HomeEvent, HomeState> {
  final TodoRepository _todoRepository;
  final FlutterLocalNotificationsPlugin _plugin;

  HomeBloc({
    required TodoRepository todoRepository,
    required FlutterLocalNotificationsPlugin plugin,
  })  : _todoRepository = todoRepository,
        _plugin = plugin,
        super(const HomeState()) {
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
        viewModeChanged: (ViewMode viewMode) async => await _onViewModeChanged(
          viewMode,
          emit,
        ),
        filterCompletedTodoOptionChanged: (showCompletedNote) async =>
            await _onFilterCompletedTodoOptionChanged(
          showCompletedNote,
          emit,
        ),
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
    if (isCompleted) {
      await _plugin.cancel(todo.id);
    } else {
      await _plugin.scheduleTodo(
        todo.copyWith(id: todo.id),
        reschedule: true,
      );
    }
  }

  Future<void> _onUndoDeletionRequested(
    Emitter<HomeState> emit,
  ) async {
    if (state.recentlyRemovedTodo != null) {
      final Todo todo = state.recentlyRemovedTodo!;
      emit(state.copyWith(recentlyRemovedTodo: null));
      final id = await _todoRepository.saveTodo(todo, overwrite: true);
      if (todo.status != TodoStatus.completed) {
        await _plugin.scheduleTodo(
          todo.copyWith(id: id),
        );
      }
    }
  }

  Future<void> _onFilterCompletedTodoOptionChanged(
    bool showCompletedNote,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(showCompletedTodo: showCompletedNote));
  }

  Future<void> _onViewModeChanged(
    ViewMode viewMode,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(todoViewMode: viewMode));
  }

  @override
  HomeState? fromJson(Map<String, dynamic> json) => HomeState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(HomeState state) => state.toJson();
}
