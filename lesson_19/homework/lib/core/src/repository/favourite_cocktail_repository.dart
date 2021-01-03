import 'dart:convert';
import 'dart:io';
import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:path_provider/path_provider.dart';

class FavouriteCocktailRepository {
  File _file;

  Future<Iterable<CocktailDefinition>> getAll() async {
    return _getCurrent().then(
      (value) {
        return value.values.map((it) => CocktailDefinition.fromJson(it));
      },
    );
  }

  Future setUp() async {
    Directory directory = await getApplicationDocumentsDirectory();
    _file = File(directory.path + '/coctails.json');

    if (!_file.existsSync()) {
      _file.create();
      _file.writeAsString('{}');
    }
  }

  Future add(String key, CocktailDefinition value) async {
    setUp();

    final data = await _getCurrent();
    data[key] = value;
    return _file.writeAsString(json.encode(data));
  }

  Future remove(String key) async {
    setUp();

    final data = await _getCurrent();
    data.remove(key);
    return _file.writeAsString(json.encode(data));
  }

  Future<Map> _getCurrent() async {
    final currentDataString = await _file?.readAsString();
    return json.decode(currentDataString) as Map;
  }
}
