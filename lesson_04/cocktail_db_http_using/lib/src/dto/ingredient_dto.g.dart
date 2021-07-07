// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientDto _$IngredientDtoFromJson(Map<String, dynamic> json) {
  return IngredientDto(
    id: json['idIngredient'] as String,
    name: json['strIngredient'] as String,
    description: json['strDescription'] as String,
    ingredientType: json['strType'] as String,
    isAlcoholic: json['strAlcohol'] as String,
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
