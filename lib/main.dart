import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'const/breakpoints.dart';
import 'data/api/local_todo_api.dart';
import 'domain/todo_repository.dart';
import 'feature/routes/app_routes.gr.dart';
import 'feature/theme/theme.dart';

Future<void> main() async {
  await Hive.initFlutter();

  final todoApi = LocalTodoApi();
  final todosRepository = TodoRepository(todoApi);
  BuggyNoteApp(todoRepository: todosRepository);
  // bootstrap(todoApi: todoApi);
}

class BuggyNoteApp extends StatelessWidget {
  final TodoRepository todoRepository;

  BuggyNoteApp({
    Key? key,
    required this.todoRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: todoRepository,
      child: _BuggyNoteAppView(),
    );
  }
}

class _BuggyNoteAppView extends StatelessWidget {
  final _appRouter = AppRouter();

  _BuggyNoteAppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme(scheme: FlexScheme.blue);

    return MaterialApp.router(
      title: 'Buggy note',
      debugShowCheckedModeBanner: false,
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        // maxWidth: 1200,
        // minWidth: 600,
        defaultScale: true,
        breakpoints: const [
          ResponsiveBreakpoint.autoScale(phoneBreakpoint, name: MOBILE),
          ResponsiveBreakpoint.resize(tabletBreakpoint, name: TABLET),
          ResponsiveBreakpoint.resize(desktopBreakpoint, name: DESKTOP),
        ],
      ),
      themeMode: ThemeMode.system,
      theme: appTheme.light,
      darkTheme: appTheme.dark,
    );
  }
}
