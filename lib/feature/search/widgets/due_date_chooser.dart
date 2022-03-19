import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../common/date_utils.dart';
import '../bloc/search_todo_bloc.dart';

class DueDateChooser extends StatelessWidget {
  const DueDateChooser({Key? key}) : super(key: key);
  static DateTime defaultFirstDay = DateTime(1970, 1, 1);

  // unix timestamp last date
  static DateTime defaultLastDay = DateTime(2038, 1, 19);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTodoBloc, SearchTodoState>(
      builder: (context, state) {
        final String buttonText;
        if (state.searchOption.dueDateFrom == null &&
            state.searchOption.dueDateTo == null) {
          buttonText = 'Choose date';
        } else {
          buttonText =
              '${state.searchOption.dueDateFrom?.getFormattedDueDate() ?? '?'} '
              '- ${state.searchOption.dueDateTo?.getFormattedDueDate() ?? '?'}';
        }

        return ListTile(
          title: const Text('Due date'),
          trailing: TextButton(
            onPressed: () async {
              final dateRange = await showDateRangePicker(
                context: context,
                firstDate: defaultFirstDay,
                lastDate: defaultLastDay,
              );
              context.read<SearchTodoBloc>().add(
                    SearchTodoEvent.dateRangeSelected(
                      dateRange?.start,
                      dateRange?.end,
                    ),
                  );
            },
            child: Text(buttonText),
          ),
        );
      },
    );
  }
}
