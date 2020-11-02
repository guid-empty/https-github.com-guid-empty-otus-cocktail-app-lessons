// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientDto _$IngredientDtoFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'idIngredient',
    'strIngredient',
    'strDescription',
    'strType',
    'strAlcohol'
  ]);
  return IngredientDto(
    id: json['idIngredient'] as String,
    name: json['strIngredient'] as String,
    description: json['strDescription'] as String,
    ingredientType: json['strType'] as String,
    isAlcoholic: json['strAlcohol'] as String,
  );
}
