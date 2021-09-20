import 'package:flutter/material.dart';
import 'package:homework/core/cocktail_widget.dart';
import 'package:homework/core/colors.dart';
import 'package:homework/models/models.dart';

class CocktailIngridientsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CocktailWidget cocktailModel = CocktailWidget.of(context);        
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24),
      color: AppColors.MainColor,      
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: Text(
              "Ингредиенты:",
              style: TextStyle(color: Color(0xFFB1AFC6), fontSize: 16),
            ),
          ),
          Column(        
            children: _getIngridientsRows(cocktailModel)
          )
        ],
      )            
    );
  }

  List<Widget> _getIngridientsRows(CocktailWidget cocktailModel) {
    List<Widget> ingridientsRows = List();

    for (IngredientDefinition currentIngridient in cocktailModel.ingredients) {
      Widget currentRow = Padding(
        padding: EdgeInsets.fromLTRB(32, 16, 36, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              currentIngridient.ingredientName,              
              style: TextStyle(color: AppColors.MainTextColor, decoration: TextDecoration.underline)
            ),
            Text(
              currentIngridient.measure,
              style: TextStyle(color: AppColors.MainTextColor),
            )
          ],
        )
      );
      ingridientsRows.add(currentRow);
    }
    return ingridientsRows;
  }
}