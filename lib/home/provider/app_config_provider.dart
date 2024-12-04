import 'package:flutter/material.dart';
import 'package:islamic_app/shared_pref/pref_helper.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  //الداتا اللي هتتغير في الابليكيشن كلة

  String appLanguage = 'en';

  void init() async {
    String? newLanguage = PrefHelper.getLanguage();
    changeLanguage(newLanguage ?? "en");
    String? mode = PrefHelper.getMode();
    if (mode == "dark") {
      changeTheme(ThemeMode.dark);
    } else {
      changeTheme(ThemeMode.light);
    }
  }

  ThemeMode appTheme = ThemeMode.light;

  void changeLanguage(String newLanguage) {
    if (appLanguage == newLanguage) {
      return;
    }
    PrefHelper.saveLanguage(newLanguage);
    appLanguage = newLanguage;
    notifyListeners();
  }

  void changeTheme(ThemeMode newMode) {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    if (newMode == ThemeMode.dark) {
      PrefHelper.saveTheme("dark");
    } else {
      PrefHelper.saveTheme("light");
    }
    notifyListeners();
  }

  bool isLightMode() {
    return appTheme == ThemeMode.light;
  }
}
