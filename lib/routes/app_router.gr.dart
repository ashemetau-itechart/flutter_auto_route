// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_auto_route/entities/restaurant.dart' as _i6;
import 'package:flutter_auto_route/screens/restaurant_details_screen.dart'
    as _i1;
import 'package:flutter_auto_route/screens/restaurants_list_screen.dart' as _i2;
import 'package:flutter_auto_route/screens/settings_screen.dart' as _i3;
import 'package:flutter_auto_route/services/settings_controller.dart' as _i7;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RestaurantDetailsRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.RestaurantDetailsScreen(),
      );
    },
    RestaurantsListRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantsListRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.RestaurantsListScreen(
          key: args.key,
          items: args.items,
        ),
      );
    },
    SettingsRoute.name: (routeData) {
      final args = routeData.argsAs<SettingsRouteArgs>();
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.SettingsScreen(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
  };
}

/// generated route for
/// [_i1.RestaurantDetailsScreen]
class RestaurantDetailsRoute extends _i4.PageRouteInfo<void> {
  const RestaurantDetailsRoute({List<_i4.PageRouteInfo>? children})
      : super(
          RestaurantDetailsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantDetailsRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RestaurantsListScreen]
class RestaurantsListRoute extends _i4.PageRouteInfo<RestaurantsListRouteArgs> {
  RestaurantsListRoute({
    _i5.Key? key,
    required List<_i6.Restaurant> items,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RestaurantsListRoute.name,
          args: RestaurantsListRouteArgs(
            key: key,
            items: items,
          ),
          initialChildren: children,
        );

  static const String name = 'RestaurantsListRoute';

  static const _i4.PageInfo<RestaurantsListRouteArgs> page =
      _i4.PageInfo<RestaurantsListRouteArgs>(name);
}

class RestaurantsListRouteArgs {
  const RestaurantsListRouteArgs({
    this.key,
    required this.items,
  });

  final _i5.Key? key;

  final List<_i6.Restaurant> items;

  @override
  String toString() {
    return 'RestaurantsListRouteArgs{key: $key, items: $items}';
  }
}

/// generated route for
/// [_i3.SettingsScreen]
class SettingsRoute extends _i4.PageRouteInfo<SettingsRouteArgs> {
  SettingsRoute({
    _i5.Key? key,
    required _i7.SettingsController controller,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          SettingsRoute.name,
          args: SettingsRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i4.PageInfo<SettingsRouteArgs> page =
      _i4.PageInfo<SettingsRouteArgs>(name);
}

class SettingsRouteArgs {
  const SettingsRouteArgs({
    this.key,
    required this.controller,
  });

  final _i5.Key? key;

  final _i7.SettingsController controller;

  @override
  String toString() {
    return 'SettingsRouteArgs{key: $key, controller: $controller}';
  }
}
