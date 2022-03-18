import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../common/routes/app_routes.gr.dart';

enum MenuOption {
  settings,
}

extension on MenuOption {
  String toText() {
    switch (this) {
      case MenuOption.settings:
        return 'Settings';
    }
  }

  IconData getIconData() {
    switch (this) {
      case MenuOption.settings:
        return Icons.settings;
    }
  }
}

class OptionMenu extends StatelessWidget {
  const OptionMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<MenuOption>(
      itemBuilder: (context) => MenuOption.values
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
        }
      },
    );
  }
}
