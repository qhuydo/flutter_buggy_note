import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

import '../../domain/todo_repository.dart';
import '../common/routes/app_routes.gr.dart';
import '../common/widgets/scaffold_with_search_bar.dart';
import '../common/widgets/todo_list_tile.dart';
import 'bloc/search_todo_bloc.dart';
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
    final actions = [
      FloatingSearchBarAction.searchToClear(),
      FloatingSearchBarAction(
        showIfOpened: true,
        child: CircularButton(
          icon: const Icon(Icons.filter_list),
          onPressed: () {
            // showDialog(context: context, builder: (context) {
            //   return const ();
            // });
          },
        ),
      ),
    ];

    return BlocBuilder<SearchTodoBloc, SearchTodoState>(
      builder: (context, state) => ScaffoldWithSearchBar(
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
          context.read<SearchTodoBloc>().add(const SearchTodoEvent.submitted());
          controller.close();
        },
        body: FloatingSearchBarScrollNotifier(
          child: SingleChildScrollView(
            primary: true,
            child: Padding(
              padding: const EdgeInsets.only(
                top: searchBarHeight + 12,
                left: 8,
                right: 8,
              ),
              child: ListView(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                primary: false,
                padding: const EdgeInsets.all(0),
                children: [
                  for (final todo in state.result)
                    TodoListTile(
                      todo: todo,
                      onCompleteButtonToggled: (value) {
                        // context.read<TodayTodoBloc>().add(
                        //   TodayTodoEvent.todoCompletionToggled(
                        //     todo: todo,
                        //     isCompleted: value,
                        //   ),
                        // );
                      },
                      onDismissed: (_) {
                        // context
                        //     .read<TodayTodoBloc>()
                        //     .add(TodoOverviewEvent.undoDeletionRequested());
                      },
                      onTap: () {
                        context.pushRoute(EditRoute(initialTodo: todo));
                      },
                    )
                ],
              ),
            ),
          ),
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
