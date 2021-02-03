// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'looked_up_ingredient_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LookedUpIngredientDto _$LookedUpIngredientDtoFromJson(
    Map<String, dynamic> json) {
  return LookedUpIngredientDto(
    id: json['idIngredient'] as String,
    name: json['strIngredient'] as String,
    description: json['strDescription'] as String,
    lookedUpIngredientType: json['strType'] as String,
    isAlcohol: json['strAlcohol'] as String,
  );
}
