import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:homework/core/src/model/cocktail_definition.dart';
import 'package:homework/ui/colors/custom_colors.dart';

class CocktailCard extends StatelessWidget {
  final CocktailDefinition cocktail;

  CocktailCard({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: AspectRatio(
            aspectRatio: 170 / 215,
            child: Image.network(cocktail.drinkThumbUrl, fit: BoxFit.fitHeight),
          ),
        ),
        Positioned(
          bottom: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Container(
                  width: 160,
                  child: Text(cocktail.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Theme.of(context).textTheme.headline1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: CustomColors.black,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
                    child: Text(
                      'id: ${cocktail.id}',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}