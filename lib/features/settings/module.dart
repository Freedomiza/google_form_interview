import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screen/settings_screen.dart';

@RoutePage()
class SettingsModule extends StatelessWidget {
  const SettingsModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const SettingsScreen();
  }
}
