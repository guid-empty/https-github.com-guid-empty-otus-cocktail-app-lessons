import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/favorites/action.dart';
import 'package:cocktail_app/redux/favorites/state.dart';
import 'package:cocktail_app/redux/state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class FavoriteButton extends StatelessWidget {
  final CocktailDefinition cocktailDefinition;

  FavoriteButton({this.cocktailDefinition});

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, FavoritesState>(
      converter: (store) => store.state.favoriteState,
      builder: (context, state) {
        return state.isFavorites(cocktailDefinition.id)
            ? IconButton(
          onPressed: () =>
              store.dispatch(SetFavoritesAction(cocktailDefinition, false)),
          icon: Icon(Icons.favorite, color: Colors.red),
        )
            : IconButton(
          onPressed: () => store
              .dispatch(SetFavoritesAction(cocktailDefinition, true)),
          icon: Icon(Icons.favorite_border),
        );
      },
    );
  }
}