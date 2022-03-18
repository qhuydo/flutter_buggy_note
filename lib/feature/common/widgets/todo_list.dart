import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/todo/todo.dart';
import '../../home/bloc/home_bloc.dart';
import '../routes/app_routes.gr.dart';
import 'todo_list_tile.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final bool? shrinkWrap;
  final bool? primary;

  const TodoList({
    Key? key,
    required this.todos,
    this.shrinkWrap,
    this.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 16),
        physics: const BouncingScrollPhysics(),
        shrinkWrap: shrinkWrap ?? false,
        primary: primary ?? true,
        itemCount: todos.length,
        separatorBuilder: (context, index) => const Divider(height: 16),
        itemBuilder: (context, index) => TodoListTile(
          todo: todos[index],
          onCompleteButtonToggled: (value) {
            context.read<HomeBloc>().add(
                  HomeEvent.todoCompletionToggled(
                    todo: todos[index],
                    isCompleted: value,
                  ),
                );
          },
          onDismissed: (_) {
            context
                .read<HomeBloc>()
                .add(HomeEvent.undoDeletionRequested());
          },
          onTap: () {
            context.pushRoute(EditRoute(initialTodo: todos[index]));
          },
        ),
      ),
    );
  }
}
