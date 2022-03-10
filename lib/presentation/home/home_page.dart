import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../routes/app_routes.gr.dart';
import 'widgets/app_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

const menuWidth = 275.0;
const railWidth = 66.0;

class _HomePageState extends State<HomePage> {
  int _currentPage = 0;
  bool isMenuClosed = false;
  bool isMenuDoneClosing = false;
  bool isMenuExpanded = true;

  double activeMenuWidth = menuWidth;
  double previousMenuWidth = menuWidth;

  @override
  Widget build(BuildContext context) {
    final isDesktop = ResponsiveValue(
          context,
          defaultValue: false,
          valueWhen: const [
            Condition.equals(name: DESKTOP, value: true),
            Condition.largerThan(name: DESKTOP, value: true),
          ],
        ).value ==
        true;
    final isMobile = ResponsiveValue(
          context,
          defaultValue: false,
          valueWhen: const [
            Condition.equals(name: MOBILE, value: true),
            Condition.smallerThan(name: MOBILE, value: true),
          ],
        ).value ==
        true;

    if (!isDesktop) activeMenuWidth = railWidth;
    if (!isDesktop && isMenuClosed) activeMenuWidth = 0;
    if (!isDesktop && !isMenuClosed) activeMenuWidth = railWidth;
    if (isDesktop && !isMenuExpanded) activeMenuWidth = railWidth;
    if (isDesktop && isMenuExpanded) activeMenuWidth = menuWidth;
    if (isMobile) activeMenuWidth = 0;

    return AnnotatedRegion(
      value: FlexColorScheme.themedSystemNavigationBar(context),
      child: Row(
        children: [
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: menuWidth),
            child: Material(
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                onEnd: () {
                  setState(() {
                    if (isMenuClosed) {
                      isMenuDoneClosing = true;
                    } else {
                      isMenuDoneClosing = false;
                    }
                  });
                },
                width: activeMenuWidth,
                child: AppMenu(
                  railWidth: railWidth,
                  maxWidth: menuWidth,
                  onOperate: () {
                    setState(() {
                      // Desktop case, we can only expand or collapse the menu.
                      if (isDesktop) {
                        // So we toggle its state.
                        isMenuExpanded = !isMenuExpanded;
                      } else {
                        // Tablet or phone case, we can only close the menu, it
                        // will then be in the Drawer, from where it can be
                        // opened again as a drawer with the menu button.
                        isMenuClosed = true;
                      }
                    });
                  },
                ),
              ),
            ),
          ),
          Expanded(
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
                automaticallyImplyLeading:
                    !isDesktop && isMenuClosed && isMenuDoneClosing,
              ),
              drawer: ConstrainedBox(
                // We use the same size on the drawer that we have on our menu.
                // We can do that by constraining the drawer een if it does not
                // have a width size property.
                constraints: BoxConstraints.expand(width: menuWidth),
                child: Drawer(
                  child: AppMenu(
                    maxWidth: menuWidth,
                    railWidth: railWidth,
                    // onSelect: (int index) {
                    // Navigator.of(context).pop();
                    // widget.onSelect?.call(index);
                    // },
                    // User pushed menu button in Drawer, we close the Drawer and
                    // set menu state to not be closed, it will open as a rail.
                    onOperate: () {
                      Navigator.of(context).pop();
                      // If we do this, we can wait to complete the closing
                      // drawer animation, before we trigger animating the
                      // rail visible:
                      Future<void>.delayed(const Duration(milliseconds: 200),
                          () {
                        setState(() {
                          isMenuClosed = false;
                        });
                      });
                    },
                  ),
                ),
              ),
              bottomNavigationBuilder: (context, _) => ResponsiveVisibility(
                visibleWhen: const [
                  Condition.smallerThan(name: MOBILE),
                  Condition.equals(name: MOBILE),
                ],
                hiddenWhen: const [
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
          ),
        ],
      ),
    );
  }
}
