import 'package:freezed_annotation/freezed_annotation.dart';
import '../../core/src/model/cocktail_definition.dart';
part 'favorites.freezed.dart';

@freezed
abstract class FavoritesViewModel with _$FavoritesViewModel {
  const factory FavoritesViewModel.loading() = Loading;

  const factory FavoritesViewModel.success({
    List<CocktailDefinition> cocktails,
  }) = Success;

  const factory FavoritesViewModel.empty() = Empty;
}