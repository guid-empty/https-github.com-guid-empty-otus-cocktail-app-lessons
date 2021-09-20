import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/details/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        FavoriteButton(definition)
      ]
    );
  }
}
