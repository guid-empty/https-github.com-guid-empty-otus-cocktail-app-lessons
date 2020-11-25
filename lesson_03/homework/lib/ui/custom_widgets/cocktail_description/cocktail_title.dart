import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailTitle extends StatelessWidget {
  final String cocktailTitle;
  final bool isFavorite;

  CocktailTitle({this.cocktailTitle, this.isFavorite});

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
        _getIsFavoriteIcon()
      ],
    );
  }

  Widget _getIsFavoriteIcon() {
    if (isFavorite) {
      return IconButton(
        icon: Icon(Icons.favorite, color: Colors.white),
        onPressed: () {},
      );
    } else {
      return IconButton(
        icon: Icon(Icons.favorite_border, color: Colors.white),
        onPressed: () {},
      );
    }
  }
}
