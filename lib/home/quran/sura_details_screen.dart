import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../my_theme.dart';
import 'item_sura_details.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "suradetails";
  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if(verses.isEmpty){
      loadFile(args.index);
    }
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
              args.name,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body: verses.isEmpty ?
          const Center(child: CircularProgressIndicator())
          :
          Container(
            margin: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width*0.05,
              vertical: MediaQuery.of(context).size.height*0.08,
            ),
            decoration: BoxDecoration(
                color: MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(24)
            ),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemSuraDetails(content: verses[index], index: index);
              },
              itemCount: verses.length,
            ),
          ),
        ),
      ],
    );
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    verses = lines;
    setState(() {

    });
  }
}

// data class
class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
