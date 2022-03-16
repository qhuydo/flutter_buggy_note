import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/edit_todo_bloc.dart';

class TitleTextField extends StatelessWidget {
  static const _key = Key('edit_todo_title_text_field');

  const TitleTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditTodoBloc>().state;
    return TextFormField(
      key: _key,
      initialValue: state.title,
      decoration: InputDecoration(
        enabled: !(state.status == EditTodoStatus.loading ||
            state.status == EditTodoStatus.success),
        label: const Text('Title'),
      ),
      onChanged: (value) {
        context.read<EditTodoBloc>().add(
          EditTodoEvent.titleChanged(value),
        );
      },
    );
  }
}
