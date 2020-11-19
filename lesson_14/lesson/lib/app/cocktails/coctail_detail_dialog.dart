import 'package:flutter/material.dart';
import 'package:lesson/app/core/src/model/cocktail_definition.dart';

class CocktailDetailDialog extends StatelessWidget {
  final CocktailDefinition cocktailDefinition;

  const CocktailDetailDialog(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Hero(
        tag: '${cocktailDefinition.id}:${cocktailDefinition.drinkThumbUrl}',
        transitionOnUserGestures: true,
        flightShuttleBuilder: (BuildContext flightContext,
            Animation<double> animation,
            HeroFlightDirection flightDirection,
            BuildContext fromHeroContext,
            BuildContext toHeroContext) {
          return toHeroContext.widget;
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.network(cocktailDefinition.drinkThumbUrl),
        ),
      ),
    );
  }
}
