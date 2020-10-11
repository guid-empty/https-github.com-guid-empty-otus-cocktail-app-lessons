import 'package:flutter/cupertino.dart';

import 'CocktailRatingStar.dart';

class CocktailRatingBar extends StatelessWidget {
  final int rating;

  CocktailRatingBar({this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff1a1927),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: getRatedStars(),
        ),
      ),
    );
  }

  List<Widget> getRatedStars() {
    var stars = List<Widget>();

    stars.add(CocktailRatingStar(isFilled: true));
    stars.add(CocktailRatingStar(isFilled: true));
    stars.add(CocktailRatingStar(isFilled: true));
    stars.add(CocktailRatingStar(isFilled: false));
    stars.add(CocktailRatingStar(isFilled: false));

    return stars;
  }
}