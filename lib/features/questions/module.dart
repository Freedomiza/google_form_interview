import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'screen/question_screen.dart';

@RoutePage()
class QuestionsModule extends StatelessWidget {
  const QuestionsModule({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const QuestionScreen();
  }
}
