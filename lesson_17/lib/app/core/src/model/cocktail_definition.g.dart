// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_definition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CocktailDefinition _$CocktailDefinitionFromJson(Map<String, dynamic> json) {
  return CocktailDefinition(
    id: json['id'] as String,
    name: json['name'] as String,
    drinkThumbUrl: json['drinkThumbUrl'] as String,
    isFavourite: json['isFavourite'] as bool,
  );
}

Map<String, dynamic> _$CocktailDefinitionToJson(CocktailDefinition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'drinkThumbUrl': instance.drinkThumbUrl,
      'isFavourite': instance.isFavourite,
    };
