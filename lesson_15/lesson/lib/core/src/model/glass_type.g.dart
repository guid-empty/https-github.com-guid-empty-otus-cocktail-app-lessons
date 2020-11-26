// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'glass_type.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GlassTypeAdapter extends TypeAdapter<GlassType> {
  @override
  final int typeId = 5;

  @override
  GlassType read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GlassType(
      fields[0] as String,
      fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, GlassType obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.value)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GlassTypeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
