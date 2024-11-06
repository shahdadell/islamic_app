import 'package:flutter/material.dart';
import 'package:islamic_app/home/quran/sura_details_screen.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';
import '../provider/app_config_provider.dart';

class ItemSuraName extends StatelessWidget {
  String name;
  String num;
  int index;
  ItemSuraName(
      {super.key, required this.name, required this.index, required this.num});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(
          SuraDetailsScreen.routeName,
          arguments: SuraDetailsArgs(name: name, index: index),
        );
      },
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: Theme.of(context).textTheme.titleSmall,
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 1.5,
            height: 45,
            color: provider.isLightMode()
                ? Theme.of(context).primaryColor
                : MyTheme.yellowColors,
          ),
          Expanded(
            child: Text(
              num,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
