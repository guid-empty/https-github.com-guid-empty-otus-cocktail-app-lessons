import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterTextItem extends StatelessWidget {
  final CocktailCategory category;
  final StreamController categoryController;
  final StreamController cocktailsController;

  FilterTextItem({this.category, this.categoryController, this.cocktailsController});

  _searchCocktails(CocktailCategory category) async {
    var result = await AsyncCocktailRepository().fetchCocktailsByCocktailCategory(category);
    cocktailsController.sink.add(result);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
      initialData: CocktailCategory.values.toList()[0].name,
      stream: categoryController.stream,
      builder: (context, snapshot) {
        if(snapshot.data == category.name) {
          _searchCocktails(category);
        }
        return RaisedButton(
          onPressed: () {
            categoryController.sink.add(category.name);
            _searchCocktails(category);
          },
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
              side: _getBorderSide(snapshot.data)
          ),
          color: _getColor(snapshot.data),
          child: Text(category.name, style: const TextStyle(color: Colors.white, fontSize: 15)),
        );
      }
    );
  }



  Color _getColor(String data) {
    if(data == category.name) {
      return Color(0xff3B3953);
    } else {
      return Color(0xff201F2C);
    }
  }

  _getBorderSide(String data) {
    if(data == category.name) {
      return BorderSide(color: Color(0xff3B3953));
    } else {
      return BorderSide(color: Color(0xff2D2C39));
    }
  }
}