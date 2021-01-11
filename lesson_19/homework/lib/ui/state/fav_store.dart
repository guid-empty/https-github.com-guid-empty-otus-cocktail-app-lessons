import 'package:cocktail_app/core/models.dart';
import 'package:mobx/mobx.dart';

import 'local_cocktail_def_repo.dart';

part 'fav_store.g.dart';

class FavStore = _FavStore with _$FavStore;

abstract class _FavStore with Store {
  ObservableMap<String, CocktailDefinition> favouriteCocktails = ObservableMap();
  LocalCocktailDefinitionsRepository repository = LocalCocktailDefinitionsRepository();

  init() async {
    Map<String, CocktailDefinition> res = await repository.load();
    favouriteCocktails.addAll(res);
    // print("loaded: $favouriteCocktails");
  }

  void _persist() {
    repository.persist(favouriteCocktails);
    // print("persisted: $favouriteCocktails");
  }

  @action
  void addToFavourites(CocktailDefinition cocktail) {
    favouriteCocktails[cocktail.id] = cocktail;
    _persist();
  }

  bool isFavourite(String id) {
    return favouriteCocktails.containsKey(id);
  }

  @action
  void removeFromFavourites(CocktailDefinition cocktail) {
    favouriteCocktails.remove(cocktail.id);
    _persist();
  }
}
