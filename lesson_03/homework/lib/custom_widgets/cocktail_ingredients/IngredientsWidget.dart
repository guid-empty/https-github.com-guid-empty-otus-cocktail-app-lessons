import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/models/src/model/ingredient_definition.dart';

import 'CocktailIngredientRow.dart';

class CocktailIngredients extends StatelessWidget {
  final Iterable<IngredientDefinition> cocktailIngredients;

  CocktailIngredients({this.cocktailIngredients});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: getIngredientsList(),
        ),
      ),
    );
  }

  List<Widget> getIngredientsList() {
    var ingredients = List<Widget>();

    ingredients.add(Text(
      "Ингредиенты:",
      style: TextStyle(
          color: Color(0xffb1afc6),
          fontSize: 16,
          fontWeight: FontWeight.normal
      ),
    ));

    for(IngredientDefinition ingredient in cocktailIngredients) {
      ingredients.add(CocktailIngredientRow(cocktailIngredientName: ingredient.ingredientName, cocktailIngredientMeasure: ingredient.measure));
    }

    return ingredients;
  }
}