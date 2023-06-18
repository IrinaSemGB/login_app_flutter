import 'package:flutter/material.dart';
import 'package:login_app_flutter/constants/app_colors.dart';

class AppFormInputDecorationTheme {
  AppFormInputDecorationTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: AppColors.SECONDARY,
    floatingLabelStyle: TextStyle(color: AppColors.SECONDARY),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: AppColors.SECONDARY),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    border: OutlineInputBorder(),
    prefixIconColor: AppColors.PRIMARY,
    floatingLabelStyle: TextStyle(color: AppColors.PRIMARY),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2, color: AppColors.PRIMARY),
    ),
  );
}