import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screen/home_screen.dart';

@RoutePage()
class HomeModule extends StatelessWidget {
  const HomeModule({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen();
  }
}
