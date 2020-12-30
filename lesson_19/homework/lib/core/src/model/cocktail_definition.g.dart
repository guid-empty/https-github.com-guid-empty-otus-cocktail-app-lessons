// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cocktail_definition.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CocktailDefinitionAdapter extends TypeAdapter<_$CocktailDefinitionValue> {
  @override
  final int typeId = 0;

  @override
  _$CocktailDefinitionValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$CocktailDefinitionValue(
      id: fields[0] as String,
      name: fields[1] as String,
      drinkThumbUrl: fields[2] as String,
      isFavourite: fields[3] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, _$CocktailDefinitionValue obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.drinkThumbUrl)
      ..writeByte(3)
      ..write(obj.isFavourite);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CocktailDefinitionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CocktailDefinitionValue _$_$CocktailDefinitionValueFromJson(
    Map<String, dynamic> json) {
  return _$CocktailDefinitionValue(
    id: json['id'] as String,
    name: json['name'] as String,
    drinkThumbUrl: json['drinkThumbUrl'] as String,
    isFavourite: json['isFavourite'] as bool,
  );
}

Map<String, dynamic> _$_$CocktailDefinitionValueToJson(
        _$CocktailDefinitionValue instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'drinkThumbUrl': instance.drinkThumbUrl,
      'isFavourite': instance.isFavourite,
    };
