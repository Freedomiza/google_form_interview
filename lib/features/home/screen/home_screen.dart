import 'package:auto_route/auto_route.dart';
import 'package:avnon_pre_interview/contracts/question.dart';
import 'package:avnon_pre_interview/gen/l10n.dart';
import 'package:avnon_pre_interview/providers/form_provider.dart';
import 'package:avnon_pre_interview/routes/app_route.dart';
import 'package:avnon_pre_interview/widgets/fab_bottom_app_bar.dart';
import 'package:avnon_pre_interview/widgets/tab_layouts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends ConsumerWidget {
  double get appIconFontSize => 16;

  HomeScreen({super.key});

  final List<PageRouteInfo<dynamic>> _screen = [
    const QuestionsRoute(),
    const ResponsesRoute(),
    const SettingsRoute()
  ];

  List<FABBottomAppBarItem> bottomItems(BuildContext context) => [
        FABBottomAppBarItem(
          icon: Icon(
            FontAwesomeIcons.question,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: appIconFontSize.sp,
          ),
          title: S.current.txtQuestions,
          activeIcon: Icon(
            FontAwesomeIcons.question,
            color: Theme.of(context).colorScheme.onPrimary,
            size: appIconFontSize.sp,
          ),
        ),
        FABBottomAppBarItem(
          icon: Icon(
            FontAwesomeIcons.list,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: appIconFontSize.sp,
          ),
          title: S.current.txtResponses,
          activeIcon: Icon(
            FontAwesomeIcons.list,
            color: Theme.of(context).colorScheme.onPrimary,
            size: appIconFontSize.sp,
          ),
        ),
        FABBottomAppBarItem(
          icon: Icon(
            FontAwesomeIcons.gears,
            color: Theme.of(context).colorScheme.onSurfaceVariant,
            size: appIconFontSize.sp,
          ),
          title: S.current.txtSettings,
          activeIcon: Icon(
            FontAwesomeIcons.gears,
            color: Theme.of(context).colorScheme.onPrimary,
            size: appIconFontSize.sp,
          ),
        ),
      ];
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return TabLayoutWithRoute(
      screens: _screen,
      items: bottomItems(context),
      bottomAppBarActiveTextColor: Theme.of(context).colorScheme.onPrimary,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(userFormListProvider.notifier).addQuestion(
                Question(
                  title: 'Question Title',
                  description: 'Question Description',
                ),
              );
        },
        child: const Icon(FontAwesomeIcons.plus),
      ),
    );
  }
}
