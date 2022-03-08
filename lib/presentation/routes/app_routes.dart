import 'package:auto_route/annotations.dart';

import '../pages.dart';

@MaterialAutoRouter(
  preferRelativeImports: true,
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: HomePage, children: [
      AutoRoute(page: AllTodosPage),
      AutoRoute(page: TodayPage),
      AutoRoute(page: UpcomingPage),
    ]),
  ],
)
class $AppRouter {}
