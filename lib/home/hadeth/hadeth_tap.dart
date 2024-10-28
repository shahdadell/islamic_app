import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamic_app/home/hadeth/item_hadeth_name.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> ahadethList = [];

  @override
  Widget build(BuildContext context) {
    if (ahadethList.isEmpty) {
      loadHadethFile();
    }
    return Center(
      child: Column(
        children: [
          Image.asset("assets/images/hadith_header2.png"),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
            endIndent: 5,
            indent: 5,
          ),
          Text(
            "Hadeth Name",
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Divider(
            color: Theme.of(context).primaryColor,
            thickness: 3,
            endIndent: 5,
            indent: 5,
          ),
          ahadethList.isEmpty
              ? Center(
                  child: CircularProgressIndicator(
                    color: Theme.of(context).primaryColor,
                  ),
                )
              : Expanded(
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 3,
                        endIndent: 5,
                        indent: 5,
                      );
                    },
                    itemCount: ahadethList.length,
                    itemBuilder: (context, index) {
                      return ItemHadethName( hadeth: ahadethList[index],);
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
