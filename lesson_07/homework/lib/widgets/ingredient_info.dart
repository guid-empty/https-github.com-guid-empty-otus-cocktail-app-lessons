import 'package:flutter/material.dart';

// Ингредиенты в форме таблички

class IngredientInfo extends StatelessWidget {
  IngredientInfo(this.ingredName, this.ingredAmount);

  final String ingredName;
  final String ingredAmount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Text(
              ingredName,
              style: TextStyle(
                fontSize: 17,
                decoration: TextDecoration.underline,
              ),
            ),
          ),
          Flexible(
            child: Text(
              ingredAmount,
              style: TextStyle(fontSize: 17),
            ),
          ),
        ],
      ),
    );
  }
}
