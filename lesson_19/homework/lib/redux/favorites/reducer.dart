import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/favorites/state.dart';
import 'package:redux/redux.dart';

import 'action.dart';
import 'state.dart';

final favoritesReducer = combineReducers<FavoritesState>([
  TypedReducer<FavoritesState, SetFavoritesAction>(_setFavorites),
]);

FavoritesState _setFavorites(FavoritesState state, SetFavoritesAction action) {
  if (action.isFavorites) {
    return state.copyWith(favoritesMap: <String, CocktailDefinition>{
      ...state.favoritesMap,
      action.cocktail.id: CocktailDefinition(id: action.cocktail.id, name:
      action.cocktail.name, drinkThumbUrl: action.cocktail.drinkThumbUrl,
          isFavourite: action.isFavorites),
    });
  }

  final newMap = <String, CocktailDefinition>{...state.favoritesMap}
    ..remove(action.cocktail.id);
  return state.copyWith(favoritesMap: newMap);
}
