import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:homework/core/colors.dart';


class CocktailReviewwidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 35),
      color: AppColors.SecondaryColor,
      child: Row(     
        mainAxisAlignment: MainAxisAlignment.center,   
        children: [
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/images/empty_star.png")
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/images/empty_star.png")
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/images/empty_star.png")
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/images/empty_star.png")
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Image.asset("assets/images/empty_star.png")
            ),
            flex: 1,
          )          
        ],
      ),
    );
  }
}