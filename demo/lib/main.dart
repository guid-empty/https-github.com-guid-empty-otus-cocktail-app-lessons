import 'package:demo/core/models.dart';
import 'package:demo/ui/cocktails/filter_page.dart';
import 'package:demo/ui/style/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: mainThemeData,
      themeMode: ThemeMode.dark,
      home: CocktailsFilterScreen(AsyncCocktailRepository()),
    );
  }
}
