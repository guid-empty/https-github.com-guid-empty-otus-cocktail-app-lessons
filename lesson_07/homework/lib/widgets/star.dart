import 'package:flutter/material.dart';
import '../services/colors.dart';

// звездочка в рейтинге. isActive true - яркая

class Star extends StatelessWidget {
  final bool isActive;

  Star(this.isActive);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: kStarBackground,
      ),
      child: Icon(
        Icons.star,
        color: isActive ? kHeaderColor : kRatingBackground,
        size: 32,
      ),
    );
  }
}
