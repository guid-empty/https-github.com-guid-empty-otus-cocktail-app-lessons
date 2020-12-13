// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CocktailAdapter extends TypeAdapter<Cocktail> {
  @override
  final int typeId = 1;

  @override
  Cocktail read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Cocktail(
      id: fields[0] as String,
      name: fields[1] as String,
      instruction: fields[2] as String,
      category: fields[3] as CocktailCategory,
      glassType: fields[4] as GlassType,
      cocktailType: fields[5] as CocktailType,
      ingredients: (fields[6] as List)?.cast<IngredientDefinition>(),
      drinkThumbUrl: fields[7] as String,
      isFavourite: fields[8] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Cocktail obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.instruction)
      ..writeByte(3)
      ..write(obj.category)
      ..writeByte(4)
      ..write(obj.glassType)
      ..writeByte(5)
      ..write(obj.cocktailType)
      ..writeByte(6)
      ..write(obj.ingredients?.toList())
      ..writeByte(7)
      ..write(obj.drinkThumbUrl)
      ..writeByte(8)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CocktailAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
