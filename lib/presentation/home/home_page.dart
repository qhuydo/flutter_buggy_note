import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context),
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,

      ),
    );
  }
}
