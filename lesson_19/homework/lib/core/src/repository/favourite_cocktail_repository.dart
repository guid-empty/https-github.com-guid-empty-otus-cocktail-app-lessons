import 'dart:convert';
import 'dart:io';

import 'package:cocktail_app/core/models.dart';
import 'package:path_provider/path_provider.dart';

class FavouriteCocktailRepository {
  File _file;

  Future<Iterable<CocktailDefinition>> getAll() async {
    setUp();
    return _getCurrent().then(
      (value) {
        return value.values.map((it) => CocktailDefinition.fromJson(it));
      },
    );
  }

  Future setUp() async {
    final directory = await getApplicationDocumentsDirectory();
    _file = File(directory.path + 'coctails.json');

    if (!_file.existsSync()) {
      _file.create();
      _file.writeAsString('{}');
    }
  }

  Future add(String key, CocktailDefinition value) async {
    setUp();

    final data = await _getCurrent();
    data[key] = value;
    _file.writeAsString(json.encode(data));
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
// Database _db;

//   final _table = 'coctails';

//   Future setUp() async {
//     final _dir = await getApplicationDocumentsDirectory();
//     final _path = _dir.path + '/coctails.db';

//     if (_db == null || !_db.isOpen) {
//       _db = await openDatabase(
//         _path,
//         version: 1,
//         onCreate: (Database db, int version) {
//           db.execute(
//               'CREATE TABLE coctails (id INTEGER PRIMARY KEY, name TEXT, drinkThumbUrl TEXT, isFavourite INTEGER)');
//         },
//       );
//     }
//   }

//   Future add(CocktailDefinition value) async {
//     if (_db == null || !_db.isOpen) setUp();
//     await _db.insert(_table, _toDbMap(value));
//   }

//   Future<Iterable<CocktailDefinition>> getFavourites() async {
//     final result =
//         await _db.query(_table, where: 'isFavourite = ?', whereArgs: [0]);
//     return result.map((e) => _fromDbMap(e));
//   }

//   Map _toDbMap(CocktailDefinition cocktailDefinition) {
//     final result = Map<String, dynamic>.of(cocktailDefinition.toJson());
//     result['id'] = int.parse(cocktailDefinition.id);
//     result['isFavourite'] = cocktailDefinition.isFavourite ? 1 : 0;
//   }

//   CocktailDefinition _fromDbMap(Map data) {
//     final result = Map<String, dynamic>.of(data);
//     result['id'] = data['id'].toString();
//     result['isFavourite'] = data['isFavourite'] == 1;
//     return CocktailDefinition.fromJson(result);
//   }
