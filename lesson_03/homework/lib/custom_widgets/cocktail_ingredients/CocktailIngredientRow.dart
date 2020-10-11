import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailIngredientRow extends StatelessWidget {
  final String cocktailIngredientName;
  final String cocktailIngredientMeasure;

  CocktailIngredientRow({this.cocktailIngredientName, this.cocktailIngredientMeasure});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            cocktailIngredientName,
            style: TextStyle(
              decoration: TextDecoration.underline,
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.normal
            ),
          ),
          Text(
            cocktailIngredientMeasure,
            style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.normal
            )
          )
        ],
      ),
    );
  }
}