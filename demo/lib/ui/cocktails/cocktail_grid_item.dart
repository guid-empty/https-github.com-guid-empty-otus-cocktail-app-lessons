import 'package:demo/core/models.dart';
import 'package:demo/ui/style/colors.dart';
import 'package:flutter/material.dart';

class CocktailGridItem extends StatelessWidget {
  const CocktailGridItem(this.cocktailDefinition,
      {Key key, this.selectedCategory})
      : super(key: key);

  static const double aspectRatio = 170 / 215;

  final CocktailDefinition cocktailDefinition;

  final CocktailCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          //todo set empty holder
          DecoratedBox(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                stops: [0.44,0.94],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(14, 13, 19, 0),Color(0xFF0E0D13)]
              )
            ),
            position: DecorationPosition.foreground,
            child: Image.network(
              cocktailDefinition.drinkThumbUrl ?? '',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(cocktailDefinition.name ?? '',
                      style: Theme.of(context).textTheme.bodyText1),
                  Chip(
                    backgroundColor: CustomColors.black,
                      label: Text(selectedCategory.name,
                          style: Theme.of(context).textTheme.caption)),
                ]),
          )
        ],
      ),
    );
  }
}
