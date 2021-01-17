import 'dart:io';

import 'package:cocktail_app/extensions/string_extensions.dart';
import 'package:cocktail_app/core/models.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class DatabaseRepository {
  static const String _DATABASE_NAME = "cocktail_app_db";
  static const int _DATABASE_VERSION = 1;

  static const String _FAVORITES_TABLE_NAME = "FavoritesTable";
  static const String _COCKTAIL_ID_FIELD_NAME = "cocktail_id";
  static const String _COCKTAIL_NAME_FIELD_NAME = "cocktail_name";
  static const String _COCKTAIL_IMAGE_FIELD_NAME = "image_url";
  static const String _COCKTAIL_IS_FAVORITE_FIELD_NAME = "is_favorite";

  Database _db;

  Future initDb() async {
    final dataBasePath = await getDatabasesPath();
    await Directory(dataBasePath).create(recursive: true);
    final path = join(dataBasePath, _DATABASE_NAME);

    _db ??= await openDatabase(
        path,
        version: _DATABASE_VERSION,
        onCreate: _onCreateDataBase,
        onUpgrade: _onDataBaseUpgrade
    );
  }

  Future<Map<String, CocktailDefinition>> getAllFavorites() async {
    List<Map<String, dynamic>> result = await _db.query(_FAVORITES_TABLE_NAME);
    Map<String, CocktailDefinition> favorites = Map();

    for (Map<String, dynamic> row in result) {
      try {
        favorites[row[_COCKTAIL_ID_FIELD_NAME]] = _fromMapToClass(row);
      } catch(error) {
        print(error);
      }
    }
    return favorites;
  }

  Future removeFromFavorites(CocktailDefinition definition) async {
    await _db.delete(_FAVORITES_TABLE_NAME, where: '$_COCKTAIL_ID_FIELD_NAME = ?', whereArgs: [definition.id]);
  }

  Future addToFavorites(CocktailDefinition definition) async {
    Map<String, dynamic> row = _fromClassToMap(definition);
    await _db.insert(_FAVORITES_TABLE_NAME, row);
  }

  void _onDataBaseUpgrade(Database database, int oldVersion, int newVersion) async {}

  void _onCreateDataBase(Database newDatabase, int version) async {
    await newDatabase.execute('''
      create table $_FAVORITES_TABLE_NAME ( 
      $_COCKTAIL_ID_FIELD_NAME text primary key,
      $_COCKTAIL_IMAGE_FIELD_NAME text not null,
      $_COCKTAIL_IS_FAVORITE_FIELD_NAME text not null, 
      $_COCKTAIL_NAME_FIELD_NAME text not null)
    ''');
  }

  Map<String, dynamic> _fromClassToMap(CocktailDefinition definition) {
    return  {
      _COCKTAIL_ID_FIELD_NAME : definition.id,
      _COCKTAIL_NAME_FIELD_NAME : definition.name,
      _COCKTAIL_IMAGE_FIELD_NAME : definition.drinkThumbUrl,
      _COCKTAIL_IS_FAVORITE_FIELD_NAME : definition.isFavourite
    };
  }

  CocktailDefinition _fromMapToClass(Map<String, dynamic> map) {
    return CocktailDefinition(
        id: map[_COCKTAIL_ID_FIELD_NAME], 
        name: map[_COCKTAIL_NAME_FIELD_NAME], 
        drinkThumbUrl: map[_COCKTAIL_IMAGE_FIELD_NAME], 
        isFavourite: (map[_COCKTAIL_IS_FAVORITE_FIELD_NAME] as String).parseBool()
    );
  }
}