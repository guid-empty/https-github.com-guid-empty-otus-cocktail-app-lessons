import 'package:flutter/material.dart';
import 'package:homework/models/models.dart';

import 'sections/cocktail_details.dart';
import 'sections/cocktail_ingredients.dart';
import 'sections/cocktail_instruction.dart';
import 'sections/cocktail_picture.dart';
import 'sections/cocktail_rating_bar.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        CocktailPicture(cocktail: cocktail),
        CocktailDetails(cocktail: cocktail),
        CocktailIngredients(cocktail: cocktail),
        CocktailInstruction(cocktail: cocktail),
        CocktailRatingBar(cocktail: cocktail, rating: 3),
      ],
    ));
  }
}