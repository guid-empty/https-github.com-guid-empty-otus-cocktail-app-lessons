import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/favorites/favorites_view_model.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_add_to_favorite.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_remove_from_favorites.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FavoriteButton extends StatelessWidget {
  final CocktailDefinition _definition;

  FavoriteButton(this._definition);

  @override
  Widget build(BuildContext context) {
    final appStore = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, FavoritesViewModel>(
        converter: (Store<AppState> store) {
          return store.state.favoritesState.isFavorites(_definition.id)
              ? FavoritesViewModel.favorite()
              : FavoritesViewModel.not();
        },
        builder: (context, viewModel) => viewModel.when(
            favorite: () => IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                appStore.dispatch(OnRemoveFromFavorites(_definition));
              },
            ),
            not: () => IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                appStore.dispatch(OnAddToFavorites(_definition));
              },
            )
        )
    );
  }
}
