import 'package:flutter/material.dart';

import 'custom_colors.dart';

final mainThemeData = ThemeData(
  canvasColor: CustomColors.background,
  backgroundColor: CustomColors.background,
  scaffoldBackgroundColor: CustomColors.background,
  textTheme: mainTextTheme,
  accentColor: Colors.lightGreen,
);

final mainTextTheme = TextTheme(
  subtitle1: TextStyle(color: CustomColors.headline1, fontSize: 14, fontWeight: FontWeight.normal),
  subtitle2: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
  caption: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.normal),
  bodyText1: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
  bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
  headline1: TextStyle(color: CustomColors.headline1, fontSize: 14, fontWeight: FontWeight.normal),
  headline2: TextStyle(color: CustomColors.headline2, fontSize: 13, fontWeight: FontWeight.normal),
  headline3: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
  headline4: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
  headline5: TextStyle(color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
  headline6: TextStyle(color: CustomColors.headline6, fontSize: 16, fontWeight: FontWeight.normal),
);
