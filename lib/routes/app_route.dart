import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';

import '../features/modules.dart';

part 'app_route.gr.dart';

@singleton
@AutoRouterConfig(replaceInRouteName: 'Screen|Module,Route')
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(path: '/', page: SplashRoute.page),
        AutoRoute(page: AppRoute.page, path: '/app', children: [
          RedirectRoute(path: '', redirectTo: 'home'),
          AutoRoute(
            page: HomeRoute.page,
            path: 'home',
            children: [
              AutoRoute(path: 'questions', page: QuestionsRoute.page),
              AutoRoute(path: 'responses', page: ResponsesRoute.page),
              AutoRoute(path: 'settings', page: SettingsRoute.page),
              RedirectRoute(path: '', redirectTo: 'questions')
            ],
          ),
        ]),
      ];
}
