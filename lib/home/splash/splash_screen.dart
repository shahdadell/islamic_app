import 'dart:async';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../homescreen/home_screen.dart';
import '../provider/app_config_provider.dart';

class SplashScreen extends StatelessWidget {
  static const String routeName = "splash" ;
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var mediaQuery2 = MediaQuery.of(context).size;

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
      body: provider.isLightMode()?
      Image.asset(
        "assets/images/splash.png",
        width: mediaQuery2.width,
        height: mediaQuery2.height,
        fit: BoxFit.cover,
      ):
      Image.asset(
        "assets/images/splash_dark.png",
        width: mediaQuery2.width,
        height: mediaQuery2.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
