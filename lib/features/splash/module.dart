import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screen/splash_screen.dart';

@RoutePage()
class SplashModule extends StatelessWidget {
  const SplashModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashScreen();
  }
}
