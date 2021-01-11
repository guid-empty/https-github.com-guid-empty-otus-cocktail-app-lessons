// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_definition_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CocktailDefinitionDto _$CocktailDefinitionDtoFromJson(
    Map<String, dynamic> json) {
  return CocktailDefinitionDto(
    json['strDrink'] as String,
    json['strDrinkThumb'] as String,
    json['idDrink'] as String,
    json['strCategory'] as String,
  );
}

Map<String, dynamic> _$CocktailDefinitionDtoToJson(
        CocktailDefinitionDto instance) =>
    <String, dynamic>{
      'strDrink': instance.strDrink,
      'strDrinkThumb': instance.strDrinkThumb,
      'idDrink': instance.idDrink,
      'strCategory': instance.strCategory,
    };
