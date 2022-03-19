import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

import '../../../data/todo/priority.dart' as todo_model;
import '../bloc/search_todo_bloc.dart';

class PriorityDropdown extends StatelessWidget {
  const PriorityDropdown({Key? key}) : super(key: key);

  static final _items = todo_model.Priority.values
      .map(
        (speciality) => MultiSelectItem<todo_model.Priority>(
          speciality,
          speciality.getText(),
        ),
      )
      .toList();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTodoBloc, SearchTodoState>(
      buildWhen: (previous, current) =>
          previous.searchOption.priorities != current.searchOption.priorities,
      builder: (context, state) {
        return Column(
          children: [
            MultiSelectDialogField<todo_model.Priority?>(
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(4)),
              ),
              initialValue: state.searchOption.priorities,
              // listType: MultiSelectListType.CHIP,
              searchable: true,
              buttonText: Text(
                'Priorities',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              title: const Text(
                'Choose priority',
              ),
              items: _items,
              onConfirm: (values) {
                context
                    .read<SearchTodoBloc>()
                    .add(SearchTodoEvent.prioritiesSelected(
                      values.cast<todo_model.Priority>(),
                    ));
              },
              // chipDisplay: MultiSelectChipDisplay(
              //   icon: const Icon(Icons.cancel),
              //   onTap: (value) {
              //     setState(() {
              //       _selectedSpecialities?.remove(value);
              //     });
              //   },
              // ),
            ),
            state.searchOption.priorities.isEmpty
                ? Container(
                    padding: const EdgeInsets.all(12),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'None selected',
                      style: Theme.of(context).textTheme.caption,
                    ))
                : Container(),
          ],
        );
      },
    );
  }
}
