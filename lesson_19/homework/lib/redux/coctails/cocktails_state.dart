import 'package:cocktail_app/core/models.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cocktails_state.freezed.dart';

@freezed
abstract class CocktailsState with _$CocktailsState {
  static const initState = CocktailsState();

  const factory CocktailsState({
    @Default(<CocktailDefinition>[]) List<CocktailDefinition> cocktails,
  }) = _CocktailsState;
}