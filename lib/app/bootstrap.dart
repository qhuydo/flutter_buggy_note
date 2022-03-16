import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../data/api/todo_api.dart';
import '../domain/todo_repository.dart';
import '../main.dart';

void bootstrap({required TodoApi todoApi}) {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  final todosRepository = TodoRepository(todoApi);

  runZonedGuarded(
    () => BlocOverrides.runZoned(
      () async => runApp(
        BuggyNoteApp(todoRepository: todosRepository),
      ),
      blocObserver: AppBlocObserver(),
    ),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}

class AppBlocObserver extends BlocObserver {
  @override
  void onEvent(Bloc bloc, Object? event) {
    super.onEvent(bloc, event);
    log("$event");
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    log(
      "$bloc\n${change.currentState.toString()}\n${change.nextState.toString()}",
    );
  }
}
