import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:lesson_16/app/core/models.dart';
import 'package:lesson_16/app/repository/favorites_repository.dart';

class FavoritesViewModel extends ChangeNotifier {
  FavoritesViewModel(this.repository);

  final FavoritesRepository repository;

  List<CocktailDefinition> _favorites = [];
  List<CocktailDefinition> get favorites => _favorites;

  void fetch() {
    repository.fetchFavorites().then((favorites) {
      _favorites = favorites;
      print('favorites:${favorites.length}');
      notifyListeners();
    });
  }

  void addToFavorites(CocktailDefinition cocktailDefinition) {
    _favorites.add(cocktailDefinition);
    notifyListeners();
    repository.addToFavorites(cocktailDefinition);
  }

  void removeFromFavorites(String id) {
    _favorites.removeWhere((element) => element.id == id);
    notifyListeners();
    repository.removeFromFavorites(id);

  }

  bool isSelected(String id) => _favorites.any((element) => element.id == id);
}
