import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/edit_todo_bloc.dart';

class DescriptionTextField extends StatelessWidget {
  static const _key = Key('edit_todo_description_text_field');
  const DescriptionTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final state = context.watch<EditTodoBloc>().state;
    return TextFormField(
      key: _key,
      initialValue: state.description,
      decoration: InputDecoration(
        enabled: !(state.status == EditTodoStatus.loading ||
            state.status == EditTodoStatus.success),
        label: const Text('Description'),
      ),
      onChanged: (value) {
        context.read<EditTodoBloc>().add(
          EditTodoEvent.descriptionChanged(value),
        );
      },
      maxLength: 300,
      minLines: 1,
      maxLines: 10,
    );
  }
}
