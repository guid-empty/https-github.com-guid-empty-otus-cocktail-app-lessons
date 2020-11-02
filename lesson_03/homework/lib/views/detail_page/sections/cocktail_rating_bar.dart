import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:homework/models/models.dart';

class CocktailRatingBar extends StatelessWidget {
  const CocktailRatingBar({
    Key key,
    @required this.cocktail,
    @required this.rating,
  }) : super(key: key);

  final Cocktail cocktail;
  final int rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(32, 24, 36, 24),
      color: Color.fromARGB(255, 26, 25, 39),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Star(isMarked: rating >= 1),
            Star(isMarked: rating >= 2),
            Star(isMarked: rating >= 3),
            Star(isMarked: rating >= 4),
            Star(isMarked: rating >= 5),
          ]),
        ],
      ),
    );
  }
}

class Star extends StatelessWidget {
  const Star({
    Key key,
    @required this.isMarked,
  }) : super(key: key);

  final bool isMarked;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 42, 41, 58), shape: BoxShape.circle),
        width: 48,
        height: 48,
        child: SvgPicture.asset(
          "./assets/star.svg",
          color: isMarked ? Colors.white : Color.fromARGB(255, 26, 25, 39),
          width: 32,
          height: 32,
        ));
  }
}
