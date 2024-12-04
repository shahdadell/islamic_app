import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../my_theme.dart';
import '../provider/app_config_provider.dart';

class ItemSuraDetails extends StatelessWidget {
  String content;
  int index;
  ItemSuraDetails({super.key, required this.content, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Padding(
      padding: const EdgeInsets.all(5),
      child: Text(
        '$content${{index + 1}}',
        textAlign: TextAlign.center,
        textDirection: TextDirection.rtl,
        style: provider.isLightMode()
            ? Theme.of(context).textTheme.titleSmall
            : Theme.of(context).textTheme.titleSmall!.copyWith(
                  color: MyTheme.yellowColors,
                ),
      ),
    );
  }
}
