import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/search_todo_bloc.dart';
import 'due_date_chooser.dart';
import 'priority_dropdown.dart';
import 'todo_status_dropdown.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    return AlertDialog(
      title: const Text('Filter'),
      content: SizedBox(
        width: deviceWidth <= 600 ? deviceWidth : 600,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: const [
              PriorityDropdown(),
              SizedBox(height: 16),
              TodoStatusDropdown(),
              SizedBox(height: 16),
              DueDateChooser(),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.router.pop();
            context.read<SearchTodoBloc>().add(
              const SearchTodoEvent.filterOptionCleared(),
            );
            context.read<SearchTodoBloc>().add(
              const SearchTodoEvent.submitted(),
            );
          },
          child: const Text('Clear'),
        ),
        TextButton(
          onPressed: () {
            context.router.pop();
            context.read<SearchTodoBloc>().add(
              const SearchTodoEvent.submitted(),
            );
          },
          child: const Text('OK'),
        ),
      ],
    );
  }
}
