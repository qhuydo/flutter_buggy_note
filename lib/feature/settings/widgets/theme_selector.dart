import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/theme/bloc/theme_cubit.dart';

class ThemeSelector extends StatefulWidget {
  const ThemeSelector({
    Key? key,
  }) : super(key: key);

  @override
  State<ThemeSelector> createState() => _ThemeSelectorState();
}

class _ThemeSelectorState extends State<ThemeSelector> {
  static const double scrollItemWidth = 67.2;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(
      keepScrollOffset: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.of(context).brightness == Brightness.light;

    return SizedBox(
      height: 72,
      child: Row(
        children: [
          Expanded(
            child: BlocBuilder<ThemeCubit, ThemeState>(
              buildWhen: (previous, current) =>
                  previous.scheme != current.scheme,
              builder: (context, state) {
                final currentIndex = FlexScheme.values.indexOf(state.scheme);
                scrollController.animateTo(
                  scrollItemWidth * currentIndex,
                  duration: const Duration(milliseconds: 360),
                  curve: Curves.easeOutCubic,
                );
                return ListView.builder(
                  controller: scrollController,
                  physics: const ClampingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: FlexColor.schemesList.length,
                  itemBuilder: (context, index) {
                    final data = FlexColor.schemesList[index];
                    final colour = isLight ? data.light : data.dark;
                    return FlexThemeModeOptionButton(
                      flexSchemeColor: colour,
                      selected: index == currentIndex,
                      onSelect: () {
                        context.read<ThemeCubit>().changeScheme(
                              scheme: FlexColor.schemes.entries
                                  .firstWhere((entry) => entry.value == data)
                                  .key,
                            );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    scrollController.dispose();
  }
}
