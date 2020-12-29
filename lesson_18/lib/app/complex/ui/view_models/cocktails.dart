import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/src/model/cocktail_definition.dart';

part 'cocktails.freezed.dart';

@freezed
abstract class CocktailsViewModel with _$CocktailsViewModel {
  const factory CocktailsViewModel.loading() = Loading;

  const factory CocktailsViewModel.success({
    List<CocktailDefinition> cocktails,
  }) = Success;
}
