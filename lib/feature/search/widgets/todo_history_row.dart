import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../data/search_history/search_history.dart';
import '../bloc/search_todo_bloc.dart';

class TodoHistoryRow extends StatelessWidget {
  final SearchHistory history;

  const TodoHistoryRow({Key? key, required this.history}) : super(key: key);

  static Widget buildExpandableBody(Iterable<SearchHistory> histories) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Material(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          // itemBuilder: (context, index) {
          //   return TodoHistoryRow(history: histories[index]);
          // },
          // itemCount: histories.length,
          children: [
            for (final item in histories) TodoHistoryRow(history: item)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            context.read<SearchTodoBloc>().add(
                  SearchTodoEvent.historySelected(history: history),
                );
            FloatingSearchBar.of(context)?.close();
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                const SizedBox(
                  width: 36,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Icon(Icons.history),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        history.keyword,
                        style: textTheme.subtitle1,
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 8),
                SizedBox(
                  width: 36,
                  child: AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    child: IconButton(
                      icon: const Icon(Icons.close),
                      onPressed: () {
                        context.read<SearchTodoBloc>().add(
                              SearchTodoEvent.historyCleared(history: history),
                            );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Divider(height: 0),
      ],
    );
  }
}
