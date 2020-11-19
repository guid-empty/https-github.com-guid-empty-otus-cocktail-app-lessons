import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:lesson/app/core/models.dart';

class CocktailDetailPage extends StatelessWidget {
  const CocktailDetailPage(
    this.cocktailDefinition, {
    Key key,
  }) : super(key: key);

  final CocktailDefinition cocktailDefinition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Hero(
            tag: 'text:${cocktailDefinition.id}',
            child: Material(
                type: MaterialType.transparency,
                child: Text(cocktailDefinition.name))),
      ),
      body: Container(
        margin: const EdgeInsets.all(16),
        child: Hero(
          tag: '${cocktailDefinition.id}:${cocktailDefinition.drinkThumbUrl}',
          transitionOnUserGestures: true,
          flightShuttleBuilder: (BuildContext flightContext,
              Animation<double> animation,
              HeroFlightDirection flightDirection,
              BuildContext fromHeroContext,
              BuildContext toHeroContext) {
            final Hero toHero = toHeroContext.widget;
            return RotationTransition(
              turns: animation,
              child: toHero.child,
            );
          },
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(cocktailDefinition.drinkThumbUrl),
          ),
        ),
      ),
    );
  }
}
