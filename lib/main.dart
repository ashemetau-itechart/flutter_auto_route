import 'package:flutter/material.dart';
import 'package:flutter_auto_route/services/restaurants_service.dart';
import 'package:flutter_auto_route/services/settings_controller.dart';
import 'package:flutter_auto_route/services/settings_service.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() async {
  final settingsService = SettingsService();
  final settingsController = SettingsController(settingsService);

  await settingsController.init();

  runApp(
    MultiProvider(
      providers: [
        Provider<RestaurantsService>(create: (_) => RestaurantsService()),
        ChangeNotifierProvider<SettingsController>.value(
            value: settingsController),
      ],
      child: MyApp(
        settingsController: settingsController,
      ),
    ),
  );
}
