import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screen/response_screen.dart';

@RoutePage()
class ResponsesModule extends StatelessWidget {
  const ResponsesModule({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsesScreen();
  }
}
