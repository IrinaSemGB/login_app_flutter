import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_app_flutter/screens/splash_screen.dart';
import 'package:login_app_flutter/utils/theme/app_theme.dart';

void main() => runApp(const LoginApp());

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: SplashScreen(),
    );
  }
}
