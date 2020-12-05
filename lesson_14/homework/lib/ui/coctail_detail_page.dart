import 'package:flutter/material.dart';
import 'package:homework/core/models.dart';
import 'package:homework/ui/custom_animation/progress_loader.dart';

import 'cocktail_description/cocktail_description_widget.dart';
import 'cocktail_ingredients/cocktail_ingredients_widget.dart';
import 'cocktail_instruction/cocktail_instruction.dart';
import 'cocktail_rating/cocktail_rating_bar.dart';
import 'custom_widgets/image_with_back_and_share_button.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
      this.id,
      this.image, {
        Key key,
      }) : super(key: key);

  final String image;
  final String id;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Cocktail>(
      future: AsyncCocktailRepository().fetchCocktailDetails(id),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.hasData) {
            return _cocktail(snapshot.data);
          }
          return Column(
            children: [
              ImageWithBackAndShareButtons(imageUrl: image),
              ProgressLoader(),
            ],
          );
        });
  }

  Widget _cocktail(Cocktail cocktail) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageWithBackAndShareButtons(imageUrl: image),
          CocktailDescriptionWidget(cocktail: cocktail),
          CocktailIngredients(cocktailIngredients: cocktail.ingredients),
          CocktailInstruction(cocktailInstruction: cocktail.instruction),
          CocktailRatingBar(rating: 3)
        ],
      ),
    );
  }
}