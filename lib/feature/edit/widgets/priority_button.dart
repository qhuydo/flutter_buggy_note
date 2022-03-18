import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/todo/priority.dart';
import '../bloc/edit_todo_bloc.dart';

class PriorityButton extends StatelessWidget {
  const PriorityButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditTodoBloc, EditTodoState>(
      buildWhen: (previous, current) => previous.priority != current.priority,
      builder: (context, state) {
        final iconColour = state.priority.getColour(Theme.of(context));

        return PopupMenuButton<Priority>(
          padding: EdgeInsets.zero,
          onSelected: (value) => context.read<EditTodoBloc>().add(
            EditTodoEvent.priorityChanged(value),
          ),
          itemBuilder: (BuildContext context) => [
            for (int i = 0; i < Priority.values.length; i++)
              PopupMenuItem<Priority>(
                value: Priority.values[i],
                child: ListTile(
                  leading: Icon(
                    Icons.flag,
                    color: Priority.values[i].getColour(Theme.of(context)),
                    size: 36,
                  ),
                  title: Text(Priority.values[i].getText()),
                  selected: Priority.values[i] == state.priority,
                ),
              )
          ],
          child: IgnorePointer(
            child: TextButton.icon(
              icon: Icon(
                Icons.flag,
                color: iconColour == Colors.transparent ? null : iconColour,
              ),
              label: Text(
                state.priority.getText(),
              ),
              onPressed: () {},
            ),
          ),
        );
      },
    );
  }
}
