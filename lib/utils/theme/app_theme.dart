import 'package:flutter/material.dart';
import 'package:login_app_flutter/utils/theme/widgets_theme/text_theme.dart';

class AppTheme {

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: AppTextTheme.lightTextTheme,
  );
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: AppTextTheme.darkTextTheme,
  );
}