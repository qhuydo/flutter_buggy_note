import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../domain/todo_repository.dart';
import '../common/widgets/empty_todos.dart';
import '../common/widgets/scaffold_with_search_bar.dart';
import '../common/widgets/todo_list.dart';
import 'bloc/search_todo_bloc.dart';
import 'widgets/filter_dialog.dart';
import 'widgets/todo_history_row.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider<SearchTodoBloc>(
        create: (context) => SearchTodoBloc(
          todoRepository: context.read<TodoRepository>(),
        )..add(const SearchTodoEvent.subscriptionRequested()),
        child: const SearchPageView(),
      ),
    );
  }
}

class SearchPageView extends StatefulWidget {
  const SearchPageView({Key? key}) : super(key: key);

  @override
  State<SearchPageView> createState() => _SearchPageViewState();
}

class _SearchPageViewState extends State<SearchPageView> {
  final controller = FloatingSearchBarController();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchTodoBloc, SearchTodoState>(
      builder: (context, state) {
        final bloc = context.read<SearchTodoBloc>();
        final actions = [
          FloatingSearchBarAction.searchToClear(),
          FloatingSearchBarAction(
            showIfOpened: true,
            child: CircularButton(
              icon: Icon(
                Icons.filter_list,
                color: state.searchOption.filterApplied
                    ? Theme.of(context).colorScheme.secondary
                    : null,
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return BlocProvider.value(
                        value: bloc,
                        child: const FilterDialog(),
                      );
                    });
              },
            ),
          ),
        ];
        return ScaffoldWithSearchBar(
          title: Text(
            state.searchOption.keyword.isNotEmpty
                ? state.searchOption.keyword
                : 'Search todo',
          ),
          hint: 'Search todo',
          actions: actions,
          controller: controller,
          builder: (context, _) => TodoHistoryRow.buildExpandableBody(
            state.history,
          ),
          onSubmitted: (keyword) {
            context
                .read<SearchTodoBloc>()
                .add(SearchTodoEvent.keywordChanged(keyword));
            context
                .read<SearchTodoBloc>()
                .add(const SearchTodoEvent.submitted());
            controller.close();
          },
          body: FloatingSearchBarScrollNotifier(
            child: buildBody(state, context),
          ),
        );
      },
    );
  }

  Widget buildBody(SearchTodoState state, BuildContext context) {
    if (state.status == SearchTodoStatus.initial) {
      return const EmptyTodos(
        emoticon: '🔍',
        text: 'Type your keyword, then hit enter',
      );
    }

    if (state.result.isEmpty) {
      return const EmptyTodos(
        text: 'Empty result',
      );
    }

    return SingleChildScrollView(
      primary: true,
      child: Padding(
        padding: const EdgeInsets.only(
          top: searchBarHeight + 12,
          left: 8,
          right: 8,
        ),
        child: TodoList(
          todos: state.result.toList(),
          shrinkWrap: true,
          primary: false,
          showCompletedTodos: true,
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
