import 'package:flutter/material.dart';

final filterPageThemeData = ThemeData(
  fontFamily: 'SFProText',
  textTheme: TextTheme(
    subtitle1: const TextStyle(
      color: Colors.white,
      fontSize: 13,
    ),
  ),
  cursorColor: Colors.white,
  outlinedButtonTheme: OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 14,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      side: const BorderSide(
        width: 1,
        color: const Color(0xff2D2C39),
      ),
      primary: Colors.white,
      textStyle: const TextStyle(fontSize: 15, height: 15 / 18),
      backgroundColor: const Color(0xff201F2C),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(color: Colors.white),
    ),
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 11),
    fillColor: const Color(0xff181723),
    filled: true,
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: const TextStyle(
      fontFamily: 'SfPro',
      fontWeight: FontWeight.w200,
      fontSize: 13,
      color: Colors.white,
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: const Color(0xff464551),
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: const Color(0xff464551),
      ),
      borderRadius: BorderRadius.circular(30),
    ),
  ),
);
