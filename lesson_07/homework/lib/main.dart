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
          backgroundColor: const Color.fromARGB(255, 26, 25, 38),
          textTheme: TextTheme(
              subtitle2: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  height: 18.0 / 15),
              headline6: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  height: 17.0 / 14),
              bodyText1: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  height: 18.0 / 13),
              bodyText2: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  height: 12.0 / 10))),
      home: CocktailsFilterScreen(),
    );
  }
}
