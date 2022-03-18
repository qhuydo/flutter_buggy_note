import 'package:flutter/material.dart';

// import 'widgets/theme_colours_card.dart';

class NestedSettingsPage extends StatelessWidget {
  const NestedSettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            // ThemeColoursCard(),
          ],
        ),
      ),
    );
  }
}
