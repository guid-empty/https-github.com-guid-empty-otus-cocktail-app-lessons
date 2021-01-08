import 'package:flutter/material.dart';

import '../../core/models.dart';


class CocktailRating extends StatelessWidget {

  final Cocktail cocktail;
  final int rating;

  CocktailRating(this.cocktail, this.rating){
    if(rating > 5 || rating < 0) throw new Exception("Cocktail rating must be an integer between 1 and 5");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 113,
      alignment: Alignment.center,
      width: double.infinity,
      color: Color(0xFF1A1927),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: _generateStarWidgets()
      ),
    );
  }

  List<Widget> _generateStarWidgets() {
    var res = List<Widget>();
    for(int i=1; i<=5; i++){
      if(i>1) res.add(SizedBox(width: 16));
      res.add(_generateStarWidget(i<=rating));
    }
    return res;
  }

  Widget _generateStarWidget(bool ticked) {
    return Container(
      height: 48,
      width: 48,
      decoration: BoxDecoration(
          color: Color(0xFF2A293A),
          borderRadius: BorderRadius.all(Radius.circular(24))),
      alignment: Alignment.center,
      child: Icon(
          Icons.star,
          color: ticked ? Colors.white : Color(0xFF1A1927),
          size: 32
      ),
    );
  }
}
