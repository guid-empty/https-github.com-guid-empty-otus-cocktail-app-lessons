import 'package:flutter/material.dart';
import 'package:homework/core/cocktail_widget.dart';
import 'package:homework/core/colors.dart';
import 'package:homework/widgets/infoSection/info_title_value_widget.dart';

class CocktailInfoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CocktailWidget cocktailModel = CocktailWidget.of(context);
    return Container(
      color: AppColors.SecondaryColor,
      padding: EdgeInsets.fromLTRB(32, 33, 34, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,          
        children: [                
          _rowWithCoctailName(cocktailModel),
          Padding(
            padding: EdgeInsets.only(top: 10),
            child: _idLabel(cocktailModel)
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: InfoTitleValueWidget("Категория коктейля", cocktailModel.category.value)
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: InfoTitleValueWidget("Тип коктейля", cocktailModel.cocktailType.value)
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: InfoTitleValueWidget("Тип стекла", cocktailModel.glassType.value)
          )          
        ],
      )      
    );
  }

  Widget _rowWithCoctailName(CocktailWidget cocktailModel) {
    return Row(      
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:[
        Text(
          cocktailModel.name,
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        Image.asset("assets/images/heart_icon.png")
      ]
    );
  }

  Widget _idLabel(CocktailWidget cocktailModel) {
    return Text(
      "id:${cocktailModel.id}",       
      style: TextStyle(
        color: AppColors.IdTextColor,
        fontSize: 13
      ),
    );
  }
}