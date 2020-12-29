import 'package:json_annotation/json_annotation.dart';

///
/// Ingredient definition used to describe Cocktail instruction depending on measurement
///

part 'ingredient_definition.g.dart';

@JsonSerializable()
class IngredientDefinition {
  final String ingredientName;
  final String measure;

  IngredientDefinition(this.ingredientName, this.measure);

  factory IngredientDefinition.fromJson(Map<String, dynamic> json) =>
      _$IngredientDefinitionFromJson(json);

  Map<String, dynamic> toJson() => _$IngredientDefinitionToJson(this);
}
