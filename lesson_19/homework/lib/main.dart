import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/stores/favourite_cocktail/favourite_cocktail_list_store.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(CocktailOfDayApp());
}

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 0)).then((_) async {
        final dir = await getApplicationDocumentsDirectory();
        return Hive.init(dir.path);
      }),
      builder: (_, __) => MultiProvider(
          providers: [
            Provider<AsyncCocktailRepository>(
              create: (_) => AsyncCocktailRepository(),
              dispose: (_, value) => value.dispose(),
            ),
            Provider(
              create: (context) => FavouriteCocktailListStore.create(repository: context.read()),
            )
          ],
          child: MaterialApp(
            darkTheme: mainThemeData,
            themeMode: ThemeMode.dark,
            initialRoute: CocktailOfDayApp.defaultRoute,
            routes: {
              CocktailOfDayApp.defaultRoute: (context) => RandomCocktailPageWidget(context.watch()),
            },
          )),
    );
  }
}
