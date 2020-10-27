import 'dart:math';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/ui/cocktail_sliver.dart';
import 'package:flutter/material.dart';

class CocktailsGridView extends StatelessWidget {
  final Future<Iterable<CocktailDefinition>> _cocktailsLoader;

  CocktailsGridView(this._cocktailsLoader);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: _cocktailsLoader,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError) {
              return Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      child: Text(
                        "Ошибка загрузки: ${snapshot.error}",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 20,
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontFamily: "SF Pro Text",
                            fontWeight: FontWeight.w400),
                      )));
            } else {
              return Expanded(
                  child: Container(
                      padding: EdgeInsets.fromLTRB(26, 0, 13, 0),
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverGrid(
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 6,
                                crossAxisSpacing: 3,
                                childAspectRatio:
                                CocktailSliver.width / CocktailSliver.height),
                            delegate: SliverChildBuilderDelegate((buildContext, index) {
                              return CocktailSliver(snapshot.data.elementAt(index));
                            }),
                          )
                        ])));
            }
          } else {
            return Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                  Icon(Icons.self_improvement, color: Colors.white, size: 34),
                  Text(
                    "Поиск...",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 20,
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        fontFamily: "SF Pro Text",
                        fontWeight: FontWeight.w400),
                  )
                ]));
          }
        });
  }
}
