import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:lesson/core/models.dart';

class CustomCocktailAdapter extends TypeAdapter<Cocktail> {
  @override
  int get typeId => 1;

  @override
  Cocktail read(BinaryReader reader) {
    return Cocktail.fromJson(json.decode(reader.read()));
  }

  @override
  void write(BinaryWriter writer, Cocktail cocktail) {
    writer.write(json.encode(cocktail.toJson()));
  }
}
