import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/src/model/cocktail_definition.dart';

part 'state.freezed.dart';

@freezed
abstract class FavoritesState implements _$FavoritesState {
  static const initState = FavoritesState();

  const FavoritesState._();

  const factory FavoritesState({
    @Default(<String, CocktailDefinition>{})
        Map<String, CocktailDefinition> favoritesMap,
  }) = _FavoritesState;

  bool isFavorites(String id) {
    return favoritesMap.containsKey(id);
  }
}
