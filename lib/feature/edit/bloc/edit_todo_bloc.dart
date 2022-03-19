import 'package:bloc/bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../app/notification/schedule_todo.dart';
import '../../../data/models.dart';
import '../../../data/todo/priority.dart' as todo_model;
import '../../../domain/todo_repository.dart';

part 'edit_todo_bloc.freezed.dart';

part 'edit_todo_event.dart';

part 'edit_todo_state.dart';

class EditTodoBloc extends Bloc<EditTodoEvent, EditTodoState> {
  final TodoRepository _todoRepository;
  final FlutterLocalNotificationsPlugin _plugin;

  EditTodoBloc({
    required TodoRepository todoRepository,
    required FlutterLocalNotificationsPlugin plugin,
    Todo? initialTodo,
    bool isNewTodo = false,
  })  : _todoRepository = todoRepository,
        _plugin = plugin,
        super(
          EditTodoState(
            initialTodo: initialTodo,
            isNewTodo: isNewTodo,
          ),
        ) {
    on<EditTodoEvent>((event, emit) async {
      await event.when(
        titleChanged: (title) async => await _onTitleChanged(
          title,
          emit,
        ),
        descriptionChanged: (description) async => await _onDescriptionChanged(
          description,
          emit,
        ),
        submitted: () async => await _onSubmitted(emit),
        dueDateChanged: (dueDate) async => await _onDueDateChanged(
          dueDate,
          emit,
        ),
        priorityChanged: (priority) async => await _onPriorityChanged(
          priority,
          emit,
        ),
      );
    });
  }

  Future<void> _onTitleChanged(
    String title,
    Emitter<EditTodoState> emit,
  ) async =>
      emit(state.copyWith(title: title));

  Future<void> _onDescriptionChanged(
    String description,
    Emitter<EditTodoState> emit,
  ) async =>
      emit(state.copyWith(description: description));

  Future<void> _onSubmitted(Emitter<EditTodoState> emit) async {
    emit(state.copyWith(status: EditTodoStatus.loading));

    final todo = (state.initialTodo ??
            Todo(
              id: 0,
              title: state.title,
            ))
        .copyWith(
      title: state.title,
      description: state.description,
      dueDate: state.dueDate,
      priority: state.priority,
    );

    try {
      final id = await _todoRepository.saveTodo(
        todo,
        overwrite: !state.isNewTodo,
      );
      await _plugin.scheduleTodo(
        todo.copyWith(id: id),
        reschedule: !state.isNewTodo,
      );
      emit(state.copyWith(status: EditTodoStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditTodoStatus.failure));
    }
  }

  Future<void> _onDueDateChanged(
    DateTime? dueDate,
    Emitter<EditTodoState> emit,
  ) async =>
      emit(state.copyWith(dueDate: dueDate));

  Future<void> _onPriorityChanged(
    todo_model.Priority priority,
    Emitter<EditTodoState> emit,
  ) async =>
      emit(state.copyWith(priority: priority));
}
