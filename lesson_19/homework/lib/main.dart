import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_reducer.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() {
  runApp(CocktailOfDayApp());
}

final repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';
  final Store<AppState> store = Store<AppState>(
      appReducer,
      initialState: AppState.initState,
      middleware: [
        ExtraArgumentThunkMiddleware<AppState, AsyncCocktailRepository>(AsyncCocktailRepository())
      ]
  );

  @override
  Widget build(BuildContext context) {
    return StoreProvider(
        store: store,
        child: MaterialApp(
          darkTheme: mainThemeData,
          themeMode: ThemeMode.dark,
          initialRoute: CocktailOfDayApp.defaultRoute,
          routes: {
            CocktailOfDayApp.defaultRoute: (context) => RandomCocktailPageWidget(repository),
          },
        )
    );
  }
}
