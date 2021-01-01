import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/favorites/favorites_view_model.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_add_to_favorite.dart';
import 'package:cocktail_app/redux/favorites/thunk/on_remove_from_favorites.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

class CocktailTitle extends StatelessWidget {
  final CocktailDefinition definition;
  final String cocktailTitle;
  final bool isFavorite;

  CocktailTitle({this.cocktailTitle, this.isFavorite, this.definition});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cocktailTitle ?? '',
          style: Theme.of(context).textTheme.headline3,
        ),
        _getIsFavoriteIcon(context)
      ]
    );
  }

  Widget _getIsFavoriteIcon(BuildContext context) {
    final appStore = StoreProvider.of<AppState>(context);
    print(appStore.state.favoritesState.favoritesMap);
    return StoreConnector<AppState, FavoritesViewModel>(
        converter: (Store<AppState> store) {
          return store.state.favoritesState.isFavorites(definition.id)
              ? FavoritesViewModel.favorite()
              : FavoritesViewModel.not();
        },
        builder: (context, viewModel) => viewModel.when(
            favorite: () => IconButton(
              icon: Icon(Icons.favorite, color: Colors.white),
              onPressed: () {
                appStore.dispatch(OnRemoveFromFavorites(definition));
              },
            ),
            not: () => IconButton(
              icon: Icon(Icons.favorite_border, color: Colors.white),
              onPressed: () {
                appStore.dispatch(OnAddToFavorites(definition));
              },
            )
        )
    );
  }
}
