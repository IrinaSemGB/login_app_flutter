import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';

class AppOutlinedButtonTheme {
  AppOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: AppColors.SECONDARY,
      side: BorderSide(color: AppColors.SECONDARY),
      padding: EdgeInsets.symmetric(vertical: 15.0),
    ),
  );


  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
      foregroundColor: AppColors.WHITE,
      side: BorderSide(color: AppColors.WHITE),
      padding: EdgeInsets.symmetric(vertical: 15.0),
    ),
  );
}