// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'idIngredient',
    'strIngredient',
    'strDescription',
    'strType',
    'strAlcohol'
  ]);
  return Ingredient(
    id: json['idIngredient'] as String,
    name: json['strIngredient'] as String,
    description: json['strDescription'] as String,
    ingredientType: json['strType'] as String,
    isAlcoholic: yesNoToBool(json['strAlcohol'] as String) ?? false,
  );
}
