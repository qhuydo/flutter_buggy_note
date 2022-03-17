import 'package:flutter/material.dart';

import '../../../data/models.dart';

class TodoListTile extends StatelessWidget {
  final Todo todo;
  final VoidCallback? onTap;
  final ValueChanged<bool>? onCompleteButtonToggled;
  final DismissDirectionCallback? onDismissed;

  const TodoListTile({
    Key? key,
    required this.todo,
    required this.onTap,
    required this.onCompleteButtonToggled,
    required this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colourScheme = Theme.of(context).colorScheme;
    return ListTile(
      title: Text(
        todo.title,
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
        style: todo.status == TodoStatus.completed ? TextStyle(
          color: textTheme.caption!.color,
          decoration: TextDecoration.lineThrough,
        ) : null,
      ),
      subtitle: Text(
        todo.description,
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Checkbox(
        checkColor: colourScheme.primary,
        value: todo.status == TodoStatus.completed,
        onChanged: onCompleteButtonToggled == null
            ? null
            : (value) => onCompleteButtonToggled!(value!),
      ),
      trailing: onTap == null ? null : const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
