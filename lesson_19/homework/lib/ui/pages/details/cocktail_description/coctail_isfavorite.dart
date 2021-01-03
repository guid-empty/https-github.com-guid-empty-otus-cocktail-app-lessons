import 'package:cocktail_app/core/src/model/cocktail_definition.dart';
import 'package:cocktail_app/cubit/favorites_cubit.dart';
import 'package:cocktail_app/cubit/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IsFavorite extends StatelessWidget {
  const IsFavorite(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        final _cubit = BlocProvider.of<FavoritesCubit>(context);
        if (_cubit.isFavorite(cocktailDefinition)) {
          return IconButton(
              onPressed: () {
                _cubit.removeFromFavoritesCocktails(cocktailDefinition);
              },
              icon: Icon(Icons.favorite, color: Colors.red));
        }
        return IconButton(
            onPressed: () {
              _cubit.addToFavoritesCocktails(cocktailDefinition);
            },
            icon: Icon(Icons.favorite_border));
      },
    );
  }
}
