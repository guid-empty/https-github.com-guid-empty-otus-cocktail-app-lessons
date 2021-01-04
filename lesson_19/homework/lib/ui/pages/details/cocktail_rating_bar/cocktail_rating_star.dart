import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailRatingStar extends StatelessWidget {
  final bool isFilled;

  CocktailRatingStar({this.isFilled});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(shape: BoxShape.circle, color: CustomColors.rating_container),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: getIcon(),
      ),
    );
  }

  Widget getIcon() {
    if (isFilled) {
      return Icon(Icons.star, color: Colors.white);
    } else {
      return Icon(Icons.star, color: CustomColors.ingredients);
    }
  }
}
