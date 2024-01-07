// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:flutter_auto_route/screens/restaurant_screen/restaurant_screen.dart'
    as _i1;
import 'package:flutter_auto_route/screens/restaurants_screen/restaurants_flow.dart'
    as _i2;
import 'package:flutter_auto_route/screens/settings_screen/settings_flow.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    RestaurantRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<RestaurantRouteArgs>(
          orElse: () => RestaurantRouteArgs(
              restaurantId: pathParams.getInt('restaurantId')));
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.RestaurantScreen(
          key: args.key,
          restaurantId: args.restaurantId,
        ),
      );
    },
    RestaurantsFlow.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RestaurantsFlow(),
      );
    },
    SettingsFlow.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.SettingsFlow(),
      );
    },
  };
}

/// generated route for
/// [_i1.RestaurantScreen]
class RestaurantRoute extends _i4.PageRouteInfo<RestaurantRouteArgs> {
  RestaurantRoute({
    _i5.Key? key,
    required int restaurantId,
    List<_i4.PageRouteInfo>? children,
  }) : super(
          RestaurantRoute.name,
          args: RestaurantRouteArgs(
            key: key,
            restaurantId: restaurantId,
          ),
          rawPathParams: {'restaurantId': restaurantId},
          initialChildren: children,
        );

  static const String name = 'RestaurantRoute';

  static const _i4.PageInfo<RestaurantRouteArgs> page =
      _i4.PageInfo<RestaurantRouteArgs>(name);
}

class RestaurantRouteArgs {
  const RestaurantRouteArgs({
    this.key,
    required this.restaurantId,
  });

  final _i5.Key? key;

  final int restaurantId;

  @override
  String toString() {
    return 'RestaurantRouteArgs{key: $key, restaurantId: $restaurantId}';
  }
}

/// generated route for
/// [_i2.RestaurantsFlow]
class RestaurantsFlow extends _i4.PageRouteInfo<void> {
  const RestaurantsFlow({List<_i4.PageRouteInfo>? children})
      : super(
          RestaurantsFlow.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantsFlow';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.SettingsFlow]
class SettingsFlow extends _i4.PageRouteInfo<void> {
  const SettingsFlow({List<_i4.PageRouteInfo>? children})
      : super(
          SettingsFlow.name,
          initialChildren: children,
        );

  static const String name = 'SettingsFlow';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
