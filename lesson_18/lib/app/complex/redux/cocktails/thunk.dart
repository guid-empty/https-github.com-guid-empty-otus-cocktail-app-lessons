import 'package:redux/redux.dart';

import '../../core/src/model/cocktail_category.dart';
import '../../core/src/repository/cocktail_repository.dart';
import '../base_thunk.dart';
import '../categories/action.dart';
import '../state.dart';
import 'action.dart';

class OnSelectCocktailCategory extends BaseThunk {
  final CocktailCategory category;

  const OnSelectCocktailCategory(this.category);

  @override
  Future<void> execute(
      Store<AppState> store, CocktailRepository repository) async {
    store.dispatch(SetCocktailsAction([]));
    store.dispatch(SetSelectedCocktailCategory(category));
    store.dispatch(OnFetchCocktailsByCategory(category));
  }
}

class OnFetchCocktailsByCategory extends BaseThunk {
  final CocktailCategory category;

  const OnFetchCocktailsByCategory(this.category);

  @override
  Future<void> execute(
      Store<AppState> store, CocktailRepository repository) async {
    try {
      final res = await repository.fetchCocktailsByCocktailCategory(category);
      store.dispatch(SetCocktailsAction(res.toList()));
    } catch (e) {
      print(e);
      // handle error
    }
  }
}
