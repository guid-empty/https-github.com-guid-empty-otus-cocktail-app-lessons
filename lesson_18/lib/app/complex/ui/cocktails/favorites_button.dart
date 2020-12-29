import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:lesson_18/app/complex/redux/favorites/action.dart';
import 'package:lesson_18/app/complex/redux/favorites/state.dart';

import '../../core/models.dart';
import '../../redux/state.dart';

class FavoritesButton extends StatelessWidget {
  const FavoritesButton(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    final store = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, FavoritesState>(
      converter: (store) => store.state.favoritesState,
      builder: (context, state) {
        return state.isFavorites(cocktailDefinition.id)
            ? IconButton(
                onPressed: () => store
                    .dispatch(SetFavoritesAction(cocktailDefinition, false)),
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
