import 'package:flutter/material.dart';
import 'package:homework/core/cocktail_widget.dart';
import 'package:homework/core/colors.dart';

class CocktailInstructionsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CocktailWidget cocktailModel = CocktailWidget.of(context);
    
    return Container(
      padding: EdgeInsets.fromLTRB(32, 24, 0, 40),
      color: AppColors.ThirdColor,
      child: Column(        
        children: [
          Padding(            
            padding: EdgeInsets.only(bottom: 24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Инструкция для приготовления",              
                  style: TextStyle(
                    fontSize: 14, 
                    color: AppColors.MainTextColor,                
                  )
                )
              ],
            )
          ),
          Text(
            cocktailModel.instruction,
            style: TextStyle(
              fontSize: 14, 
              color: AppColors.MainTextColor,                
            )
          )
        ],
      )
    );
  }
}