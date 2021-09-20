import 'package:redux/redux.dart';

import 'package:cocktail_app/redux/favorites/favorites_actions.dart';
import 'package:cocktail_app/redux/favorites/favorites_state.dart';

final favoritesReducer = combineReducers<FavoritesState>([
  TypedReducer<FavoritesState, SetFavorites>(_setFavorites),
]);

FavoritesState _setFavorites(FavoritesState state, SetFavorites action) {
  return state.copyWith(favoritesMap: action.favorites);
}