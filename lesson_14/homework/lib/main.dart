import 'package:flutter/material.dart';
import 'package:homework/ui/favourite_cocktails_screen.dart';
import 'package:homework/ui/style/theme.dart';

import 'core/src/repository/async_cocktail_repository.dart';

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
      home: FavouriteCocktailsScreen(AsyncCocktailRepository()),
    );
  }
}
