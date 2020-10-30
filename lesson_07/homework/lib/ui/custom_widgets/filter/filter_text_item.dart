import 'dart:async';

import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/custom_colors/custom_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FilterTextItem extends StatelessWidget {
  final CocktailCategory category;
  final StreamController categoryController;
  final StreamController cocktailsController;

  FilterTextItem(
      {this.category, this.categoryController, this.cocktailsController});

  _searchCocktails(CocktailCategory category) async {
    var result = await AsyncCocktailRepository()
        .fetchCocktailsByCocktailCategory(category);
    cocktailsController.sink.add(result);
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Object>(
        initialData: CocktailCategory.values.toList()[0].name,
        stream: categoryController.stream,
        builder: (context, snapshot) {
          if (snapshot.data == category.name) {
            _searchCocktails(category);
          }
          return RaisedButton(
            onPressed: () {
              categoryController.sink.add(category.name);
              _searchCocktails(category);
            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
                side: _getBorderSide(snapshot.data)),
            color: _getColor(snapshot.data),
            child: Text(category.name,
                style: Theme.of(context).textTheme.headline4),
          );
        });
  }

  Color _getColor(String data) {
    if (data == category.name) {
      return CustomColors.filter_item_2;
    } else {
      return CustomColors.filter_item_1;
    }
  }

  _getBorderSide(String data) {
    if (data == category.name) {
      return BorderSide(color: CustomColors.filter_item_2);
    } else {
      return BorderSide(color: CustomColors.border);
    }
  }
}
