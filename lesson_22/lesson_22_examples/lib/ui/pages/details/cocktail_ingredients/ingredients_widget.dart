import 'package:cocktail_app/core/src/model/ingredient_definition.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cocktail_ingredient_row.dart';

class CocktailIngredients extends StatelessWidget {
  final Iterable<IngredientDefinition> cocktailIngredients;

  CocktailIngredients({this.cocktailIngredients});

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ингредиенты:', style: Theme.of(context).textTheme.headline6),
              ...cocktailIngredients
                  .map((ingredient) => CocktailIngredientRow(
                      cocktailIngredientName: ingredient.ingredientName ?? '',
                      cocktailIngredientMeasure: ingredient.measure ?? ''))
                  .toList(growable: false)
            ],
          ),
        ),
      );
}
