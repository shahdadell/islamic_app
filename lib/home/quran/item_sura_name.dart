import 'package:flutter/material.dart';
import 'package:islamic_app/home/quran/sura_details_screen.dart';

class ItemSuraName extends StatelessWidget {
  String name;

  int index;
  ItemSuraName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
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
            color:  Theme.of(context).primaryColor,
          ),
          // Expanded(
          //   child: Text(
          //     style: Theme.of(context).textTheme.titleMedium,
          //     textAlign: TextAlign.center,
          //   ),
          // ),
        ],
      ),
    );
  }
}
