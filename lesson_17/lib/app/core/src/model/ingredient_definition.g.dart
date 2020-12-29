// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientDefinition _$IngredientDefinitionFromJson(Map<String, dynamic> json) {
  return IngredientDefinition(
    json['ingredientName'] as String,
    json['measure'] as String,
  );
}

Map<String, dynamic> _$IngredientDefinitionToJson(
        IngredientDefinition instance) =>
    <String, dynamic>{
      'ingredientName': instance.ingredientName,
      'measure': instance.measure,
    };
