import 'package:flutter/material.dart';
import '../../core/models.dart';

class CocktailIngredients extends StatelessWidget {
  final Cocktail cocktail;
  final String fontFamily;

  CocktailIngredients(this.cocktail, this.fontFamily);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        width: double.infinity,
        child: Column(children: [
          _buildIngredientsHeader(),
          ..._generateIngredientsEntries()
        ]));
  }

  Widget _buildIngredientsHeader() {
    return Container(
        padding: EdgeInsets.fromLTRB(0, 24, 0, 24),
        child: Text("Ингредиенты:",
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Color(0xFFB1AFC6),
                fontSize: 16,
                fontFamily: fontFamily,
                fontWeight: FontWeight.w500)));
  }

  List<Widget> _generateIngredientsEntries() {
    return List.generate(cocktail.ingredients.length, (index) {
      var ingredientDefinition = cocktail.ingredients.elementAt(index);
      return Container(
          padding: EdgeInsets.fromLTRB(32, 0, 36, index == cocktail.ingredients.length-1 ? 24 : 16),
          child: Row(children: [
        Expanded(
            child: Text(ingredientDefinition.ingredientName ?? '',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: fontFamily,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.w400))),
        Expanded(
            child: Text(ingredientDefinition.measure ?? '',
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: fontFamily,
                    fontWeight: FontWeight.w500)))
      ]));
    });
  }
}
