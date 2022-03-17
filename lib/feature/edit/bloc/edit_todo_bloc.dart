import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models.dart';
import '../../../data/todo/todo.dart';
import '../../../domain/todo_repository.dart';

part 'edit_todo_bloc.freezed.dart';

part 'edit_todo_event.dart';

part 'edit_todo_state.dart';

class EditTodoBloc extends Bloc<EditTodoEvent, EditTodoState> {
  final TodoRepository _todoRepository;

  EditTodoBloc({
    required TodoRepository todoRepository,
    Todo? initialTodo,
  })  : _todoRepository = todoRepository,
        super(EditTodoState(initialTodo: initialTodo)) {
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
      );
    });
  }

  Future<void> _onTitleChanged(
    String title,
    Emitter<EditTodoState> emit,
  ) async {
    emit(state.copyWith(title: title));
  }

  Future<void> _onDescriptionChanged(
    String description,
    Emitter<EditTodoState> emit,
  ) async {
    emit(state.copyWith(description: description));
  }

  Future<void> _onSubmitted(Emitter<EditTodoState> emit) async {
    emit(state.copyWith(status: EditTodoStatus.loading));

    final todo = (state.initialTodo ??
            Todo(
              id: 0,
              title: state.title,
              dueDate: DateTime.now(),
            ))
        .copyWith(
      title: state.title,
      description: state.description,
    );

    try {
      _todoRepository.saveTodo(todo, overwrite: !state.isNewTodo);
      emit(state.copyWith(status: EditTodoStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditTodoStatus.failure));
    }
  }
}
