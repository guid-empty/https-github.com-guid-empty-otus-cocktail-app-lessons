import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/details/favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

///
/// TODO:
class CocktailTitle extends StatelessWidget {
  final CocktailDefinition cocktail;

  CocktailTitle({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          cocktail.name ?? '',
          style: Theme.of(context).textTheme.headline3,
        ),
        FavoriteButton(cocktailDefinition: cocktail)
      ],
    );
  }
}
