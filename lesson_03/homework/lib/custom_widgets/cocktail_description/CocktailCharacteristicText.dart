import 'package:flutter/cupertino.dart';

import 'CocktailValueText.dart';

class CocktailCharacteristicText extends StatelessWidget {
  final String characteristicName;
  final String characteristicValue;

  CocktailCharacteristicText({this.characteristicName, this.characteristicValue});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            characteristicName,
            style: TextStyle(
              color: Color(0xffeaeaea),
              fontSize: 14,
              fontWeight: FontWeight.normal
            ),
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