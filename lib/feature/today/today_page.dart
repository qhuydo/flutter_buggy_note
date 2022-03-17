import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/todo_repository.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/widgets/todo_list_tile.dart';
import 'bloc/today_todo_bloc.dart';

class TodayPage extends StatelessWidget {
  const TodayPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodayTodoBloc(
        todoRepository: context.read<TodoRepository>(),
      )..add(TodayTodoEvent.subscriptionRequested()),
      child: const TodayTodoView(),
    );
  }
}

class TodayTodoView extends StatelessWidget {
  const TodayTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<TodayTodoBloc, TodayTodoState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status == TodayTodoStatus.failure) {
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
      ],
      child: BlocBuilder<TodayTodoBloc, TodayTodoState>(
        builder: (context, state) {
          if (state.todos.isEmpty) {
            if (state.status == TodayTodoStatus.loading) {
              return const Center(child: CircularProgressIndicator());
            }
            if (state.status == TodayTodoStatus.success) {
              return Center(
                child: Text(
                  'No todos',
                  style: Theme.of(context).textTheme.caption,
                ),
              );
            }
            return const SizedBox();
          }

          return ListView(
            children: [
              for (final todo in state.todos)
                TodoListTile(
                  todo: todo,
                  onCompleteButtonToggled: (value) {
                    // context.read<TodayTodoBloc>().add(
                    //   TodayTodoEvent.todoCompletionToggled(
                    //     todo: todo,
                    //     isCompleted: value,
                    //   ),
                    // );
                  },
                  onDismissed: (_) {
                    // context
                    //     .read<TodayTodoBloc>()
                    //     .add(TodoOverviewEvent.undoDeletionRequested());
                  },
                  onTap: () {
                    context.pushRoute(EditRoute(initialTodo: todo));
                  },
                )
            ],
          );
        },
      ),
    );
  }
}
