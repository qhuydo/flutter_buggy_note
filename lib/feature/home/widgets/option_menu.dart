import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/helpers/device.dart';
import '../../common/routes/app_routes.gr.dart';
import '../bloc/home_bloc.dart';

enum MenuOption {
  settings,
  showCompletedTodos,
  hideCompletedTodos,
}

extension on MenuOption {
  String toText() {
    switch (this) {
      case MenuOption.settings:
        return 'Settings';
      case MenuOption.showCompletedTodos:
        return 'Show completed todos';
      case MenuOption.hideCompletedTodos:
        return 'Hide completed todos';
    }
  }

  IconData getIconData() {
    switch (this) {
      case MenuOption.settings:
        return Icons.settings;
      case MenuOption.showCompletedTodos:
        return Icons.task_alt;
      case MenuOption.hideCompletedTodos:
        return Icons.radio_button_unchecked;
    }
  }
}

class OptionMenu extends StatelessWidget {
  const OptionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        final displayItems = [
          if (context.isMobileSize()) MenuOption.settings,
          state.showCompletedTodo
              ? MenuOption.hideCompletedTodos
              : MenuOption.showCompletedTodos,
        ];
        return PopupMenuButton<MenuOption>(
          itemBuilder: (context) => displayItems
              .map(
                (e) => PopupMenuItem<MenuOption>(
                  value: e,
                  child: ListTile(
                    title: Text(e.toText()),
                    leading: Icon(e.getIconData()),
                  ),
                ),
              )
              .toList(),
          onSelected: (choice) {
            switch (choice) {
              case MenuOption.settings:
                context.router.push(const SettingsRoute());
                break;
              case MenuOption.showCompletedTodos:
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.filterCompletedTodoOptionChanged(true));
                break;
              case MenuOption.hideCompletedTodos:
                context
                    .read<HomeBloc>()
                    .add(HomeEvent.filterCompletedTodoOptionChanged(false));
                break;
            }
          },
        );
      },
    );
  }
}
