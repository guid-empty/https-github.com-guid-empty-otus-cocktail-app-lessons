import 'package:cocktail_app/redux/categories/categories_state.dart';
import 'package:cocktail_app/redux/coctails/cocktails_state.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(
    categoriesState: CategoriesState.initState,
    cocktailsState: CocktailsState.initState
  );

  const factory AppState({
    CategoriesState categoriesState,
    CocktailsState cocktailsState
  }) = _AppState;
}
