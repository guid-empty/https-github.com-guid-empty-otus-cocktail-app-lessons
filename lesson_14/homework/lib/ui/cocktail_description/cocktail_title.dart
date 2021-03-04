import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/ui/custom_animation/bouncing_heart.dart';

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
    return BouncingHeart();
  }
}