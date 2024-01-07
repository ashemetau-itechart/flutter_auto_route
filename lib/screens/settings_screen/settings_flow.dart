import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auto_route/screens/settings_screen/settings_screen.dart';
import 'package:flutter_auto_route/services/settings_controller.dart';
import 'package:provider/provider.dart';

@RoutePage()
class SettingsFlow extends StatelessWidget {
  const SettingsFlow({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingsScreen(controller: context.read<SettingsController>());
  }
}
