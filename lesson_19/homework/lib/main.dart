import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/state/fav_store.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final favStore = FavStore();

void main() async {
  runApp(CocktailOfDayApp());
}

final repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: favStore.init(),
        builder: (context, snapshot) {
          return Provider(
            create: (_) => favStore,
            child: MaterialApp(
              darkTheme: mainThemeData,
              themeMode: ThemeMode.dark,
              initialRoute: CocktailOfDayApp.defaultRoute,
              routes: {
                CocktailOfDayApp.defaultRoute: (context) => RandomCocktailPageWidget(repository),
              },
            ),
          );
        });
  }
}
