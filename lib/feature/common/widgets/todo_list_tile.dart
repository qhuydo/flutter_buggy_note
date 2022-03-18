import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            todo.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: todo.status == TodoStatus.completed
                ? TextStyle(
                    color: textTheme.caption!.color,
                    decoration: TextDecoration.lineThrough,
                  )
                : null,
          ),
          if (todo.description.isNotEmpty) ...[
            // const SizedBox(height: 4),
            Text(
              todo.description,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: textTheme.caption,
            ),
          ],
          if (todo.dueDate != null) ...[
            const SizedBox(height: 4),
            Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              spacing: 4,
              children: [
                const Icon(
                  Icons.inbox,
                  size: 12,
                ),
                Text(
                  DateFormat.yMMMd().format(todo.dueDate!),
                  style: textTheme.caption,
                ),
              ],
            ),
          ],
        ],
      ),
      // subtitle: todo.description.isNotEmpty
      //     ? Text(
      //         todo.description,
      //         maxLines: 1,
      //         overflow: TextOverflow.ellipsis,
      //       )
      //     : null,
      leading: Transform.scale(
        scale: 1.25,
        child: Theme(
          data: Theme.of(context).copyWith(),
          child: Checkbox(
            splashRadius: 20,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: const CircleBorder(),
            side: MaterialStateBorderSide.resolveWith(
              (states) {
                if (states.contains(MaterialState.selected)) {
                  return BorderSide(
                    width: 1,
                    color: colourScheme.secondary,
                  );
                }
                return BorderSide(
                  width: 1.25,
                  color: colourScheme.secondary,
                );
              },
            ),
            checkColor: Colors.transparent,
            value: todo.status == TodoStatus.completed,
            onChanged: onCompleteButtonToggled == null
                ? null
                : (value) => onCompleteButtonToggled!(value!),
          ),
        ),
      ),
      trailing: onTap == null ? null : const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}
