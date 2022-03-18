import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/todo_repository.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/widgets/todo_list_tile.dart';
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
        BlocListener<TodoOverviewBloc, TodoOverviewState>(
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
                  content: Text('Todo「${removedTodo.title}」removed'),
                  action: SnackBarAction(
                    label: 'Undo',
                    onPressed: () {
                      messenger.hideCurrentSnackBar();
                      context
                          .read<TodoOverviewBloc>()
                          .add(TodoOverviewEvent.undoDeletionRequested());
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
              return Center(
                child: Text(
                  'No todos',
                  style: Theme.of(context).textTheme.caption,
                ),
              );
            } else {
              return const SizedBox();
            }
          }

          return Scrollbar(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: state.todos.length,
              separatorBuilder: (context, index) => const Divider(height: 16),
              itemBuilder: (context, index) =>  TodoListTile(
                todo: state.todos[index],
                onCompleteButtonToggled: (value) {
                  context.read<TodoOverviewBloc>().add(
                    TodoOverviewEvent.todoCompletionToggled(
                      todo: state.todos[index],
                      isCompleted: value,
                    ),
                  );
                },
                onDismissed: (_) {
                  context
                      .read<TodoOverviewBloc>()
                      .add(TodoOverviewEvent.undoDeletionRequested());
                },
                onTap: () {
                  context.pushRoute(EditRoute(initialTodo: state.todos[index]));
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
