import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/core/src/model/cocktail.dart';
import 'package:homework/ui/style/colors.dart';

import 'cocktail_characteristic_title.dart';
import 'cocktail_title.dart';

class CocktailDescriptionWidget extends StatelessWidget {
  final Cocktail cocktail;

  CocktailDescriptionWidget({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.ingredients,
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, left: 32.0, right: 32.0, bottom: 32.0),
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