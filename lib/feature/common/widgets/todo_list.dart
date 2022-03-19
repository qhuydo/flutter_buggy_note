import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/models.dart';
import '../../home/bloc/home_bloc.dart';
import '../routes/app_routes.gr.dart';
import 'todo_list_tile.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final bool shrinkWrap;
  final bool primary;
  final bool showCompletedTodos;

  const TodoList({
    Key? key,
    required this.todos,
    this.shrinkWrap = false,
    this.primary = true,
    this.showCompletedTodos = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.showCompletedTodo != current.showCompletedTodo &&
          !showCompletedTodos,
      builder: (context, state) {
        final List<Todo> displayTodos;
        if (!state.showCompletedTodo) {
          displayTodos = todos
              .where(
                (element) => element.status == TodoStatus.pending,
              )
              .toList();
        } else {
          displayTodos = todos;
        }
        return Scrollbar(
          child: ListView.separated(
            padding: const EdgeInsets.fromLTRB(8, 16, 16, 72),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: shrinkWrap,
            primary: primary,
            itemCount: displayTodos.length,
            separatorBuilder: (context, index) => const Divider(height: 16),
            itemBuilder: (context, index) => TodoListTile(
              todo: displayTodos[index],
              onCompleteButtonToggled: (value) {
                context.read<HomeBloc>().add(
                      HomeEvent.todoCompletionToggled(
                        todo: displayTodos[index],
                        isCompleted: value,
                      ),
                    );
              },
              onDismissed: (_) {
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.todoRemoved(todo: displayTodos[index]));
              },
              onTap: () {
                context.pushRoute(EditRoute(initialTodo: displayTodos[index]));
              },
            ),
          ),
        );
      },
    );
  }
}
