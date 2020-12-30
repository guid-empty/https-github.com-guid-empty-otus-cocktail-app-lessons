import 'package:flutter/material.dart';
import '../widgets/small_label.dart';

// Информация о коктейле. Получает заголовок и описание

class CocktailInfo extends StatelessWidget {
  CocktailInfo(this.title, this.description);

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Container(
          height: 8,
        ),
        SmallLabel(description),
        Container(
          height: 20,
        )
      ],
    );
  }
}
