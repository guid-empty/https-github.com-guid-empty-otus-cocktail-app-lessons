import 'package:cocktail_app/core/models.dart';

class FavoritesStorage {
  static Map<String, CocktailDefinition> _cache = {};

  bool get isEmpty => _cache.isEmpty;

  bool get isNotEmpty => !isEmpty;

  void add(CocktailDefinition cocktailDefinition) {
    _cache[_createKey(cocktailDefinition)] = cocktailDefinition;
  }

  bool contains(CocktailDefinition cocktailDefinition) =>
      _cache.containsKey(_createKey(cocktailDefinition));

  void remove(CocktailDefinition cocktailDefinition) {
    final key = _createKey(cocktailDefinition);
    if (_cache.containsKey(key)) {
      _cache.remove(key);
    }
  }

  String _createKey(CocktailDefinition cocktailDefinition) =>
      cocktailDefinition.id;
}
