// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:animation_demo/src/animation_demo.dart' as _i1;
import 'package:auto_route/auto_route.dart' as _i2;
import 'package:flutter/material.dart' as _i3;

class AppRouter extends _i2.RootStackRouter {
  AppRouter([_i3.GlobalKey<_i3.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i2.PageFactory> pagesMap = {
    HomeRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.HomePage(),
      );
    },
    SimpleAnimationRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.SimpleAnimationPage(),
      );
    },
    BouncingButtonRoute.name: (routeData) {
      return _i2.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.BouncingButtonPage(),
      );
    },
  };

  @override
  List<_i2.RouteConfig> get routes => [
        _i2.RouteConfig(
          HomeRoute.name,
          path: '/',
        ),
        _i2.RouteConfig(
          SimpleAnimationRoute.name,
          path: '/simple-animation-page',
        ),
        _i2.RouteConfig(
          BouncingButtonRoute.name,
          path: '/bouncing-button-page',
        ),
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i2.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i1.SimpleAnimationPage]
class SimpleAnimationRoute extends _i2.PageRouteInfo<void> {
  const SimpleAnimationRoute()
      : super(
          SimpleAnimationRoute.name,
          path: '/simple-animation-page',
        );

  static const String name = 'SimpleAnimationRoute';
}

/// generated route for
/// [_i1.BouncingButtonPage]
class BouncingButtonRoute extends _i2.PageRouteInfo<void> {
  const BouncingButtonRoute()
      : super(
          BouncingButtonRoute.name,
          path: '/bouncing-button-page',
        );

  static const String name = 'BouncingButtonRoute';
}
