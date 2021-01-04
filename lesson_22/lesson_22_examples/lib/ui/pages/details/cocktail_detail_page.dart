import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_description_widget.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_ingredients/ingredients_widget.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_instruction/cocktail_instruction.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_preview.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_rating_bar/cocktail_rating_bar.dart';
import 'package:flutter/material.dart';

class CocktailDetailPage extends StatelessWidget {
  final Cocktail cocktail;

  const CocktailDetailPage(this.cocktail, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CocktailPreview(imageUrl: cocktail.drinkThumbUrl),
          CocktailDescriptionWidget(cocktail: cocktail),
          CocktailIngredients(cocktailIngredients: cocktail.ingredients),
          CocktailInstruction(cocktailInstruction: cocktail.instruction),
          CocktailRatingBar(rating: 3)
        ],
      ),
    );
  }
}
