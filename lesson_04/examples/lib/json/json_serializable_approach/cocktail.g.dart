// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cocktail _$CocktailFromJson(Map<String, dynamic> json) {
  $checkKeys(json, requiredKeys: const [
    'idDrink',
    'strDrink',
    'strCategory',
    'strAlcoholic',
    'strGlass'
  ]);
  return Cocktail(
    json['idDrink'] as String,
    json['strDrink'] as String,
    json['strCategory'] as String,
    json['strAlcoholic'] as String,
    json['strGlass'] as String,
  );
}

Map<String, dynamic> _$CocktailToJson(Cocktail instance) => <String, dynamic>{
      'idDrink': instance.id,
      'strDrink': instance.drink,
      'strCategory': instance.category,
      'strAlcoholic': instance.alcoholic,
      'strGlass': instance.glass,
    };
