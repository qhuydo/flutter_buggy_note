import 'package:flutter/material.dart';

class SettingsCard extends StatefulWidget {
  final Widget? leading;
  final String? title;
  final Widget? subtitle;
  final Widget? child;

  const SettingsCard({
    Key? key,
    this.leading,
    this.title,
    this.subtitle,
    this.child,
  }) : super(key: key);

  @override
  State<SettingsCard> createState() => _SettingsCardState();
}

class _SettingsCardState extends State<SettingsCard> {
  var _isOpen = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final scheme = theme.colorScheme;

    final bool isDark = theme.brightness == Brightness.dark;
    // Scaling for the blend value, used to tune the look a bit.
    final int blendFactor = isDark ? 3 : 2;

    var cardColor = theme.cardColor;
    var headerColor = Color.alphaBlend(
      scheme.primary.withAlpha(5 * blendFactor),
      cardColor,
    );
    // If card or its header color, is equal to scaffold background, we will
    // adjust both and make them more primary tinted. This happens e.g. when we
    // use not blend level, or with the all level blend mode. In this
    // design we want the Card on the scaffold to always have a slightly
    // different background color from scaffold background where it is placed,
    // not necessarily a lot, but always a bit at least.
    if (cardColor == theme.scaffoldBackgroundColor ||
        headerColor == theme.scaffoldBackgroundColor) {
      cardColor = Color.alphaBlend(
          scheme.primary.withAlpha(4 * blendFactor), cardColor);
      headerColor = Color.alphaBlend(
          scheme.primary.withAlpha(4 * blendFactor), headerColor);
    }

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: cardColor,
        child: Column(
          children: [
            Theme(
              data: theme.copyWith(cardColor: headerColor),
              child: Material(
                type: MaterialType.card,
                child: ListTile(
                  leading: widget.leading,
                  title: Text(
                    widget.title ?? '',
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: ExpandIcon(
                    size: 32,
                    isExpanded: _isOpen,
                    padding: EdgeInsets.zero,
                    onPressed: (_) {
                      setState(() {
                        _isOpen = !_isOpen;
                      });
                    },
                  ),
                  onTap: () {
                    setState(() {
                      _isOpen = !_isOpen;
                    });
                  },
                ),
              ),
            ),
            AnimatedSwitcher(
              duration: const Duration(milliseconds: 200),
              transitionBuilder: (Widget child, Animation<double> animation) {
                return SizeTransition(
                  sizeFactor: animation,
                  child: child,
                );
              },
              child: (_isOpen && widget.child != null)
                  ? widget.child
                  : const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }
}
