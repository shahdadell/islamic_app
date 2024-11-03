import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/radio.png"),
          const SizedBox(height: 20),
          Text(
            AppLocalizations.of(context)!.holy_quran_radio,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 30),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.skip_next,
                size: 50,
                color: Color(0xffB7935F),
              ),
              Icon(
                Icons.play_arrow,
                size: 60,
                color: Color(0xffB7935F),
              ),
              Icon(
                Icons.skip_previous,
                size: 50,
                color: Color(0xffB7935F),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
