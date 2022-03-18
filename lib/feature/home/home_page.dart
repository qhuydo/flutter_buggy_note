import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../domain/todo_repository.dart';
import '../common/helpers/device.dart';
import '../common/routes/app_routes.gr.dart';
import 'bloc/home_bloc.dart';
import 'widgets/app_menu.dart';
import 'widgets/option_menu.dart';

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
    NestedSettingsRoute(),
  ];
  static final int _nVisibleNavigationRoutes = _routes.length - 1;

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
          title: const Text(
            'Buggy note',
          ),
          actions: const [
            ResponsiveVisibility(
              visibleWhen: [
                Condition.smallerThan(name: MOBILE),
                Condition.equals(name: MOBILE),
              ],
              hiddenWhen: [
                Condition.largerThan(name: MOBILE),
              ],
              child: OptionMenu(),
            ),
          ],
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
            selectedIndex: tabsRouter.activeIndex >= _nVisibleNavigationRoutes
                ? _nVisibleNavigationRoutes - 1
                : tabsRouter.activeIndex,
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
            onPressed: () => context.router.push(EditRoute(
              initialTodo: null,
              isNewTodo: true,
            )),
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

    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc(
        todoRepository: context.read<TodoRepository>(),
      ),
      child: AnnotatedRegion(
        value: FlexColorScheme.themedSystemNavigationBar(context),
        child: Row(
          children: [
            buildSideMenu(context),
            buildScaffold(context),
          ],
        ),
      ),
    );
  }
}
