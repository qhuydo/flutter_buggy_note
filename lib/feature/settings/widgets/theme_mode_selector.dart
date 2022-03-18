import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/bloc/theme_cubit.dart';
import 'theme_mode_switch.dart';

class ThemeModeSelector extends StatelessWidget {
  const ThemeModeSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      buildWhen: (previous, current) => previous.mode != current.mode,
      builder: (context, state) {
        return ListTile(
          title: const Text('Theme mode'),
          subtitle: Text(state.mode.toString()),
          trailing: ThemeModeSwitch(
            mode: state.mode,
            onChanged: (mode) =>  context
                .read<ThemeCubit>()
                .changeThemeMode(themeMode: mode),
          ),
          // Toggle theme mode also via the ListTile tap.
          onTap: () {
            final brightness = Theme.of(context).brightness;
            if (brightness == Brightness.light) {
              context
                  .read<ThemeCubit>()
                  .changeThemeMode(themeMode: ThemeMode.dark);
            } else {
              context
                  .read<ThemeCubit>()
                  .changeThemeMode(themeMode: ThemeMode.light);
            }
          },
        );
      },
    );
  }
}
