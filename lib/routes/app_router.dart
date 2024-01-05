import 'package:auto_route/auto_route.dart';
import 'package:flutter_auto_route/screens/restaurants_list_screen.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: RestaurantsListScreen.page, initial: true),
        // AutoRoute(page: SettingsRoute.page),
        // AutoRoute(page: SampleItemDetailsRoute.page),
      ];
}
