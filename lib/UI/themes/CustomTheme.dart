import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomThemes {
  static TextStyle errTextStyle=const TextStyle(
      fontSize: 22,color: Colors.red
  );
  static TextStyle titleTextStyle =  GoogleFonts.roboto(
    fontSize: 32,color: Colors.black
  );
  static Map<int, Color> primaryColors =
  {
    50:const Color.fromRGBO(41,50,65, .1),
    100:const Color.fromRGBO(41,50,65, .2),
    200:const Color.fromRGBO(41,50,65, .3),
    300:const Color.fromRGBO(41,50,65, .4),
    400:const Color.fromRGBO(41,50,65, .5),
    500:const Color.fromRGBO(41,50,65, .6),
    600:const Color.fromRGBO(41,50,65, .7),
    700:const Color.fromRGBO(41,50,65, .8),
    800:const Color.fromRGBO(41,50,65, .9),
    900:const Color.fromRGBO(41,50,65, 1),
  };

  static List<ThemeData> themes =[
    ThemeData(
      primaryColor: MaterialColor(primaryColors[800]!.value, primaryColors),
        appBarTheme: AppBarTheme(
          color:  MaterialColor(primaryColors[700]!.value, primaryColors),
        ),
        textTheme:const TextTheme(
          headline1: TextStyle(color: Colors.deepPurpleAccent),
          headline2: TextStyle(color: Colors.deepPurpleAccent),
          headline4: TextStyle(color: Colors.white),
          headline5: TextStyle(color: Colors.white),
          headline6: TextStyle(color: Colors.black),
          bodyText2: TextStyle(color: Colors.deepPurpleAccent),
          subtitle1: TextStyle(color: Colors.pinkAccent),
        ),

      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(
        color: Colors.white,
        size: 32,
      )
    ),
    ThemeData(primarySwatch: Colors.deepOrange),
  ];
}