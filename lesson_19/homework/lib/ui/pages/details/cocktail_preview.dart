import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:cocktail_app/core/models.dart';

class CocktailPreview extends StatelessWidget {
  final Cocktail cocktail;

  CocktailPreview({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 375 / 343,
          child: Image.network(cocktail.drinkThumbUrl, fit: BoxFit.fill),
        ),
        Positioned(
          bottom: 0,
          child: AspectRatio(
            aspectRatio: 375 / 172,
            child: Container(
              color: Colors.transparent,
              foregroundDecoration: BoxDecoration(
                gradient: const LinearGradient(colors: [
                  CustomColors.gradient_first,
                  CustomColors.gradient_second
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
              ),
            ),
          ),
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                IconButton(
                  onPressed: () {
                    String ingridients = "";
                    for (IngredientDefinition ingr
                        in cocktail.ingredients.toList()) {
                      ingridients +=
                          "${ingr.ingredientName}: ${ingr.measure.toString()} \n";
                    }

                    Share.share(
                        "Именно это мы сегодня и будем употреблять: \n"
                        "${cocktail.drinkThumbUrl}\n"
                        "название: ${cocktail.name}\n"
                        "ID в базе: ${cocktail.id}\n"
                        "тип: ${cocktail.cocktailType.value}\n"
                        "категория: ${cocktail.category.value}\n"
                        "ингридиенты: $ingridients"
                        "как приготовить: ${cocktail.instruction.toString()}\n"
                        "подается в стакане: ${cocktail.glassType.value}\n",
                        subject: "отличный коктейль");
                  },
                  icon: Icon(
                    //TODO: шаринг
                    Icons.share,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
