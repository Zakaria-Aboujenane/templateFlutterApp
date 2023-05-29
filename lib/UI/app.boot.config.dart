import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gpstracker/UI/common/routing.app.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:gpstracker/UI/themes/CustomTheme.dart';

class AppBootConfig extends StatelessWidget {
  const AppBootConfig({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate, // Add this line
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'), // English
        Locale('fr'), // french
      ],

      home: RoutingApp(),
      debugShowCheckedModeBanner: false,
      theme: CustomThemes.themes[0],
    );
  }
}
