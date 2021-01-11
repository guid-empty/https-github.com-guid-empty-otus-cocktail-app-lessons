import 'package:cocktail_app/core/src/model/cocktail.dart';
import 'package:cocktail_app/ui/state/fav_store.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

import 'cocktail_characteristic_text.dart';
import 'cocktail_title.dart';

class CocktailDescriptionWidget extends StatelessWidget {
  final Cocktail cocktail;

  CocktailDescriptionWidget({this.cocktail});

  @override
  Widget build(BuildContext context) {
    var store = Provider.of<FavStore>(context);
    return Container(
      color: CustomColors.ingredients,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CocktailTitle(
              cocktail: cocktail,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: Text(
                'id:${cocktail.id}' ?? '',
                style: Theme.of(context).textTheme.headline2,
              ),
            ),
            CocktailCharacteristicText(
                characteristicName: 'Категория коктейля', characteristicValue: cocktail.category.value),
            CocktailCharacteristicText(
                characteristicName: 'Тип коктейля', characteristicValue: cocktail.cocktailType.value),
            CocktailCharacteristicText(characteristicName: 'Тип стекла', characteristicValue: cocktail.glassType.value),
          ],
        ),
      ),
    );
  }
}
