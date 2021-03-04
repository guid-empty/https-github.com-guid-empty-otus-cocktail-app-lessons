import 'package:flutter/cupertino.dart';
import 'package:homework/ui/style/colors.dart';

import 'cocktail_rating_star.dart';

class CocktailRatingBar extends StatelessWidget {
  final int rating;

  CocktailRatingBar({this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors.ingredients,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
              5, (index) => CocktailRatingStar(isFilled: index < 3)),
        ),
      ),
    );
  }
}
