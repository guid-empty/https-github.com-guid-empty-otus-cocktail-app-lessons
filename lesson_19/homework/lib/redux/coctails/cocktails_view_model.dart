import 'package:cocktail_app/core/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktails_view_model.freezed.dart';

@freezed
abstract class CocktailsViewModel with _$CocktailsViewModel {
  const factory CocktailsViewModel.loading() = Loading;

  const factory CocktailsViewModel.success({
    List<CocktailDefinition> cocktails,
    CocktailCategory selectedCategory
  }) = Success;
}