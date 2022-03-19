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
    var titleStyle = Theme.of(context).textTheme.titleMedium!.copyWith(
          fontWeight: FontWeight.bold,
        );
    if (todo.status == TodoStatus.completed) {
      titleStyle = titleStyle.copyWith(
        color: textTheme.caption!.color,
        decoration: TextDecoration.lineThrough,
      );
    }

    return Dismissible(
      key: Key('todo_list_tile_dismissible_${todo.id}'),
      direction: DismissDirection.endToStart,
      behavior: HitTestBehavior.deferToChild,
      background: Container(
        alignment: Alignment.centerRight,
        color: colourScheme.error,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Icon(
          Icons.delete,
          color: colourScheme.onError,
        ),
      ),
      onDismissed: onDismissed,
      child: Card(
        clipBehavior: Clip.none,
        color: Theme.of(context).inputDecorationTheme.fillColor,
        shape: Theme.of(context).inputDecorationTheme.enabledBorder,
        elevation: 0,
        child: ListTile(
          contentPadding: const EdgeInsets.all(12),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                todo.title,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: titleStyle,
              ),
              if (todo.description.isNotEmpty) ...[
                Text(
                  todo.description,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium,
                ),
              ],
              if (todo.dueDate != null) ...[
                const SizedBox(height: 4),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 4,
                  children: [
                    Icon(
                      Icons.inbox,
                      size: 12,
                      color: todo.isOverdue ? colourScheme.error : null,
                    ),
                    Text(
                      todo.formattedDueDate!,
                      style: textTheme.caption?.copyWith(
                        color: todo.isOverdue
                            ? colourScheme.error
                            : textTheme.caption!.color,
                      ),
                    ),
                  ],
                ),
              ],
            ],
          ),
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
          trailing: Icon(
            Icons.flag,
            color: todo.priority.getColour(
              Theme.of(context),
              hidePriority4: true,
            ),
            size: 36,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
