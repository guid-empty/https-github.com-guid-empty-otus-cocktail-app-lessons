import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

abstract class BaseThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, AsyncCocktailRepository> {
  const BaseThunk();

  @override
  dynamic call(Store<AppState> store, AsyncCocktailRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, AsyncCocktailRepository repository);
}
