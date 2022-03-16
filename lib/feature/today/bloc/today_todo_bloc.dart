import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models.dart';
import '../../../domain/todo_repository.dart';

part 'today_todo_bloc.freezed.dart';

part 'today_todo_event.dart';

part 'today_todo_state.dart';

class TodayTodoBloc extends Bloc<TodayTodoEvent, TodayTodoState> {
  final TodoRepository _todoRepository;

  TodayTodoBloc({required TodoRepository todoRepository})
      : _todoRepository = todoRepository,
        super(TodayTodoState()) {
    on<TodayTodoEvent>((event, emit) async {
      await event.when(
        subscriptionRequested: () async => await _onSubscriptionRequested(emit),
      );
    });
  }

  Future<void> _onSubscriptionRequested(Emitter<TodayTodoState> emit) async {
    emit(state.copyWith(status: TodayTodoStatus.loading));
    await emit.forEach<List<Todo>>(
      _todoRepository.getTodayTodos(),
      onData: (todos) => state.copyWith(
        status: TodayTodoStatus.success,
        todos: todos,
      ),
      onError: (_, __) => state.copyWith(
        status: TodayTodoStatus.failure,
      ),
    );
  }
}
