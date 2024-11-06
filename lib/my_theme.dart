import 'package:flutter/material.dart';

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
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: const TextStyle(
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
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleMedium: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: whiteColor,
      ),
      titleSmall: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w600,
        color: whiteColor,
      ),
      bodySmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: whiteColor,
      ),
      bodyMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: const TextStyle(
        fontSize: 19,
      ),
      selectedItemColor: yellowColors,
    ),
    unselectedWidgetColor: whiteColor,
  );
}
