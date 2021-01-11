import 'package:cocktail_app/core/models.dart';
import 'package:mobx/mobx.dart';

part 'fav_store.g.dart';
class FavStore = _FavStore with _$FavStore;

abstract class _FavStore with Store{
  ObservableMap<String, Cocktail> favouriteCocktails = ObservableMap();

  @action
  void loadFavourites(){
    //todo init from file
  }

  void init(){
    autorun((_) {
      persistFavourites();
    });
  }

  @action
  void addToFavourites(Cocktail cocktail){
    favouriteCocktails[cocktail.id] = cocktail;
  }

  // bool isFavourite(CocktailDefinition cocktail){
  //   return favouriteCocktails.containsKey(cocktail.id);
  // }

  @action
  void removeFromFavourites(Cocktail cocktail){
    favouriteCocktails.remove(cocktail.id);
  }

  void persistFavourites() {
    //todo persist to file
  }
}