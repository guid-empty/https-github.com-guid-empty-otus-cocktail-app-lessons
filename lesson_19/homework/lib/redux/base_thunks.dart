import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/repositories/db_repository.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

abstract class BaseCategoryThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, AsyncCocktailRepository> {
  const BaseCategoryThunk();

  @override
  dynamic call(Store<AppState> store, AsyncCocktailRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, AsyncCocktailRepository repository);
}

abstract class BaseFavoritesThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, DatabaseRepository> {
  const BaseFavoritesThunk();

  @override
  dynamic call(Store<AppState> store, DatabaseRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, DatabaseRepository repository);
}

