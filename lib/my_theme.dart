import 'package:flutter/material.dart';

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
      titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
        color: blackColor,
      ),
      titleLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: blackColor,
      ),
      titleSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: blackColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: blackColor,
      // unselectedItemColor: whiteColor,
    ),
  );
}
