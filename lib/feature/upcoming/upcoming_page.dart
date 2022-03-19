import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/todo_repository.dart';
import '../common/widgets/todo_list.dart';
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
    final emptyTodoPage = Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 8.0,
        vertical: 24,
      ),
      child: Center(
        child: Text(
          'No todo',
          style: Theme.of(context).textTheme.bodyText2,
        ),
      ),
    );
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
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Calendar(),
            const SizedBox(height: 8),
            BlocBuilder<UpcomingBloc, UpcomingState>(
                // buildWhen: (previous, current) =>
                //     previous.selectedDay != current.selectedDay ||
                //     (previous.status != current.status &&
                //         current.status != UpcomingStatus.failure),
                builder: (context, state) {
              if (state.currentTodos.isEmpty) {
                if (state.status == UpcomingStatus.loading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state.status == UpcomingStatus.success) {
                  return emptyTodoPage;
                }

                return const SizedBox();
              }
              return TodoList(
                todos: state.currentTodos,
                shrinkWrap: true,
                primary: false,
                emptyTodoPage: emptyTodoPage,
              );
            }),
          ],
        ),
      ),
    );
  }
}
