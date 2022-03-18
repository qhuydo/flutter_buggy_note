import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../data/models.dart';
import '../../domain/todo_repository.dart';
import '../home/bloc/home_bloc.dart';
import 'bloc/edit_todo_bloc.dart';
import 'widgets/action_button_row.dart';
import 'widgets/description_text_field.dart';
import 'widgets/title_text_field.dart';

class EditPage extends StatelessWidget {
  final Todo? initialTodo;
  final bool isNewTodo;

  const EditPage({
    Key? key,
    required this.initialTodo,
    this.isNewTodo = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => EditTodoBloc(
        todoRepository: context.read<TodoRepository>(),
        initialTodo: initialTodo,
        isNewTodo: isNewTodo,
      ),
      child: const EditTodoView(),
    );
  }
}

class EditTodoView extends StatelessWidget {
  const EditTodoView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isNewTodo = context.select(
      (EditTodoBloc bloc) => bloc.state.isNewTodo,
    );

    return BlocListener<EditTodoBloc, EditTodoState>(
      listenWhen: (previous, current) {
        return previous != current && current.status == EditTodoStatus.success;
      },
      listener: (context, state) => context.router.pop(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(isNewTodo ? 'Add new todo' : 'Edit todo'),
          actions: !isNewTodo
              ? [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.share),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                      onPressed: () {
                        context.read<HomeBloc>().add(
                              HomeEvent.todoRemoved(
                                  todo: context
                                      .read<EditTodoBloc>()
                                      .state
                                      .initialTodo!),
                            );
                        context.router.pop();
                      },
                      icon: const Icon(Icons.delete_outline),
                    ),
                  )
                ]
              : null,
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () => context.read<EditTodoBloc>().add(
                EditTodoEvent.submitted(),
              ),
          icon: const Icon(Icons.save_outlined),
          label: const Text('Save changes'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8,
              vertical: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                ActionButtonRow(),
                SizedBox(height: 16),
                TitleTextField(),
                SizedBox(height: 12),
                DescriptionTextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
