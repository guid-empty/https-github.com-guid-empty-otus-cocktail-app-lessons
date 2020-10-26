import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/widgets/common/small_bubble.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CocktailTile extends StatelessWidget {
  const CocktailTile(
    this._cocktail, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition _cocktail;

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: Alignment.bottomLeft, children: [
      Container(
        decoration: BoxDecoration(
            image:  DecorationImage(image: Image.network(_cocktail.drinkThumbUrl).image),
            borderRadius: const BorderRadius.all(const Radius.circular(8))),
      ),
      SmallBubble("id:${_cocktail.id}")
    ]);
  }
}
