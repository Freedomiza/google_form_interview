import 'package:auto_route/auto_route.dart';
import 'package:avnon_pre_interview/routes/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _navigateToHome(context);
    });
  }

  void _navigateToHome(BuildContext context) {
    Future.delayed(const Duration(seconds: 1), () {
      context.router.navigate(const HomeRoute());
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CupertinoActivityIndicator(radius: 20),
      ),
    );
  }
}
