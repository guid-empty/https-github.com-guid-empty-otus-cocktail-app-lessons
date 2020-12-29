import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';

import '../core/src/repository/cocktail_repository.dart';
import 'state.dart';

abstract class BaseThunk
    implements
        CallableThunkActionWithExtraArgument<AppState, CocktailRepository> {
  const BaseThunk();

  @override
  dynamic call(Store<AppState> store, CocktailRepository repository) =>
      execute(store, repository);

  Future<void> execute(Store<AppState> store, CocktailRepository repository);
}
