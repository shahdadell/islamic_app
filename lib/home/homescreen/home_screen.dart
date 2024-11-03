import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/home/settings/setting_tab.dart';
import '../hadeth/hadeth_tap.dart';
import '../quran/quran_tab.dart';
import '../radio/radio_tap.dart';
import '../sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery2 = MediaQuery.of(context).size;
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          width: mediaQuery2.width,
          height: mediaQuery2.height,
          fit: BoxFit.cover,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.app_title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColor,
            ),
            child: BottomNavigationBar(
                currentIndex: selectedIndex,
                onTap: (index) {
                  selectedIndex = index;
                  setState(() {});
                },
                items: [
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      size: 30,
                      AssetImage("assets/images/quran1.png"),
                    ),
                    label: AppLocalizations.of(context)!.quran,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      size: 30,
                      AssetImage("assets/images/hadeth1.png"),
                    ),
                    label: AppLocalizations.of(context)!.hadeth,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      size: 30,
                      AssetImage("assets/images/radio1.png"),
                    ),
                    label: AppLocalizations.of(context)!.radio,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      size: 30,
                      AssetImage("assets/images/sebha1.png"),
                    ),
                    label: AppLocalizations.of(context)!.sebha,
                  ),
                  BottomNavigationBarItem(
                    icon: const ImageIcon(
                      size: 30,
                      AssetImage("assets/images/settings.png"),
                    ),
                    label: AppLocalizations.of(context)!.settings,
                  ),
                ]),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [
    QuranTab(),
    const HadethTap(),
    const RadioTap(),
    const SebhaTap(),
    const SettingTab()
  ];
}
