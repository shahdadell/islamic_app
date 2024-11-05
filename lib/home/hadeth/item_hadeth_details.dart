import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../my_theme.dart';
import '../provider/app_config_provider.dart';

class ItemHadethDetails extends StatelessWidget {
  String content;

  ItemHadethDetails({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Text(
        content,
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: provider.isLightMode()
            ? Theme.of(context).textTheme.titleMedium
            : Theme.of(context).textTheme.titleMedium!.copyWith(
          color: MyTheme.yellowColors,
        ),      ),
    );
  }
}
