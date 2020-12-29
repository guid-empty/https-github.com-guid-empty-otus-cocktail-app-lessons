import 'package:cocktail_app/src/core/models.dart';

class FavoritesStorage {
  final Map<String, CocktailDefinition> _cache = {};

  bool get isEmpty => _cache.isEmpty;

  bool get isNotEmpty => !isEmpty;

  void add(CocktailDefinition cocktailDefinition) {
    _cache[_createKey(cocktailDefinition)] = cocktailDefinition;
  }

  bool contains(CocktailDefinition cocktailDefinition) => _cache.containsKey(_createKey(cocktailDefinition));

  Iterable<CocktailDefinition> getAll() => _cache.values;

  Future<bool> remove(CocktailDefinition cocktailDefinition) async {
    final key = _createKey(cocktailDefinition);
    if (_cache.containsKey(key)) {
      await _checkDefinition(cocktailDefinition);
      _cache.remove(key);
    }

    return Future.value(true);
  }

  Future<void> _checkDefinition(CocktailDefinition cocktailDefinition) {
    print(cocktailDefinition);
    return Future.delayed(Duration(seconds: 11));
  }

  String _createKey(CocktailDefinition cocktailDefinition) => cocktailDefinition.id;
}
