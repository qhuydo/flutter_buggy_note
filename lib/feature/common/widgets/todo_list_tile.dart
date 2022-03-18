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
    return Dismissible(
      key: Key('todo_list_tile_dismissible_${todo.id}'),
      direction: DismissDirection.endToStart,
      behavior: HitTestBehavior.deferToChild,
      background: Container(
        alignment: Alignment.centerRight,
        color: colourScheme.error,
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Icon(
          Icons.delete,
          color: colourScheme.onError,
        ),
      ),
      // secondaryBackground: Container(
      //   alignment: Alignment.centerLeft,
      //   color: Theme.of(context).primaryColorDark,
      //   padding: const EdgeInsets.symmetric(horizontal: 16),
      //   child: Icon(
      //     Icons.check,
      //     color: colourScheme.onPrimary,
      //   ),
      // ),
      onDismissed: onDismissed,
      child: ListTile(
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
                    todo.formattedDueDate!,
                    style: textTheme.caption,
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
    );
  }
}
