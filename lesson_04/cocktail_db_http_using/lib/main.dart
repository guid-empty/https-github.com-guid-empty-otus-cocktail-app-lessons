import 'package:cocktaildbhttpusing/src/repository/async_cocktail_repository.dart';
import 'package:flutter/material.dart';

void main() async {
  var res = await AsyncCocktailRepository().lookupIngredientById('40');

  print(res.name);
  print(res.id);
  print(res.ingredientType);
  print(res.isAlcoholic);
  print(res.description);

  runApp(
    MaterialApp(
      home: Material(
        child: Container(),
      ),
    ),
  );
}
