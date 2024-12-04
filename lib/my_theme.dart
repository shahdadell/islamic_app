import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  ///colors , light theme , dark theme
  static Color blackColor = const Color(0xff242424);
  static Color whiteColor = const Color(0xffF8F8F8);
  static Color yellowColors = const Color(0xffFACC1D);
  static Color primaryLight = const Color(0xffB7935F);
  static Color primaryDark = const Color(0xff141A2E);
//--------------------------------------------------------------------//
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryLight,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 23,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: GoogleFonts.elMessiri(
        fontSize: 19,
      ),
      selectedItemColor: blackColor,
    ),
    unselectedWidgetColor: whiteColor,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: primaryDark,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: GoogleFonts.elMessiri(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleSmall: GoogleFonts.elMessiri(
        fontSize: 23,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: GoogleFonts.elMessiri(
        fontSize: 19,
      ),
      selectedItemColor: yellowColors,
    ),
    unselectedWidgetColor: whiteColor,
  );
}
