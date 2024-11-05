import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  //الداتا اللي هتتغير في الابليكيشن كلة

  String appLanguage = 'en';
  ThemeMode appTheme =ThemeMode.dark;

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    appLanguage = newLanguage;
    notifyListeners();
  }
  void changeTheme(ThemeMode newMode){
    if(appTheme == newMode){
      return;
    }
    appTheme = newMode;
    notifyListeners();
  }
  bool isLightMode(){
    return appTheme == ThemeMode.light ;
  }
}
