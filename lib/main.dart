import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/home/provider/app_config_provider.dart';
import 'package:islamic_app/shared_pref/pref_helper.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'home/hadeth/hadeth_details_screen.dart';
import 'home/homescreen/home_screen.dart';
import 'home/quran/sura_details_screen.dart';
import 'home/splash/splash_screen.dart';
import 'my_theme.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  PrefHelper.prefs = await SharedPreferences.getInstance();

  runApp(
      ChangeNotifierProvider<AppConfigProvider>(
    create: (context) => AppConfigProvider()..init(),
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
   var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => const SplashScreen(),
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => const HadethDetailsScreen(),
      },
      theme: MyTheme.lightTheme,
      themeMode: provider.appTheme,
      darkTheme: MyTheme.darkTheme,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
