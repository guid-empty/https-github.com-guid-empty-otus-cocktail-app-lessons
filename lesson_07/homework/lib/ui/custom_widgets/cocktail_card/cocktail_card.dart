import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CocktailCard extends StatelessWidget {
  final CocktailDefinition cocktail;

  CocktailCard({this.cocktail});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16.0),
          child: Image.network(cocktail.drinkThumbUrl,
              fit: BoxFit.fill),
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
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    color: Color(0xff15151C),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 6.0, bottom: 6.0),
                    child: Material(
                      color: Colors.transparent,
                      child: Text(
                        "id: ${cocktail.id}",
                        style: const TextStyle(color: Colors.white, fontSize: 10),
                      ),
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
