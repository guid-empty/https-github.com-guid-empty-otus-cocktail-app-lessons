import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/custom_widgets/colors/custom_colors.dart';
import 'package:homework/models/models.dart';

import 'cocktail_characteristic_text.dart';
import 'cocktail_title.dart';

class CocktailDescriptionWidget extends StatelessWidget {
  final Cocktail cocktail;

  CocktailDescriptionWidget({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.ingredients,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CocktailTitle(
              cocktailTitle: cocktail.name,
              isFavorite: cocktail.isFavourite,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'id:${cocktail.id}' ?? '',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            CocktailCharacteristicText(
                characteristicName: 'Категория коктейля',
                characteristicValue: cocktail.category.value),
            CocktailCharacteristicText(
                characteristicName: 'Тип коктейля',
                characteristicValue: cocktail.cocktailType.value),
            CocktailCharacteristicText(
                characteristicName: 'Тип стекла',
                characteristicValue: cocktail.glassType.value),
          ],
        ),
      ),
    );
  }
}
