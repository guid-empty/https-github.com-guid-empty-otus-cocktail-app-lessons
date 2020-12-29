import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:lesson/core/models.dart';
import 'package:lesson/persistence/repository.dart';

class SecureStorageRepository extends Repository<Cocktail> {
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
