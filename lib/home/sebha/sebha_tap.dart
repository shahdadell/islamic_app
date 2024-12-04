import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../my_theme.dart';
import '../provider/app_config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SebhaTap extends StatefulWidget {
  const SebhaTap({super.key});

  @override
  State<SebhaTap> createState() => _SebhaTapState();
}

class _SebhaTapState extends State<SebhaTap> {
  int tasbehCounter = 0;
  List<String> azkar = [
    "سبحان الله",
    "الحمد لله",
    "الله أكبر",
    "لا اله الا الله",
  ];
  double angle = 0;
  int azkarCounter = 0;

  @override
  Widget build(BuildContext context) {
    var mediaQuery2 = MediaQuery.of(context).size;
    var provider = Provider.of<AppConfigProvider>(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 95),
            child: Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  top: -77,
                  child: Padding(
                    padding: EdgeInsets.only(left: mediaQuery2.width * 0.1),
                    child: provider.isLightMode()
                        ? Image.asset(
                            "assets/images/head_sebha_logo.png",
                          )
                        : Image.asset(
                            "assets/images/head_sebha_dark.png",
                          ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    TasbehLogic();
                  },
                  child: Transform.rotate(
                    angle: angle,
                    child: provider.isLightMode()
                        ? Image.asset(
                            "assets/images/body_sebha_logo.png",
                          )
                        : Image.asset(
                            "assets/images/body_sebha_dark.png",
                          ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30),
          Text(
            AppLocalizations.of(context)!.number_of_hymns,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontSize: 28,
                ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 22),
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
                color: provider.isLightMode()
                    ? MyTheme.primaryLight.withOpacity(0.8)
                    : MyTheme.primaryDark.withOpacity(0.8),
                borderRadius: BorderRadius.circular(25)),
            child: Text(tasbehCounter.toString(),
                style: Theme.of(context).textTheme.bodySmall),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              TasbehLogic();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: provider.isLightMode()
                  ? MyTheme.primaryLight.withOpacity(0.8)
                  : MyTheme.yellowColors.withOpacity(0.8),
            ),
            child: Text(azkar[azkarCounter],
                style: Theme.of(context).textTheme.bodyMedium),
          ),
          const SizedBox(height: 50),
        ],
      ),
    );
  }

  void TasbehLogic() {
    if (tasbehCounter == 33) {
      tasbehCounter = 0;
      if (azkarCounter == 3) {
        azkarCounter = 0;
      } else {
        azkarCounter++;
      }
    } else {
      tasbehCounter++;
    }
    angle+=1;
    setState(() {});
  }
}
