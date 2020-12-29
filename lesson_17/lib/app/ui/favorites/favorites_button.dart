import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/favorites/favorites_cubit.dart';
import 'package:lesson_17/app/core/models.dart';

class FavoritesButton extends StatelessWidget {
  const FavoritesButton(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoritesCubit, FavoritesState>(
      // buildWhen: (a, b) {
      //   return b.isFavorites(cocktailDefinition.id) !=
      //       a.isFavorites(cocktailDefinition.id);
      // },
      builder: (ctx, state) {
        print('FavoritesButton builder: ${cocktailDefinition.id}');
        final _cubit = BlocProvider.of<FavoritesCubit>(context);
        if (state.isFavorites(cocktailDefinition.id)) {
          return IconButton(
              onPressed: () {
                _cubit.removeFromFavorites(cocktailDefinition.id);
              },
              icon: Icon(Icons.favorite, color: Colors.red));
        }
        return IconButton(
            onPressed: () {
              _cubit.addToFavorites(cocktailDefinition);
            },
            icon: Icon(Icons.favorite_border));
      },
    );
  }
}
