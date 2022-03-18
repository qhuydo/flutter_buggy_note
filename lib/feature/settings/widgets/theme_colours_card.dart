import 'package:flutter/material.dart';

import 'settings_card.dart';
import 'theme_menu.dart';
import 'theme_mode_selector.dart';
import 'theme_selector.dart';

class ThemeColoursCard extends StatelessWidget {
  const ThemeColoursCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SettingsCard(
      title: 'Theme colours',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: ThemeSelector(),
          ),
          SizedBox(height: 8),
          ThemeMenu(),
          SizedBox(height: 8),
          ThemeModeSelector(),
        ],
      ),
    );
  }
}
