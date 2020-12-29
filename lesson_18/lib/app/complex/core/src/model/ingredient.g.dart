// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ingredient _$IngredientFromJson(Map<String, dynamic> json) {
  return Ingredient(
    id: json['id'] as String,
    name: json['name'] as String,
    description: json['description'] as String,
    ingredientType: json['ingredientType'] as String,
    isAlcoholic: json['isAlcoholic'] as bool,
  );
}

Map<String, dynamic> _$IngredientToJson(Ingredient instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'ingredientType': instance.ingredientType,
      'isAlcoholic': instance.isAlcoholic,
    };
