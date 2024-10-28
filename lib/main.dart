import 'package:flutter/material.dart';
import 'package:islamic_app/home/hadeth/hadeth_tap.dart';
import 'home/hadeth/hadeth_details_screen.dart';
import 'home/homescreen/home_screen.dart';
import 'home/quran/sura_details_screen.dart';
import 'home/splash/splash_screen.dart';
import 'my_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName : (context) => const SplashScreen() ,
        HomeScreen.routeName : (context) => const HomeScreen(),
        SuraDetailsScreen.routeName :(context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName :(context) => const HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}

