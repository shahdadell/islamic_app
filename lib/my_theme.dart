import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  ///colors , light theme , dark theme
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffF8F8F8);
  static Color primaryLight = const Color(0xffB7935F);
//--------------------------------------------------------------------//
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryLight,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 23,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 21,
        fontWeight: FontWeight.w500,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: const TextStyle(
        fontSize: 19,
      ),
      selectedItemColor: blackColor,
    ),
  );
}
