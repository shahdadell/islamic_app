import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/home/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import '../../my_theme.dart';
import '../provider/app_config_provider.dart';

class HadethTap extends StatefulWidget {
  const HadethTap({super.key});

  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadith_header2.png"),
          Divider(
            color: provider.isLightMode()
                ? Theme.of(context).primaryColor
                : MyTheme.yellowColors,
            thickness: 1.6,
            endIndent: 10,
            indent: 10,
            height: 5,
          ),
          Text(
            AppLocalizations.of(context)!.hadeth_name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: provider.isLightMode()
                ? Theme.of(context).primaryColor
                : MyTheme.yellowColors,
            thickness: 1.8,
            endIndent: 10,
            indent: 10,
            height: 5,
          ),
          ahadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    itemCount: ahadethList.length,
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider(
                        color: provider.isLightMode()
                            ? Theme.of(context).primaryColor
                            : MyTheme.yellowColors,
                        thickness: 1.8,
                        endIndent: 60,
                        indent: 60,
                        height: 5,
                      );
                    },
                    itemBuilder: (context, index) {
                      return ItemHadethName(
                        hadeth: ahadethList[index],
                      );
                    },
                  ),
                ),
        ],
      ),
    );
  }

  void loadHadethFile() async {
    String ahadethContent =
        await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> hadethList = ahadethContent.split('#\r\n');
    for (int i = 0; i < hadethList.length; i++) {
      print(hadethList[i]);
      List<String> hadethLines = hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
      setState(() {});
    }
  }
}

//data class
class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
