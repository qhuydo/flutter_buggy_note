import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:window_size/window_size.dart';

import 'app/bootstrap.dart';
import 'app/hive_setup.dart';
import 'app/notification/notification_setup.dart';
import 'const/breakpoints.dart';
import 'data/api/local_todo_api.dart';
import 'domain/todo_repository.dart';
import 'feature/common/routes/app_routes.gr.dart';
import 'feature/common/theme/bloc/theme_cubit.dart';
import 'feature/home/bloc/home_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHive();
  await initNotification();

  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  final todoApi = LocalTodoApi();

  if (Platform.isLinux || Platform.isMacOS || Platform.isWindows) {
    setWindowMinSize(const Size(600, 750));
  }
  bootstrap(todoApi: todoApi, storage: storage);
}

class BuggyNoteApp extends StatelessWidget {
  final TodoRepository todoRepository;

  const BuggyNoteApp({
    Key? key,
    required this.todoRepository,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: flutterLocalNotificationsPlugin,
      child: RepositoryProvider.value(
        value: todoRepository,
        child: MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) => ThemeCubit()),
            BlocProvider(
              create: (context) => HomeBloc(
                todoRepository: todoRepository,
                plugin: flutterLocalNotificationsPlugin,
              ),
            ),
          ],
          child: const _BuggyNoteAppView(),
        ),
      ),
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) => MaterialApp.router(
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
        themeMode: state.mode,
        theme: state.light,
        darkTheme: state.dark,
      ),
    );
  }
}
