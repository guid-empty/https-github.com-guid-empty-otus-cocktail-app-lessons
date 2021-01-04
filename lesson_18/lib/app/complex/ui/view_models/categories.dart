import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/src/model/cocktail_category.dart';

part 'categories.freezed.dart';

@freezed
abstract class CategoriesViewModel with _$CategoriesViewModel {
  // TODO убрать, тут никогда не будет загрузки
  const factory CategoriesViewModel.loading() = Loading;

  const factory CategoriesViewModel.success({
    @Default(<CocktailCategory>[]) Iterable<CocktailCategory> categories,
    CocktailCategory selectedCategory,
  }) = Success;
}
