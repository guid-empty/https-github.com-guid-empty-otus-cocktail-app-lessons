import 'package:flutter/material.dart';
import '../widgets/small_label.dart';

class CocktailCard extends StatelessWidget {
  CocktailCard(
      {@required this.id, @required this.name, @required this.drinkThumbUrl});

  final String id;
  final String drinkThumbUrl;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(drinkThumbUrl),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '«${name}»',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Container(
              height: 16,
            ),
            SmallLabel('id:${id}'),
          ],
        ),
      ),
    );
  }
}
