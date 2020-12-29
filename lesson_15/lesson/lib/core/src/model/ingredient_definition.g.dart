// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ingredient_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IngredientDefinitionAdapter extends TypeAdapter<IngredientDefinition> {
  @override
  final int typeId = 7;

  @override
  IngredientDefinition read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return IngredientDefinition(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, IngredientDefinition obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.ingredientName)
      ..writeByte(1)
      ..write(obj.measure);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IngredientDefinitionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IngredientDefinition _$IngredientDefinitionFromJson(Map<String, dynamic> json) {
  return IngredientDefinition(
    json['ingredientName'] as String,
    json['measure'] as String,
  );
}

Map<String, dynamic> _$IngredientDefinitionToJson(
        IngredientDefinition instance) =>
    <String, dynamic>{
      'ingredientName': instance.ingredientName,
      'measure': instance.measure,
    };
