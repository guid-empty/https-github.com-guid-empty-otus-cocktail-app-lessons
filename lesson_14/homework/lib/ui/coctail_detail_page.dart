import 'package:flutter/material.dart';
import 'package:homework/core/src/model/cocktail.dart';

import 'cocktail_description/cocktail_description_widget.dart';
import 'cocktail_ingredients/cocktail_ingredients_widget.dart';
import 'cocktail_instruction/cocktail_instruction.dart';
import 'cocktail_rating/cocktail_rating_bar.dart';
import 'custom_widgets/image_with_back_and_share_button.dart';

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
          ImageWithBackAndShareButtons(imageUrl: cocktail.drinkThumbUrl),
          CocktailDescriptionWidget(cocktail: cocktail),
          CocktailIngredients(cocktailIngredients: cocktail.ingredients),
          CocktailInstruction(cocktailInstruction: cocktail.instruction),
          CocktailRatingBar(rating: 3)
        ],
      ),
    );
  }
}