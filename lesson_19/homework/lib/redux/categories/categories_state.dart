import 'package:cocktail_app/core/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



part 'categories_state.freezed.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {
  static const initState = CategoriesState(
    categories: CocktailCategory.values,
    selectedCategory: CocktailCategory.ordinaryDrink,
  );

  const factory CategoriesState({
    @Default(<CocktailCategory>[]) Iterable<CocktailCategory> categories,
    CocktailCategory selectedCategory,
  }) = _CategoriesState;
}