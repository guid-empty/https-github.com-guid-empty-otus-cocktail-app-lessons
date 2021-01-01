import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_reducer.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/favorites/favorites_state.dart';
import 'package:cocktail_app/repositories/db_repository.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  DatabaseRepository _dbRepository = DatabaseRepository();
  await _dbRepository.initDb();

  Map<String, CocktailDefinition> _favorites = await _dbRepository.getAllFavorites();

  runApp(CocktailOfDayApp(AsyncCocktailRepository(), _dbRepository, _favorites));
}

AsyncCocktailRepository repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';

  final AsyncCocktailRepository _serverRepository;
  final DatabaseRepository _dbRepository;
  final Map<String, CocktailDefinition> _initialFavorites;

  CocktailOfDayApp(this._serverRepository, this._dbRepository, this._initialFavorites);

  @override
  Widget build(BuildContext context) {
    final Store<AppState> store = Store<AppState>(
        appReducer,
        initialState: AppState.initState.copyWith(favoritesState: FavoritesState(favoritesMap: _initialFavorites)),
        middleware: [
          ExtraArgumentThunkMiddleware<AppState, AsyncCocktailRepository>(_serverRepository),
          ExtraArgumentThunkMiddleware<AppState, DatabaseRepository>(_dbRepository)
        ]
    );

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
