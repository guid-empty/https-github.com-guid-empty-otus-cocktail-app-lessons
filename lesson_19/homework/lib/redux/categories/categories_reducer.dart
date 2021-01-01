import 'package:cocktail_app/redux/categories/categories_actions.dart';
import 'package:cocktail_app/redux/categories/categories_state.dart';
import 'package:redux/redux.dart';

final categoriesReducer = combineReducers<CategoriesState>([
  TypedReducer<CategoriesState, SetSelectedCocktailCategory>(_setCategory),
]);

CategoriesState _setCategory(
    CategoriesState state, SetSelectedCocktailCategory action) =>
    state.copyWith(selectedCategory: action.category);