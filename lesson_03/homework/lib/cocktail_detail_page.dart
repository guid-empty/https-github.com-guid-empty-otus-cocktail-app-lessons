import 'package:flutter/material.dart';
import 'package:homework/core/cocktail_widget.dart';
import 'package:homework/models/models.dart';

import 'widgets/cocktail_detail_main_data.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktail, {
    Key key,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {    
    return CocktailWidget.fromCocktail(
      cocktail, 
      Stack(
        children: [
          SingleChildScrollView(
            child: CocktailDetailMainData(),
          ),
          _topMenuWidget()
        ],
      )
    );                 
  }

  Widget _topMenuWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(28, 58, 19, 0),   
      child: Row(        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[  
          Image.asset("assets/images/arrow.png"),
          Image.asset("assets/images/share_icon.png")
        ]
      )
    );
  }
}
