import 'package:cocktail_app/redux/base_thunk.dart';
import 'package:cocktail_app/redux/coctails/coctails_actions.dart';
import 'package:cocktail_app/redux/coctails/thunk/on_fetch_by_category.dart';
import 'package:redux/redux.dart';
import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/categories/categories_actions.dart';

class OnSelectCocktailCategory extends BaseThunk {
  final CocktailCategory category;

  const OnSelectCocktailCategory(this.category);

  @override
  Future<void> execute(Store<AppState> store, AsyncCocktailRepository repository) async {
    print("EXECUTE!");
    store.dispatch(SetCocktailsAction([]));
    store.dispatch(SetSelectedCocktailCategory(category));
    store.dispatch(OnFetchCocktailsByCategory(category));
  }
}