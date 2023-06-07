import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: AppColors.WHITE,
      backgroundColor: AppColors.SECONDARY,
      side: BorderSide(color: AppColors.SECONDARY),
      padding: EdgeInsets.symmetric(vertical: 15.0),
    ),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: AppColors.SECONDARY,
      backgroundColor: AppColors.WHITE,
      side: BorderSide(color: AppColors.WHITE),
      padding: EdgeInsets.symmetric(vertical: 15.0),
    ),
  );
}