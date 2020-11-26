import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:lesson/core/src/model/cocktail.dart';
import '../repository.dart';
import 'cocktail_adapter.dart';

class HiveCocktailRepository extends Repository<Cocktail> {

  @override
  Future add(String key, Cocktail value) {
    // TODO: implement add
    throw UnimplementedError();
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
  Future setUp() {
    // TODO: implement setUp
    throw UnimplementedError();
  }

  @override
  Future update(String key, Cocktail value) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
