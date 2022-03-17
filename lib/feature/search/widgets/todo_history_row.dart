import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../../data/search_history/search_history.dart';

class TodoHistoryRow extends StatelessWidget {
  final SearchHistory history;
  const TodoHistoryRow({Key? key, required this.history}) : super(key: key);

  static Widget buildExpandableBody(List<SearchHistory> histories) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Material(
        // color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        clipBehavior: Clip.antiAlias,
        child: ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return TodoHistoryRow(history: histories[index]);
          },
          itemCount: histories.length,
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
                const SizedBox(
                  width: 36,
                  child: AnimatedSwitcher(
                    duration: Duration(milliseconds: 500),
                    child: Icon(Icons.close),
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
