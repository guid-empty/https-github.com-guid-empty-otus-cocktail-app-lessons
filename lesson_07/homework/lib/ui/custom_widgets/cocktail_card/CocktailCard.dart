import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailCard extends StatelessWidget {
  final Cocktail cocktail;

  CocktailCard({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.0)),
      child: Stack(
        children: [
          Image.network(cocktail.drinkThumbUrl, fit: BoxFit.fill),
          Positioned(
            bottom: 16.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(cocktail.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(color: Colors.white, fontSize: 14)),
                ),

              ],
            ),
          )
        ],
      ),
    );
  }
}
