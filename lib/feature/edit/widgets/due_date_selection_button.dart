import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../common/date_utils.dart';
import '../../../data/models.dart';
import '../bloc/edit_todo_bloc.dart';

class DueDateSelectionButton extends StatelessWidget {
  const DueDateSelectionButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditTodoBloc, EditTodoState>(
      buildWhen: (previous, current) => previous.dueDate != current.dueDate,
      builder: (context, state) {
        return TextButton.icon(
          icon: const Icon(Icons.inbox),
          label: Text(
            state.dueDate == null
                ? 'No due date set'
                : state.dueDate!.getFormattedDueDateWithTime(),
          ),
          onPressed: state.initialTodo?.status == TodoStatus.completed
              ? null
              : () async => await _onButtonPressed(context, state),
        );
      },
    );
  }

  Future<void> _onButtonPressed(
    BuildContext context,
    EditTodoState state,
  ) async {
    var dueDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 5),
      initialEntryMode: DatePickerEntryMode.calendar,
    );

    if (dueDate == null) return;

    var dueTime = await showTimePicker(
      helpText: 'Choose time for ${DateFormat.yMMMd().format(dueDate)}',
      context: context,
      initialTime: TimeOfDay.now(),
    );

    // log('$dueTime');

    if (dueTime == null) return;

    context.read<EditTodoBloc>().add(
          EditTodoEvent.dueDateChanged(
            DateTime(
              dueDate.year,
              dueDate.month,
              dueDate.day,
              dueTime.hour,
              dueTime.minute,
            ),
          ),
        );
  }
}
