import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../my_theme.dart';
import 'hadeth_tap.dart';
import 'item_hadeth_details.dart';

class HadethDetailsScreen extends StatefulWidget {
  static const String routeName = "hadeth-detailers";
  const HadethDetailsScreen({super.key});


  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
              args.title,
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          body:Container(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.play_circle,
                      size: 32,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 6),
                    Text(
                      AppLocalizations.of(context)!.hadeth_name,
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
                      return ItemHadethDetails(content: args.content[index]);
                    },
                    itemCount: args.content.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
