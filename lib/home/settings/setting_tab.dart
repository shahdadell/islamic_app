import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamic_app/home/settings/language_bottom_sheet.dart';
import 'package:islamic_app/home/settings/theme_bottom_sheet.dart';
import 'package:provider/provider.dart';
import '../../my_theme.dart';
import '../provider/app_config_provider.dart';

class SettingTab extends StatefulWidget {
  const SettingTab({super.key});

  @override
  State<SettingTab> createState() => _SettingTabState();
}

class _SettingTabState extends State<SettingTab> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);

    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              showLanguageBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.appLanguage == "en"
                        ? AppLocalizations.of(context)!.english
                        : AppLocalizations.of(context)!.arabic,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.arrow_drop_down,
                    size: 30,
                    color: provider.isLightMode()?
                    MyTheme.primaryDark:
                    MyTheme.yellowColors,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 15),
          InkWell(
            onTap: () {
              showThemeBottomSheet();
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    provider.isLightMode()
                        ? AppLocalizations.of(context)!.light
                        : AppLocalizations.of(context)!.dark,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Icon(Icons.arrow_drop_down,
                    size: 30,
                    color: provider.isLightMode()?
                    MyTheme.primaryDark:
                    MyTheme.yellowColors,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const LanguageBottomSheet(),
    );
  }
  void showThemeBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const ThemeBottomSheet(),
    );
  }
}
