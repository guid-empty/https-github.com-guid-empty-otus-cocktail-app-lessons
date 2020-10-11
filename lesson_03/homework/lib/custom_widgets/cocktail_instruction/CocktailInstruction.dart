import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailInstruction extends StatelessWidget {
  final String cocktailInstruction;

  CocktailInstruction({this.cocktailInstruction});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      color: Color(0xff201F2C),
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: getTextSpansList(),
        ),
      ),
    );
  }

  List<Widget> getTextSpansList() {
    var spans = List<Widget>();

    spans.add(Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Text(
          "Инструкция для приготовления",
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal)),
    ));

    for(String step in cocktailInstruction.split("\n")) {
      spans.add(Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 6, right: 12),
              width: 4,
              height: 4,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle
              ),
            ),
            Expanded(
              child: Text(
                  "${step.replaceFirst("-", "").trim()}",
                textAlign: TextAlign.left,
                style:  TextStyle(
                    color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal
                ),
              ),
            )
          ],
        ),
      ));
    }
    return spans;
  }
}