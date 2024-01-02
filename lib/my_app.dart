import 'package:avnon_pre_interview/configs/injector.dart';
import 'package:avnon_pre_interview/providers/theme_provider.dart';
import 'package:avnon_pre_interview/routes/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'constants/app_theme.dart';
import 'gen/l10n.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
        designSize: Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        child: MyHomePage());
  }
}

class MyHomePage extends ConsumerStatefulWidget {
  const MyHomePage({super.key});

  @override
  ConsumerState<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends ConsumerState<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final themeNotifier = ref.watch(themeNotifierProvider);
    final appRouter = getIt<AppRouter>();
    return MaterialApp.router(
        themeMode: themeNotifier.themeMode,
        theme: AppThemeStyle.theme(context),
        darkTheme: AppThemeStyle.darkTheme(context),
        debugShowCheckedModeBanner: false,
        onGenerateTitle: (ctx) => S.of(ctx).commonAppName,
        supportedLocales: S.delegate.supportedLocales,
        localizationsDelegates: const [
          S.delegate, // Add this line
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routerConfig: appRouter.config());
  }
}
