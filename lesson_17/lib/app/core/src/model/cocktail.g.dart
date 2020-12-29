// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Cocktail _$CocktailFromJson(Map<String, dynamic> json) {
  return Cocktail(
    id: json['id'] as String,
    name: json['name'] as String,
    instruction: json['instruction'] as String,
    category:
        CocktailCategory.fromJson(json['category'] as Map<String, dynamic>),
    glassType: GlassType.fromJson(json['glassType'] as Map<String, dynamic>),
    cocktailType:
        CocktailType.fromJson(json['cocktailType'] as Map<String, dynamic>),
    ingredients: (json['ingredients'] as List)
        .map((e) => IngredientDefinition.fromJson(e as Map<String, dynamic>)),
    drinkThumbUrl: json['drinkThumbUrl'] as String,
    isFavourite: json['isFavourite'] as bool,
  );
}

Map<String, dynamic> _$CocktailToJson(Cocktail instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'instruction': instance.instruction,
      'category': instance.category,
      'glassType': instance.glassType,
      'cocktailType': instance.cocktailType,
      'ingredients': instance.ingredients.toList(),
      'drinkThumbUrl': instance.drinkThumbUrl,
      'isFavourite': instance.isFavourite,
    };
