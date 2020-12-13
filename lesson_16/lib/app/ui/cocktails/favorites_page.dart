import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/src/model/cocktail_definition.dart';
import 'package:lesson_16/app/provider/favorites_model.dart';
import 'package:provider/provider.dart';

import 'cocktail_grid_item.dart';
import 'cocktails_grid_delegate.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Избранное'),
      ),
      body: _buildBody(context),
    );
  }

  // Widget _buildBody(BuildContext context) {
  //   return Consumer<FavoritesViewModel>(builder: (context, model, _) {
  //     return GridView.builder(
  //       padding: const EdgeInsets.all(8.0),
  //       gridDelegate: cocktailsGridDelegate,
  //       itemCount: model?.favorites?.length ?? 0,
  //       itemBuilder: (context, index) {
  //         return CocktailGridItem(model?.favorites?.elementAt(index));
  //       },
  //     );
  //   });
  // }

  // вариант с selector
  Widget _buildBody(BuildContext context) {
    final favorites = context
        .select<FavoritesViewModel, Iterable<CocktailDefinition>>((value) {
      return value.favorites;
    });
    print('FavoritesPage build');
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      gridDelegate: cocktailsGridDelegate,
      itemCount: favorites?.length ?? 0,
      itemBuilder: (context, index) {
        return CocktailGridItem(favorites?.elementAt(index));
      },
    );
  }
}
