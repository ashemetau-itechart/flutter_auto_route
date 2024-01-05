import 'package:flutter/material.dart';
import 'package:flutter_auto_route/services/settings_controller.dart';
import 'package:flutter_auto_route/services/settings_service.dart';
import 'package:provider/provider.dart';

import 'app.dart';

void main() async {
  final settingsController = SettingsController(SettingsService());

  await settingsController.init();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: settingsController),
      ],
      child: MyApp(
        settingsController: settingsController,
      ),
    ),
  );
}
