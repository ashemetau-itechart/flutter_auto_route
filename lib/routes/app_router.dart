import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/routes/router_path.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: RouterPath.restaurants,
          page: RestaurantsFlow.page,
          initial: true,
        ),
        AutoRoute(
          path: RouterPath.settings,
          page: SettingsFlow.page,
        ),
        AutoRoute(
          path: RouterPath.restaurant,
          page: RestaurantRoute.page,
        ),
      ];
}
