import 'package:cocktail_app/redux/state.dart';
import 'favorites/reducer.dart';

AppState appReducer(AppState state, dynamic action) => AppState(
  favoriteState: favoritesReducer(state.favoriteState, action),
);