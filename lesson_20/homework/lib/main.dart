import 'package:flutter/material.dart';

import 'core/src/repository/async_cocktail_repository.dart';
import 'ui/pages/random_cocktail_page.dart';
import 'ui/style/theme.dart';

void main() {
  runApp(CocktailOfDayApp());
}

final repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: mainThemeData,
      themeMode: ThemeMode.dark,
      initialRoute: CocktailOfDayApp.defaultRoute,
      routes: {
        CocktailOfDayApp.defaultRoute: (context) =>
            RandomCocktailPageWidget(repository),
      },
    );
  }
}
