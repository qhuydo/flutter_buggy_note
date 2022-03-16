import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'app/bootstrap.dart';
import 'app/hive_setup.dart';
import 'const/breakpoints.dart';
import 'data/api/local_todo_api.dart';
import 'domain/todo_repository.dart';
import 'feature/routes/app_routes.gr.dart';
import 'feature/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();

  final todoApi = LocalTodoApi();
  // final todosRepository = TodoRepository(todoApi);

  // runApp(BuggyNoteApp(todoRepository: todosRepository));
  bootstrap(todoApi: todoApi);
}

class BuggyNoteApp extends StatelessWidget {
  final TodoRepository todoRepository;

  const BuggyNoteApp({
    Key? key,
    required this.todoRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: todoRepository,
      child: const _BuggyNoteAppView(),
    );
  }
}

class _BuggyNoteAppView extends StatefulWidget {
  const _BuggyNoteAppView({Key? key}) : super(key: key);

  @override
  State<_BuggyNoteAppView> createState() => _BuggyNoteAppViewState();
}

class _BuggyNoteAppViewState extends State<_BuggyNoteAppView> {
  final _appRouter = AppRouter();
  final _appTheme = AppTheme(scheme: FlexScheme.blue);

  @override
  Widget build(BuildContext context) {
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
      theme: _appTheme.light,
      darkTheme: _appTheme.dark,
    );
  }
}
