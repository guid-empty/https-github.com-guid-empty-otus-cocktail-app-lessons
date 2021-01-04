import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/src/model/cocktail_category.dart';

part 'state.freezed.dart';

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
