import 'package:flutter/material.dart';
import 'package:homework/core/models.dart';
import 'package:homework/ui/cocktaildetails/cocktail_image.dart';
import 'package:homework/ui/cocktaildetails/cocktail_ingredients.dart';
import 'package:homework/ui/cocktaildetails/cocktail_instructions.dart';
import 'package:homework/ui/cocktaildetails/cocktail_rating.dart';
import 'package:homework/ui/cocktaildetails/cocktail_details.dart';

class CocktailDetailPage extends StatelessWidget {
  static const MAIN_FONT = "SF Pro Text";

  const CocktailDetailPage(this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    var columns = Column(children: <Widget>[
      Hero(
          tag: cocktail.drinkThumbUrl ?? '',
          child: CocktailImage(cocktail)
      ),
      CocktailDetails(cocktail, MAIN_FONT),
      CocktailIngredients(cocktail, MAIN_FONT),
      CocktailInstructions(cocktail, MAIN_FONT),
      CocktailRating(cocktail, 3)
    ]);
    return Scaffold(body: SingleChildScrollView(child: Center(child: columns)));
  }
}
