import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailCard extends StatelessWidget {
  final CocktailDefinition cocktail;
  final double height;

  CocktailCard({this.cocktail, this.height});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(cocktail.drinkThumbUrl,
              height: height,
              fit: BoxFit.fitHeight),
        ),
        Positioned(
          bottom: 16.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Material(
                  color: Colors.transparent,
                  child: Text(cocktail.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(color: Colors.white, fontSize: 14)),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0)
                ),
                child: Material(
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 18.0),
                    child: Text(
                      "id: ${cocktail.id}",
                      style: const TextStyle(color: Colors.white, fontSize: 10),
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
