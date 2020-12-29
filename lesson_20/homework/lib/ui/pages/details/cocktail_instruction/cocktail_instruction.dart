import 'dart:ui';

import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailInstruction extends StatelessWidget {
  final String cocktailInstruction;

  CocktailInstruction({this.cocktailInstruction});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: CustomColors.instruction,
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text('Инструкция для приготовления', style: Theme.of(context).textTheme.headline5),
            ),
            ...cocktailInstruction
                .split('\n')
                .map((step) => _getCustomText(step, Theme.of(context).textTheme.headline5))
                .toList(growable: false)
          ],
        ),
      ),
    );
  }

  Widget _getCustomText(String step, TextStyle style) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 6, right: 12),
            width: 4,
            height: 4,
            decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
          ),
          Expanded(
            child: Text("${step.replaceFirst("-", "").trim()}", textAlign: TextAlign.left, style: style),
          )
        ],
      ),
    );
  }
}
