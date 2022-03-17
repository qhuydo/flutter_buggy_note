import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/todo_repository.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/widgets/todo_list_tile.dart';
import 'bloc/upcoming_bloc.dart';
import 'widgets/calendar.dart';

class UpcomingPage extends StatelessWidget {
  const UpcomingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<UpcomingBloc>(
        create: (context) => UpcomingBloc(
          todoRepository: context.read<TodoRepository>(),
        )..add(const UpcomingEvent.subscriptionSelected()),
        child: const UpcomingView(),
      ),
    );
  }
}

class UpcomingView extends StatelessWidget {
  const UpcomingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<UpcomingBloc, UpcomingState>(
          listenWhen: (previous, current) =>
              previous.status != current.status &&
              current.status == UpcomingStatus.failure,
          listener: (context, state) {
            if (state.status == UpcomingStatus.failure) {
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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Calendar(),
          const SizedBox(height: 8),
          BlocBuilder<UpcomingBloc, UpcomingState>(
              buildWhen: (previous, current) =>
                  previous.selectedDay != current.selectedDay ||
                  (previous.status != current.status &&
                      current.status != UpcomingStatus.failure),
              builder: (context, state) {
                if (state.currentTodos.isEmpty) {
                  if (state.status == UpcomingStatus.loading) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                  if (state.status == UpcomingStatus.success) {
                    return Center(
                      child: Text(
                        'No todo',
                        style: Theme.of(context).textTheme.caption,
                      ),
                    );
                  }

                  // log('build empty');
                  return const SizedBox();
                }
                // log('build');
                return Expanded(
                  child: ListView(
                    padding: const EdgeInsets.all(0),
                    children: [
                      for (final todo in state.currentTodos)
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
                  ),
                );
              }),
        ],
      ),
    );
  }
}
