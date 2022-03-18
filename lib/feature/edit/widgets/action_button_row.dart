import 'package:flutter/material.dart';

import 'due_date_selection_button.dart';
import 'priority_button.dart';

class ActionButtonRow extends StatelessWidget {

  const ActionButtonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 12,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: const [
        DueDateSelectionButton(),
        PriorityButton(),
      ],
    );
  }
}
