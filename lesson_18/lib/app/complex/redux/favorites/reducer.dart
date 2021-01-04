import 'package:lesson_18/app/complex/core/src/model/cocktail_definition.dart';
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
      action.cocktail.id: action.cocktail,
    });
  }

  final newMap = <String, CocktailDefinition>{...state.favoritesMap}
    ..remove(action.cocktail.id);
  return state.copyWith(favoritesMap: newMap);
}
