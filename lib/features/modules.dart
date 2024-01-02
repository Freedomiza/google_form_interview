import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
export './home/module.dart';
export './questions/module.dart';
export './responses/module.dart';
export './settings/module.dart';
export './splash/module.dart';

// app_module.dart';

@RoutePage()
class AppModule extends StatelessWidget {
  const AppModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}
