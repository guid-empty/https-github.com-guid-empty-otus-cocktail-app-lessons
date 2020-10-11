import 'package:flutter/material.dart';
import 'package:homework/custom_widgets/cocktail_description/CocktailDescriptionWidget.dart';
import 'package:homework/custom_widgets/ImageWithBackAndShareButtons.dart';
import 'package:homework/custom_widgets/cocktail_ingredients/IngredientsWidget.dart';
import 'package:homework/custom_widgets/cocktail_instruction/CocktailInstruction.dart';
import 'package:homework/models/models.dart';

import 'custom_widgets/cocktail_rating_bar/CocktailRatingBar.dart';

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
    /// Ссылка на макет
    /// https://www.figma.com/file/d2JJUBFu7Dg0HOV30XG7Z4/OTUS-FLUTTER.-%D0%A3%D1%80%D0%BE%D0%BA-3-%D0%94%D0%97?node-id=20%3A590
    ///для того что бы весь контент поместился, необходимо использовать SingleChildScrollView()
    ///
    ///
  }
}
