import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../helpers/device.dart';
import '../routes/app_routes.gr.dart';
import 'widgets/app_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const _routes = [
    OverviewRoute(),
    TodayRoute(),
    UpcomingRoute(),
    SearchRoute(),
  ];

  bool isMenuExpanded = false;

  double activeMenuWidth = menuWidth;
  double previousMenuWidth = menuWidth;

  final scaffoldKey = GlobalKey();

  Widget buildSideMenu(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: menuWidth),
      child: Material(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: activeMenuWidth,
          child: AppMenu(
            railWidth: railWidth,
            maxWidth: menuWidth,
            onOperate: () {
              setState(() {
                isMenuExpanded = !isMenuExpanded;
              });
            },
            onSelect: (index) {
              if (index >= 0 && index < _routes.length) {
                context.navigateTo(_routes[index]);
              }
            },
          ),
        ),
      ),
    );
  }

  Widget buildScaffold(BuildContext context) {
    return Expanded(
      child: AutoTabsScaffold(
        key: scaffoldKey,
        routes: _routes,
        extendBodyBehindAppBar: true,
        extendBody: true,
        appBarBuilder: (context, _) => AppBar(
          title: const Text('Home'),
        ),
        bottomNavigationBuilder: (context, tabsRouter) => ResponsiveVisibility(
          visibleWhen: const [
            Condition.smallerThan(name: MOBILE),
            Condition.equals(name: MOBILE),
          ],
          hiddenWhen: const [
            Condition.largerThan(name: MOBILE),
          ],
          child: NavigationBar(
            labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
            selectedIndex: tabsRouter.activeIndex,
            onDestinationSelected: tabsRouter.setActiveIndex,
            destinations: [
              NavigationDestination(
                icon: Icon(
                  tabsRouter.activeIndex == 0
                      ? Icons.all_inbox
                      : Icons.all_inbox_outlined,
                ),
                label: 'All',
              ),
              NavigationDestination(
                icon: Icon(
                  tabsRouter.activeIndex == 1
                      ? Icons.calendar_today
                      : Icons.calendar_today_outlined,
                ),
                label: 'Today',
              ),
              NavigationDestination(
                icon: Icon(
                  tabsRouter.activeIndex == 2
                      ? Icons.calendar_month
                      : Icons.calendar_month_outlined,
                ),
                label: 'Upcoming',
              ),
              const NavigationDestination(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          ),
        ),
        floatingActionButton: Tooltip(
          message: 'Add new todo',
          child: FloatingActionButton(
            onPressed: () => context.router.push(EditRoute(initialTodo: null)),
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isMobile = context.isMobileSize();

    if (!isMenuExpanded) activeMenuWidth = railWidth;
    if (isMenuExpanded) activeMenuWidth = menuWidth;
    if (isMobile) activeMenuWidth = 0;

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context),
      child: Row(
        children: [
          buildSideMenu(context),
          buildScaffold(context),
        ],
      ),
    );
  }
}
