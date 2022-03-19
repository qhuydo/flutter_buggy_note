import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../../data/models.dart';
import '../../home/bloc/home_bloc.dart';
import '../routes/app_routes.gr.dart';
import 'todo_list_tile.dart';

class TodoList extends StatelessWidget {
  final List<Todo> todos;
  final bool shrinkWrap;
  final bool primary;
  final bool showCompletedTodos;
  final Widget? emptyTodoPage;

  const TodoList({
    Key? key,
    required this.todos,
    this.shrinkWrap = false,
    this.primary = true,
    this.showCompletedTodos = false,
    this.emptyTodoPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      buildWhen: (previous, current) =>
          previous.showCompletedTodo != current.showCompletedTodo &&
          !showCompletedTodos,
      builder: (context, state) {
        final List<Todo> displayTodos;
        if (!state.showCompletedTodo && !showCompletedTodos) {
          displayTodos = todos
              .where(
                (element) => element.status == TodoStatus.pending,
              )
              .toList();
        } else {
          displayTodos = todos;
        }

        if (displayTodos.isEmpty && emptyTodoPage != null) {
          return emptyTodoPage!;
        }

        return Scrollbar(
          child: MasonryGridView.extent(
            padding: const EdgeInsets.fromLTRB(8, 16, 16, 72),
            physics: const BouncingScrollPhysics(),
            crossAxisSpacing: 4,
            mainAxisSpacing: 4,
            maxCrossAxisExtent: 600,
            shrinkWrap: shrinkWrap,
            primary: primary,
            itemCount: displayTodos.length,
            // separatorBuilder: (context, index) => const Divider(height: 16),
            // separatorBuilder: (context, index) => const SizedBox(height: 4),
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
