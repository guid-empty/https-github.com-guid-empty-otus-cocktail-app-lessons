import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cocktail_value_text.dart';

class CocktailCharacteristicText extends StatelessWidget {
  final String characteristicName;
  final String characteristicValue;

  CocktailCharacteristicText(
      {this.characteristicName, this.characteristicValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            characteristicName,
            style: Theme.of(context).textTheme.headline1,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: CocktailValueText(characteristicValue: characteristicValue),
          )
        ],
      ),
    );
  }
}
