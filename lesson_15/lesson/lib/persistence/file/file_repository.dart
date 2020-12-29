import 'dart:convert';
import 'dart:io';

import 'package:lesson/core/models.dart';
import 'package:lesson/persistence/repository.dart';
import 'package:path_provider/path_provider.dart';

class FileRepository extends Repository<Cocktail> {
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
