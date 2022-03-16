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
    OverviewRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.OverviewPage());
    },
    TodayRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TodayPage());
    },
    UpcomingRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.UpcomingPage());
    },
    SearchRoute.name: (routeData) {
      return _i2.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchPage());
    }
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(HomeRoute.name, path: '/', children: [
          _i2.RouteConfig(OverviewRoute.name,
              path: 'overview-page', parent: HomeRoute.name),
          _i2.RouteConfig(TodayRoute.name,
              path: 'today-page', parent: HomeRoute.name),
          _i2.RouteConfig(UpcomingRoute.name,
              path: 'upcoming-page', parent: HomeRoute.name),
          _i2.RouteConfig(SearchRoute.name,
              path: 'search-page', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute({List<_i2.PageRouteInfo>? children})
      : super(HomeRoute.name, path: '/', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.OverviewPage]
class OverviewRoute extends _i2.PageRouteInfo<void> {
  const OverviewRoute() : super(OverviewRoute.name, path: 'overview-page');

  static const String name = 'OverviewRoute';
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

/// generated route for
/// [_i1.SearchPage]
class SearchRoute extends _i2.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: 'search-page');

  static const String name = 'SearchRoute';
}
