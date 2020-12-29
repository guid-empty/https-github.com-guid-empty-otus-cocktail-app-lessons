import 'package:freezed_annotation/freezed_annotation.dart';

import '../../core/src/model/cocktail_definition.dart';

part 'state.freezed.dart';

@freezed
abstract class CocktailsState with _$CocktailsState {
  static const initState = CocktailsState();

  // TODO - Здесь нет кэширования. Как бы его можно было реализовать?
  const factory CocktailsState({
    @Default(<CocktailDefinition>[]) List<CocktailDefinition> cocktails,
  }) = _CocktailsState;
}
