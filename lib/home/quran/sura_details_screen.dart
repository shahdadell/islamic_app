import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../my_theme.dart';
import 'item_sura_details.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = "sura-detailers";
  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    if (verses.isEmpty) {
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
          body: verses.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Container(
                  margin: const EdgeInsets.only(
                      left: 30, right: 30, top: 30, bottom: 60),
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
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
                      color: MyTheme.whiteColor.withOpacity(0.8),
                      borderRadius: BorderRadius.circular(24)),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.play_circle,
                            size: 32,
                            color: Colors.black,
                          ),
                          const SizedBox(width: 6),
                          Text(
                            AppLocalizations.of(context)!.sura_name,
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                      Divider(
                        color: Theme.of(context).primaryColor,
                        thickness: 1.8,
                        endIndent: 30,
                        indent: 30,
                        height: 15,
                      ),
                      Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return ItemSuraDetails(
                                content: verses[index], index: index);
                          },
                          itemCount: verses.length,
                        ),
                      ),
                    ],
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
    setState(() {});
  }
}

// data class
class SuraDetailsArgs {
  String name;
  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
