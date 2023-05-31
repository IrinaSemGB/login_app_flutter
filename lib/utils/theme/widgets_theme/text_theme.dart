import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {

  static TextTheme lightTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      color: Colors.black87,
      fontSize: 23.0,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.poppins(
      color: Colors.black54,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineMedium: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
    ),
    headlineSmall: GoogleFonts.montserrat(
      color: Colors.white70,
      fontSize: 23.0,
      fontWeight: FontWeight.bold,
    ),
    titleLarge: GoogleFonts.poppins(
      color: Colors.white60,
    ),
  );
}