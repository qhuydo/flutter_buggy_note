import 'package:flutter/material.dart';

class ThemeModeSwitch extends StatelessWidget {
  final ThemeMode mode;
  final void Function(ThemeMode)? onChanged;

  const ThemeModeSwitch({
    Key? key,
    required this.mode,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<bool> isSelected = [
      mode == ThemeMode.light,
      mode == ThemeMode.system,
      mode == ThemeMode.dark,
    ];

    return ToggleButtons(
      isSelected: isSelected,
      onPressed: (int newIndex) {
        if (newIndex == 0) {
          onChanged?.call(ThemeMode.light);
        } else if (newIndex == 1) {
          onChanged?.call(ThemeMode.system);
        } else {
          onChanged?.call(ThemeMode.dark);
        }
      },
      children: <Widget>[
        Icon(isSelected[0] ? Icons.wb_sunny : Icons.wb_sunny_outlined),
        Icon(isSelected[1] ? Icons.phone_iphone : Icons.phone_iphone_outlined),
        Icon(isSelected[2] ? Icons.bedtime : Icons.bedtime_outlined),
      ],
    );
  }
}
