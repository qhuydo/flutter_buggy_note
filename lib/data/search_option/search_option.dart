import 'package:freezed_annotation/freezed_annotation.dart';

import '../models.dart';

part 'search_option.freezed.dart';

enum SearchTodoStatusOption {
  all,
  completedOnly,
  pendingOnly,
}

extension SearchTodoStatusOptionX on SearchTodoStatusOption {
  String getText() {
    switch(this) {
      case SearchTodoStatusOption.all:
        return "All";
      case SearchTodoStatusOption.completedOnly:
        return "Completed only";
      case SearchTodoStatusOption.pendingOnly:
        return "Pending only";
    }
  }
}

@freezed
class SearchOption with _$SearchOption {
  const SearchOption._();

  const factory SearchOption({
    @Default('') String keyword,
    @Default([]) List<Priority> priorities,
    @Default([]) List<Label> labels,
    int? colour,
    DateTime? dueDateFrom,
    DateTime? dueDateTo,
    SearchTodoStatusOption? statusOption,
  }) = _SearchOption;

  bool get filterApplied => (dueDateFrom != null ||
      dueDateTo != null ||
      priorities.isNotEmpty ||
      labels.isNotEmpty ||
      (statusOption != null && statusOption != SearchTodoStatusOption.all) ||
      colour != null);

  bool match(Todo todo) =>
      _matchKeyword(todo) &&
      _containsPriority(todo) &&
      _containsAtLeastOneLabel(todo) &&
      _matchColour(todo) &&
      _matchDueDateLowerBound(todo) &&
      _matchDueDateUpperBound(todo) &&
      _matchTodoStatusOption(todo);

  bool _matchKeyword(Todo todo) =>
      todo.title.toLowerCase().contains(keyword.toLowerCase()) ||
      todo.description.toLowerCase().contains(keyword.toLowerCase());

  bool _containsPriority(Todo todo) =>
      priorities.isEmpty || priorities.contains(todo.priority);

  bool _containsAtLeastOneLabel(Todo todo) =>
      labels.isEmpty || labels.any((element) => todo.labels.contains(element));

  bool _matchColour(Todo todo) => colour == null || todo.colour == colour;

  bool _matchDueDateLowerBound(Todo todo) =>
      dueDateFrom == null ||
      (todo.dueDate != null && todo.dueDate!.compareTo(dueDateFrom!) != -1);

  bool _matchDueDateUpperBound(Todo todo) =>
      dueDateTo == null ||
      (todo.dueDate != null && todo.dueDate!.compareTo(dueDateTo!) != 1);

  bool _matchTodoStatusOption(Todo todo) {
    if (statusOption == null || statusOption == SearchTodoStatusOption.all) {
      return true;
    }
    if (statusOption == SearchTodoStatusOption.completedOnly) {
      return todo.status == TodoStatus.completed;
    }
    // pending only
    return todo.status == TodoStatus.pending;
  }
}
