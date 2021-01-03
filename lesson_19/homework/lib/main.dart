import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/middleware.dart';
import 'package:cocktail_app/redux/reducer.dart';
import 'package:cocktail_app/redux/state.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

void main() {
  runApp(CocktailOfDayApp());
}

final repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatefulWidget {
  @override
  State createState() => _CocktailOfDayApp();
}

class _CocktailOfDayApp extends State<CocktailOfDayApp> {
  static const String defaultRoute = '/home';
  Store<AppState> _appStoreHolder;
  Store<AppState> get _appStore {
    if (_appStoreHolder != null) {
      return _appStoreHolder;
    }

    final thunkMiddleware =
    _appStoreHolder ??= Store<AppState>(
      appReducer,
      initialState: AppState.initState,
      middleware: [LogMiddleware<AppState>()],
    );

    return _appStoreHolder;
  }

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: _appStore,
      child: MaterialApp(
        darkTheme: mainThemeData,
        themeMode: ThemeMode.dark,
        initialRoute: defaultRoute,
        routes: {
          defaultRoute: (context) => RandomCocktailPageWidget(repository),
        },
      ),
    );
  }
}
