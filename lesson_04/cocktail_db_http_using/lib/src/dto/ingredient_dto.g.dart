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
    'strType'
  ]);
  return IngredientDto(
    json['idIngredient'] as String,
    json['strIngredient'] as String,
    json['strDescription'] as String,
    json['strType'] as String,
    json['strAlcohol'] as bool,
  );
}

Map<String, dynamic> _$IngredientDtoToJson(IngredientDto instance) =>
    <String, dynamic>{
      'idIngredient': instance.id,
      'strIngredient': instance.name,
      'strDescription': instance.description,
      'strType': instance.ingredientType,
      'strAlcohol': instance.isAlcoholic,
    };
