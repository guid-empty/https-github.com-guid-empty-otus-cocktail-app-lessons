import 'package:redux/redux.dart';

import 'action.dart';
import 'state.dart';

final categoriesReducer = combineReducers<CategoriesState>([
  TypedReducer<CategoriesState, SetSelectedCocktailCategory>(_setCategory),
]);

CategoriesState _setCategory(
        CategoriesState state, SetSelectedCocktailCategory action) =>
    state.copyWith(selectedCategory: action.category);
