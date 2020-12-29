import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/models.dart';
import 'package:lesson_16/app/provider/favorites_model.dart';
import 'package:provider/provider.dart';

class FavoritesButton extends StatelessWidget {
  const FavoritesButton(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return Selector<FavoritesViewModel, bool>(
      selector: (context, model) {
        return model.isSelected(cocktailDefinition.id);
      },
      builder: (context, selected, _) {
        print('FavoritesButton build:${cocktailDefinition.id}');
        if (selected) {
          return IconButton(
              onPressed: () {
                context
                    .read<FavoritesViewModel>()
                    .removeFromFavorites(cocktailDefinition.id);
              },
              icon: Icon(Icons.favorite, color: Colors.red));
        }
        return IconButton(
            onPressed: () {
              context
                  .read<FavoritesViewModel>()
                  .addToFavorites(cocktailDefinition);
            },
            icon: Icon(Icons.favorite_border));
      },
    );
  }
}
