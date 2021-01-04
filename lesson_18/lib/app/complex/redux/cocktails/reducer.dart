import 'package:redux/redux.dart';

import 'action.dart';
import 'state.dart';

final cocktailsReducer = combineReducers<CocktailsState>([
  TypedReducer<CocktailsState, SetCocktailsAction>(_setCocktails),
]);

CocktailsState _setCocktails(CocktailsState state, SetCocktailsAction action) =>
    state.copyWith(cocktails: action.cocktails);
