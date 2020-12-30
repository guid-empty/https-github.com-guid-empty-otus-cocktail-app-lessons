import 'package:flutter/material.dart';
import '../services/colors.dart';

class CocktailTypeLabel extends StatelessWidget {
  CocktailTypeLabel({@required this.cocktailCategory, @required this.isActive});

  final String cocktailCategory;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        cocktailCategory,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
      padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
      margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
      decoration: BoxDecoration(
        color: isActive ? kCocktailCategoryActive : kCocktailCategoryInactive,
        border: Border.all(
          color: kCocktailCategoryBorder,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
