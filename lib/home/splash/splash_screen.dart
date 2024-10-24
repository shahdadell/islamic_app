import 'dart:async';
import 'package:flutter/material.dart';

import '../homescreen/home_screen.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash" ;
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
            (){
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const HomeScreen();
              },
            ),
          );
        });
    var mediaQuery = MediaQuery.of(context).size ;
    return Scaffold(
      body: Image.asset("assets/images/splash.png",
        width: mediaQuery.width,
        height: mediaQuery.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
