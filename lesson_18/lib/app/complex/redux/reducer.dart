import 'categories/reducer.dart';
import 'cocktails/reducer.dart';
import 'favorites/reducer.dart';
import 'state.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
      categoriesState: categoriesReducer(state.categoriesState, action),
      favoritesState: favoritesReducer(state.favoritesState, action),
      cocktailsState: cocktailsReducer(state.cocktailsState, action),
    );
