import 'package:flutter/material.dart';
import '../services/colors.dart';
import '../widgets/star.dart';

// Рейтинг в звездах. Получает кол-во звезд, обрезает до диапазона [0, 5]

class Rating extends StatelessWidget {
  final int rating;
  Rating(this.rating);

  @override
  Widget build(BuildContext context) {
    int correctRating;

    if (rating < 0) {
      correctRating = 0;
    } else if (rating > 5) {
      correctRating = 5;
    } else {
      correctRating = rating;
    }

    return Container(
      color: kRatingBackground,
      padding: EdgeInsets.fromLTRB(0, 24, 0, 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < correctRating; i++)
            Flexible(flex: 1, child: Star(true)),
          for (int i = 0; i < 5 - correctRating; i++)
            Flexible(flex: 1, child: Star(false)),
        ],
      ),
    );
  }
}
