import 'dart:io';

import 'package:cocktail_app/src/continue_to_cover_test_classes/utilites/http_service.dart';
import 'package:cocktail_app/src/core/models.dart';

class FavoritesStorage {
  final HttpService _httpService;

  final Map<String, CocktailDefinition> _cache = {};

  FavoritesStorage(this._httpService);

  bool get isEmpty => _cache.isEmpty;

  bool get isNotEmpty => !isEmpty;

  Future<bool> add(CocktailDefinition cocktailDefinition) async {
    _cache[_createKey(cocktailDefinition)] = cocktailDefinition;
    final result = await _httpService.get('some url to get Ok from server');
    return result == HttpResponse.ok;
  }

  bool contains(CocktailDefinition cocktailDefinition) => _cache.containsKey(_createKey(cocktailDefinition));

  Iterable<CocktailDefinition> getAll() => _cache.values;

  Future<bool> remove(CocktailDefinition cocktailDefinition) async {
    final key = _createKey(cocktailDefinition);
    if (_cache.containsKey(key)) {
      _cache.remove(key);
    }

    return Future.value(true);
  }

  String _createKey(CocktailDefinition cocktailDefinition) => cocktailDefinition.id;
}
