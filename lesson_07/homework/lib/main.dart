import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:cocktail/ui/filter_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          textTheme: TextTheme(
            headline1: TextStyle(
                color: CustomColors.headline1,
                fontSize: 14,
                fontWeight: FontWeight.normal),
            headline2: TextStyle(
                color: Colors.white,
                fontSize: 13,
                fontWeight: FontWeight.normal),
            headline3: TextStyle(
                color: Colors.white, fontSize: 10, fontWeight: FontWeight.normal),
            headline4: TextStyle(
                color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
            headline5: TextStyle(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal)
          )),
      home: CocktailsFilterScreen(),
    );
  }
}
