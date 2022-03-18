import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../bloc/edit_todo_bloc.dart';

class ActionButtonRow extends StatelessWidget {

  const ActionButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditTodoBloc, EditTodoState>(
      builder: (context, state) {
        return Wrap(
          spacing: 8,
          runSpacing: 12,
          crossAxisAlignment: WrapCrossAlignment.center,
          children: [
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.inbox),
              label: Text(
                state.dueDate == null
                    ? 'No due date set'
                    : DateFormat.yMMMd().format(state.dueDate!),
              ),
            ),
          ],
        );
      },
    );
  }
}
