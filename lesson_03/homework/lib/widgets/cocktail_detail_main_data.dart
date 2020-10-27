import 'package:flutter/material.dart';
import 'package:homework/core/cocktail_widget.dart';
import 'package:homework/widgets/infoSection/cocktail_info_widget.dart';
import 'package:homework/widgets/ingridientsSection/cocktail_ingridients_widget.dart';
import 'package:homework/widgets/instructionsSection/cocktail_instructions_widget.dart';
import 'package:homework/widgets/reviewSection/cocktail_review_widget.dart';

class CocktailDetailMainData extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CocktailWidget cocktailModel = CocktailWidget.of(context);
    return Column(
      children: [
        Image.network(cocktailModel.drinkThumbUrl),
        CocktailInfoWidget(),
        CocktailIngridientsWidget(),
        CocktailInstructionsWidget(),
        CocktailReviewwidget()
      ],
    );
  }


}