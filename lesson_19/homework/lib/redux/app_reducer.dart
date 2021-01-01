import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/categories/categories_reducer.dart';
import 'package:cocktail_app/redux/coctails/cocktails_reducer.dart';
import 'package:cocktail_app/redux/favorites/favorites_reducer.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
  categoriesState: categoriesReducer(state.categoriesState, action),
  cocktailsState: cocktailsReducer(state.cocktailsState, action),
  favoritesState: favoritesReducer(state.favoritesState, action)
);