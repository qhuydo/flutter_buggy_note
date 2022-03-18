import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/bloc/theme_cubit.dart';

class ThemeMenu extends StatelessWidget {
  const ThemeMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isLight = theme.brightness == Brightness.light;
    final colorScheme = theme.colorScheme;

    return BlocBuilder<ThemeCubit, ThemeState>(
      buildWhen: (previous, current) => previous.scheme != current.scheme,
      builder: (context, state) {
        final currentIndex = FlexScheme.values.indexOf(state.scheme);
        final themeData = FlexColor.schemesList[currentIndex];

        return PopupMenuButton<int>(
          padding: EdgeInsets.zero,
          onSelected: (value) =>
              context.read<ThemeCubit>().changeScheme(
                scheme: FlexScheme.values[value],
              ),
          itemBuilder: (BuildContext context) =>
          [
            for (int i = 0; i < FlexColor.schemesList.length; i++)
              PopupMenuItem<int>(
                value: i,
                child: ListTile(
                  leading: Icon(
                    Icons.lens,
                    color: isLight
                        ? FlexColor.schemesList[i].light.primary
                        : FlexColor.schemesList[i].dark.primary,
                    size: 36,
                  ),
                  title: Text(FlexColor.schemesList[i].name),
                  selected: i == currentIndex,
                ),
              )
          ],
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: 16),
            title: Text(
              '${themeData.name} color scheme',
            ),
            subtitle: Text(themeData.description),
            trailing: Icon(
              Icons.lens,
              color: colorScheme.primary,
              size: 40,
            ),
          ),
        );
      },
    );
  }
}
