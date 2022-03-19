import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/search_option/search_option.dart';
import '../bloc/search_todo_bloc.dart';

class TodoStatusDropdown extends StatelessWidget {
  const TodoStatusDropdown({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTodoBloc, SearchTodoState>(
      // buildWhen: (previous, current) =>
      //     previous.searchOption.statusOption !=
      //     current.searchOption.statusOption,
      builder: (context, state) {
        final currentIndex = state.searchOption.statusOption != null
            ? SearchTodoStatusOption.values
                .indexOf(state.searchOption.statusOption!)
            : null;

        return PopupMenuButton<SearchTodoStatusOption>(
          padding: EdgeInsets.zero,
          onSelected: (value) => context
              .read<SearchTodoBloc>()
              .add(SearchTodoEvent.searchTodoStatusOptionSelected(value)),
          itemBuilder: (BuildContext context) => [
            for (int i = 0; i < SearchTodoStatusOption.values.length; i++)
              PopupMenuItem<SearchTodoStatusOption>(
                value: SearchTodoStatusOption.values[i],
                child: ListTile(
                  title: Text(SearchTodoStatusOption.values[i].getText()),
                  selected: i == currentIndex,
                ),
              )
          ],
          child: ListTile(
            title: const Text(
              'Todo status'
            ),
            trailing: Text(
              state.searchOption.statusOption?.getText() ?? "None Selected",
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        );
      },
    );
  }
}
