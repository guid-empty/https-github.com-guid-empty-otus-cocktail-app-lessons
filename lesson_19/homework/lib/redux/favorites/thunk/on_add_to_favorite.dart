import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/base_thunks.dart';
import 'package:cocktail_app/redux/favorites/favorites_actions.dart';
import 'package:cocktail_app/repositories/db_repository.dart';
import 'package:redux/redux.dart';

class OnAddToFavorites extends BaseFavoritesThunk {

  final CocktailDefinition _definition;

  OnAddToFavorites(this._definition);

  @override
  Future<void> execute(Store<AppState> store, DatabaseRepository repository) async {
    try {
      await repository.addToFavorites(_definition);
      Map<String, CocktailDefinition> favorites = await repository.getAllFavorites();
      store.dispatch(SetFavorites(favorites));
    } catch(e) {
      print("Error : $e");
    }
  }
}