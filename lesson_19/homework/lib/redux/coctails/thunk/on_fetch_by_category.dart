import 'package:redux/redux.dart';

import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/base_thunks.dart';
import 'package:cocktail_app/redux/coctails/coctails_actions.dart';

class OnFetchCocktailsByCategory extends BaseCategoryThunk {
  final CocktailCategory category;

  const OnFetchCocktailsByCategory(this.category);

  @override
  Future<void> execute(
      Store<AppState> store, AsyncCocktailRepository repository) async {
    try {
      final res = await repository.fetchCocktailsByCocktailCategory(category);
      store.dispatch(SetCocktailsAction(res.toList()));
    } catch (e) {
      print(e);
    }
  }
}