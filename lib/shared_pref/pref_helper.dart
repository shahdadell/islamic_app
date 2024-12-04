import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static late SharedPreferences prefs;

  static String? getLanguage() {
    return prefs.getString("lang");
  }

  static saveLanguage(String Language) async {
    await prefs.setString("lang", Language);
  }
  static saveTheme(String mode)async{
    await prefs.setString("mode", mode);
  }
  static String? getMode(){
    return prefs.getString("mode")??"light";
  }
}
