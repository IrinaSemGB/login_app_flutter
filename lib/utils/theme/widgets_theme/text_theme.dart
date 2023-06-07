import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_app_flutter/constants/app_colors.dart';

class AppTextTheme {
  AppTextTheme._(); // to avoid creating instances

  static final TextTheme lightTextTheme = TextTheme(

    headlineLarge: GoogleFonts.montserrat(
      color: AppColors.DARK,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.montserrat(
      color: AppColors.DARK,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.poppins(
      color: AppColors.DARK,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColors.DARK,
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.poppins(
      color: AppColors.DARK,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.DARK,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
  );

  static final TextTheme darkTextTheme = TextTheme(

    headlineLarge: GoogleFonts.montserrat(
      color: AppColors.WHITE,
      fontSize: 28.0,
      fontWeight: FontWeight.bold,
    ),
    headlineMedium: GoogleFonts.montserrat(
      color: AppColors.WHITE,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    headlineSmall: GoogleFonts.poppins(
      color: AppColors.WHITE,
      fontSize: 24.0,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: GoogleFonts.poppins(
      color: AppColors.WHITE,
      fontSize: 17.0,
      fontWeight: FontWeight.w600,
    ),
    displaySmall: GoogleFonts.poppins(
      color: AppColors.WHITE,
      fontSize: 14.0,
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: AppColors.WHITE,
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
    ),
  );
}