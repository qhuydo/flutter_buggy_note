import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/todo_repository.dart';
import '../common/widgets/empty_todos.dart';
import '../common/widgets/todo_list.dart';
import '../home/bloc/home_bloc.dart';
import 'bloc/todo_overview_bloc.dart';

class OverviewPage extends StatelessWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => TodoOverviewBloc(
          todoRepository: context.read<TodoRepository>(),
        )..add(TodoOverviewEvent.subscriptionRequested()),
        child: const Scaffold(body: TodoOverviewView()),
      ),
    );
  }
}

class TodoOverviewView extends StatelessWidget {
  const TodoOverviewView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TodoOverviewBloc, TodoOverviewState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == TodoOverViewStatus.failure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(
                    content: Text(
                      'Failed to load todo list',
                    ),
                  ),
                );
            }
          },
        ),
        BlocListener<HomeBloc, HomeState>(
          listenWhen: (previous, current) =>
              previous.recentlyRemovedTodo != current.recentlyRemovedTodo &&
              current.recentlyRemovedTodo != null,
          listener: (context, state) {
            final removedTodo = state.recentlyRemovedTodo!;
            final messenger = ScaffoldMessenger.of(context);
            messenger
              ..hideCurrentSnackBar()
              ..showSnackBar(
                SnackBar(
                  content: Text('Todo???${removedTodo.title}???removed'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      messenger.hideCurrentSnackBar();
                      context
                          .read<HomeBloc>()
                          .add(HomeEvent.undoDeletionRequested());
                    },
                  ),
                ),
              );
          },
        ),
      ],
      child: BlocBuilder<TodoOverviewBloc, TodoOverviewState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            if (state.status == TodoOverViewStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state.status == TodoOverViewStatus.success) {
              return const EmptyTodos();
            } else {
              return const SizedBox();
            }
          }

          return TodoList(
            todos: state.todos,
            emptyTodoPage: const EmptyTodos(),
          );
        },
      ),
    );
  }
}
