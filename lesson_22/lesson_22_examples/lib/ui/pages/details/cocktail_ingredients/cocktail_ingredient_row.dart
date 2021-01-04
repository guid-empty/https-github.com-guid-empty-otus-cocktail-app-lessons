import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailIngredientRow extends StatelessWidget {
  final String cocktailIngredientName;
  final String cocktailIngredientMeasure;

  CocktailIngredientRow({this.cocktailIngredientName, this.cocktailIngredientMeasure});

  @override
  Widget build(BuildContext context) => Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              cocktailIngredientName,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(cocktailIngredientMeasure, style: Theme.of(context).textTheme.headline5)
          ],
        ),
      );
}
