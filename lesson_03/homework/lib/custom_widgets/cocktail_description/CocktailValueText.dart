import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailValueText extends StatelessWidget {
  final String characteristicValue;

  CocktailValueText({this.characteristicValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff15151c),
        borderRadius: BorderRadius.all(Radius.circular(30))
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 16.0, right: 16.0),
        child: Text(
          characteristicValue,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.normal,
            fontSize: 15
          ),

        ),
      ),
    );
  }
}