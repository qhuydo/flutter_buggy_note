import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../const/breakpoints.dart';
import '../routes/app_routes.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final width = mediaQuery.size.width;

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context),
      child: AutoTabsScaffold(
        routes: const [
          AllTodosRoute(),
          TodayRoute(),
          UpcomingRoute(),
          SearchRoute(),
        ],
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBarBuilder: (context, _) => AppBar(
          title: const Text('Home'),
        ),
        drawer: width <= phoneBreakpoint ? null : const Drawer(),
        bottomNavigationBuilder: (context, _) => ResponsiveVisibility(
          visibleWhen: const [Condition.smallerThan(name: MOBILE)],
          hiddenWhen: const [
            Condition.equals(name: MOBILE),
            Condition.largerThan(name: MOBILE),
          ],
          child: NavigationBar(
            selectedIndex: _currentPage,
            onDestinationSelected: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            destinations: const [
              NavigationDestination(
                icon: Icon(Icons.all_inbox_outlined),
                label: 'All',
              ),
              NavigationDestination(
                icon: Icon(Icons.calendar_today_outlined),
                label: 'Today',
              ),
              NavigationDestination(
                icon: Icon(Icons.calendar_month_outlined),
                label: 'Upcoming',
              ),
              NavigationDestination(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
