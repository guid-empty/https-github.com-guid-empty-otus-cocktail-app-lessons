import 'package:cocktail_app/redux/coctails/cocktails_state.dart';
import 'package:cocktail_app/redux/coctails/coctails_actions.dart';
import 'package:redux/redux.dart';

final cocktailsReducer = combineReducers<CocktailsState>([
  TypedReducer<CocktailsState, SetCocktailsAction>(_setCocktails),
]);

CocktailsState _setCocktails(CocktailsState state, SetCocktailsAction action) =>
    state.copyWith(cocktails: action.cocktails);
