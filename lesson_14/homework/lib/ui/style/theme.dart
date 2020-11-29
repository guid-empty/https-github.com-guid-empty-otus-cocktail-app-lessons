import 'package:flutter/material.dart';

import 'colors.dart';

final mainThemeData = ThemeData(
    backgroundColor: CustomColors.background,
    scaffoldBackgroundColor: CustomColors.background,
    textTheme: mainTextTheme);

final mainTextTheme = TextTheme(
    headline1: TextStyle(
        color: CustomColors.headline1,
        fontSize: 14,
        fontWeight: FontWeight.normal),
    headline2: TextStyle(
        color: Colors.white,
        fontSize: 13,
        fontWeight: FontWeight.normal),
    headline3: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
    headline4: TextStyle(
        color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
    headline5: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
    subtitle1: TextStyle(
        color: CustomColors.headline1,
        fontSize: 14,
        fontWeight: FontWeight.normal),
    subtitle2: TextStyle(
        color: Colors.white, fontSize: 13, fontWeight: FontWeight.normal),
    caption: TextStyle(
        color: Colors.white, fontSize: 10, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(
        color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
    bodyText2: TextStyle(
        color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal));
