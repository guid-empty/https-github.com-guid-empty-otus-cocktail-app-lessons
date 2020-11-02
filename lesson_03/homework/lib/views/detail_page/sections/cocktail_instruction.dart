import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:homework/models/models.dart';

class CocktailInstruction extends StatelessWidget {
  const CocktailInstruction({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    String instruction = cocktail.instruction.replaceAllMapped(RegExp(r'(\n*)- (.+)'), (match) {
      return '${match.group(1)}${match.group(1)}\u2022 ${match.group(2)}';
    });
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.fromLTRB(32, 24, 21, 40),
      color: Color.fromARGB(255, 32, 31, 44),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SectionTitle(),
          Text(
            instruction,
            textAlign: TextAlign.start,
            style: TextStyle(
                height: 17.0/14,
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
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
        "Инструкция для приготовления",
        textAlign: TextAlign.start,
        style: TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }
}
