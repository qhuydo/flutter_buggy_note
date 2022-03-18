import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class ThemeColourOptionButton extends StatelessWidget {
  final FlexSchemeColor schemeColour;
  final bool isSelected;
  final VoidCallback? onTap;

  const ThemeColourOptionButton({
    Key? key,
    required this.schemeColour,
    required this.isSelected,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hoverColour = Theme.of(context).brightness == Brightness.light
        ? Colors.grey[300]!
        : Colors.grey[600]!;

    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 16),
      child: Material(
        clipBehavior: Clip.antiAlias,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        child: Semantics(
          label: 'Theme mode option button',
          selected: isSelected,
          button: true,
          enabled: true,
          child: InkWell(
            hoverColor: hoverColour,
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(4),
              child: Column(
                children: [
                  Row(
                    children: [
                      _ColourBox(colour: schemeColour.primary),
                      _ColourBox(colour: schemeColour.primaryVariant),
                    ],
                  ),
                  Row(
                    children: [
                      _ColourBox(colour: schemeColour.secondary),
                      _ColourBox(colour: schemeColour.secondaryVariant),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ColourBox extends StatelessWidget {
  final Color colour;

  const _ColourBox({Key? key, required Color this.colour}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.5),
      child: Container(
        width: 24,
        height: 24,
        decoration: BoxDecoration(
          color: colour,
        ),
      ),
    );
  }
}
