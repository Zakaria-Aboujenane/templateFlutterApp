import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

List<dynamic> menus = [
  {
    "title": "Home",
    "route": "/",
    "leadingIcon": Icons.home,
    "trealingIcon": Icons.arrow_forward,
  },
  {
    "title": "Driver List",
    "route": "/drivers",
    "leadingIcon": Icons.drive_eta_rounded,
    "trealingIcon": Icons.arrow_forward,
  },
];
String appName = "GPS TRACKER";
String logoPNG = "assets/images/appLogo.png";

getTitle(titleName, context) {
  switch (titleName) {
    case "Home":
      return AppLocalizations.of(context)!.home;
    case "Driver List":
      return AppLocalizations.of(context)!.driversList;
    default :
      return "Empty";
  }
}
