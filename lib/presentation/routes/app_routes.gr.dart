// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

import '../pages.dart' as _i1;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    AllTodosRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.AllTodosPage());
    },
    TodayRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TodayPage());
    },
    UpcomingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.UpcomingPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/home-page', children: [
          _i2.RouteConfig(AllTodosRoute.name,
              path: 'all-todos-page', parent: HomeRoute.name),
          _i2.RouteConfig(TodayRoute.name,
              path: 'today-page', parent: HomeRoute.name),
          _i2.RouteConfig(UpcomingRoute.name,
              path: 'upcoming-page', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/home-page', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.AllTodosPage]
class AllTodosRoute extends _i2.PageRouteInfo<void> {
  const AllTodosRoute() : super(AllTodosRoute.name, path: 'all-todos-page');

  static const String name = 'AllTodosRoute';
}

/// generated route for
/// [_i1.TodayPage]
class TodayRoute extends _i2.PageRouteInfo<void> {
  const TodayRoute() : super(TodayRoute.name, path: 'today-page');

  static const String name = 'TodayRoute';
}

/// generated route for
/// [_i1.UpcomingPage]
class UpcomingRoute extends _i2.PageRouteInfo<void> {
  const UpcomingRoute() : super(UpcomingRoute.name, path: 'upcoming-page');

  static const String name = 'UpcomingRoute';
}
