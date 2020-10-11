import 'package:flutter/cupertino.dart';
import 'package:homework/models/models.dart';

import 'CocktailCharacteristicText.dart';
import 'CocktailTitle.dart';

class CocktailDescriptionWidget extends StatelessWidget {
  final Cocktail cocktail;

  CocktailDescriptionWidget({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1a1927),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CocktailTitle(cocktailTitle: cocktail.name, isFavorite: cocktail.isFavourite,),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                "id:${cocktail.id}" ?? "",
                style: TextStyle(
                  color: Color(0xff848396),
                  fontSize: 13,
                  fontWeight: FontWeight.normal
                ),
              ),
            ),
            CocktailCharacteristicText(characteristicName: "Категория коктейля", characteristicValue: cocktail.category.value),
            CocktailCharacteristicText(characteristicName: "Тип коктейля", characteristicValue: cocktail.cocktailType.value),
            CocktailCharacteristicText(characteristicName: "Тип стекла", characteristicValue: cocktail.glassType.value),
          ],
        ),
      ),
    );
  }
}