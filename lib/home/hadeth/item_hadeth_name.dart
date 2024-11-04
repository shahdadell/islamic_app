import 'package:flutter/material.dart';
import 'package:islamic_app/home/hadeth/hadeth_details_screen.dart';
import 'package:islamic_app/home/hadeth/hadeth_tap.dart';

class ItemHadethName extends StatelessWidget {
  Hadeth hadeth;
  ItemHadethName({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).pushNamed(
            HadethDetailsScreen.routeName,
            arguments: hadeth,
          );
        },
        child: Row(
          children: [
            Expanded(
              child: Text(
                hadeth.title,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
