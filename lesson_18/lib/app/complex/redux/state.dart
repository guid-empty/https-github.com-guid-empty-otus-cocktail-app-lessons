import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_18/app/complex/redux/favorites/state.dart';

import 'categories/state.dart';
import 'cocktails/state.dart';

part 'state.freezed.dart';

@freezed
abstract class AppState with _$AppState {
  static const initState = AppState(
    categoriesState: CategoriesState.initState,
    favoritesState: FavoritesState.initState,
    cocktailsState: CocktailsState.initState,
  );

  const factory AppState({
    CategoriesState categoriesState,
    FavoritesState favoritesState,
    CocktailsState cocktailsState,
  }) = _AppState;
}
