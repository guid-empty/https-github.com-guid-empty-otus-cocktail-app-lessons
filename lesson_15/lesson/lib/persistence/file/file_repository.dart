import 'dart:convert';
import 'dart:io';

import 'package:lesson/core/models.dart';
import 'package:lesson/persistence/repository.dart';
import 'package:path_provider/path_provider.dart';

class FileRepository extends Repository<Cocktail> {
  File _file;

  @override
  Future add(String key, Cocktail value) async {
    final stringData = json.encode(value.toJson());
    var currentData = _getCurrent() as Map;
    currentData[key] = value;
    return _file.writeAsString(json.encode(currentData));
  }

  @override
  Future addAll(Iterable<Cocktail> values) {
    // TODO: implement addAll
    throw UnimplementedError();
  }

  @override
  Future get(String key) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future<Iterable<Cocktail>> getAll() {
    // TODO: implement getAll
    throw UnimplementedError();
  }

  @override
  Future<Iterable<Cocktail>> getFavourites() {
    // TODO: implement getFavourites
    throw UnimplementedError();
  }

  @override
  Future remove(String key) {
    // TODO: implement remove
    throw UnimplementedError();
  }

  @override
  Future setUp() async {
    Directory directory = await getApplicationDocumentsDirectory();
    _file = File((directory.path + '/cocktail.json'));
    if(!_file.existsSync()) {
      _file.create(recursive: true);
      _file.writeAsString('{}');
    }
  }

  @override
  Future update(String key, Cocktail value) {
    // TODO: implement update
    throw UnimplementedError();
  }

  Future _getCurrent() async {
    final currentDataString = await _file.readAsString();
    return json.decode(currentDataString) as Map;
  }

}
