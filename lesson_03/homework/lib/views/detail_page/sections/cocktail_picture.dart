import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:homework/models/models.dart';

class CocktailPicture extends StatelessWidget {
  const CocktailPicture({
    Key key,
    @required this.cocktail,
  }) : super(key: key);

  final Cocktail cocktail;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.center,
        color: Colors.black,
        child: Image.network(cocktail.drinkThumbUrl)
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(28, 58, 19, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset("./assets/back.svg",
                color: cocktail.isFavourite
                    ? Colors.white
                    : Color.fromARGB(255, 132, 131, 150),
                width: 20),
            SvgPicture.asset("./assets/fullscr.svg",
                color: cocktail.isFavourite
                    ? Colors.white
                    : Color.fromARGB(255, 132, 131, 150),
                width: 20)
          ],
        ),
      )
    ]);
  }
}
