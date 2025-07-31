import 'package:flutter/material.dart';
import 'package:flutter_smart_course/app/config/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme {
    return ThemeData(
      scaffoldBackgroundColor: AppColor.background,
      primaryColor: AppColor.purple,
      colorScheme: const ColorScheme.light(
        primary: AppColor.purple,
        secondary: AppColor.seeBlue,
        background: AppColor.background,
        surface: AppColor.background,
      ),
      textTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColor.background,
        selectedItemColor: AppColor.purple,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}