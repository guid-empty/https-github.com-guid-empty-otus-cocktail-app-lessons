import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homework/models/models.dart';

class CocktailIngredients extends StatelessWidget {
  const CocktailIngredients({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(32, 24, 36, 16),
      color: Color.fromARGB(255, 0, 0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionTitle(),
          Container(
            child: Table(
              children: cocktail.ingredients
                  .map((i) => _buildIngredient(name: i.ingredientName, count: i.measure))
                  .toList(),
            ),
          )
        ],
      ),
    );
  }

  TableRow _buildIngredient({@required String name, @required String count}) {
    return TableRow(children: [
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Text(
          name,
          textAlign: TextAlign.start,
          style: TextStyle(
              color: Colors.white,
              decoration: TextDecoration.underline,
              fontSize: 14,
              fontWeight: FontWeight.w400),
        ),
      ),
      Container(
        margin: const EdgeInsets.fromLTRB(0, 8, 0, 8),
        child: Text(
          count,
          textAlign: TextAlign.end,
          style: TextStyle(
              color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
        ),
      )
    ]);
  }
}

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
      child: Text(
        "Ингредиенты:",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Color.fromARGB(255, 177, 175, 198),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
