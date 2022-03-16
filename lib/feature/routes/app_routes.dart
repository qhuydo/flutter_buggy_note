import 'package:auto_route/annotations.dart';

import '../pages.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(
      page: HomePage,
      children: [
        AutoRoute(page: OverviewPage),
        AutoRoute(page: TodayPage),
        AutoRoute(page: UpcomingPage),
        AutoRoute(page: SearchPage),
      ],
      initial: true,
    ),
  ],
)
class $AppRouter {}
