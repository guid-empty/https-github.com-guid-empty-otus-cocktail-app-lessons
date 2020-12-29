import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

import '../../redux/favorites/state.dart';
import '../../redux/state.dart';
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

  Widget _buildBody(BuildContext context) {
    return StoreConnector<AppState, FavoritesState>(
      converter: (store) => store.state.favoritesState,
      builder: (context, state) {
        final favorites = state.favoritesMap.values;

        if (favorites.isNotEmpty) {
          return GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: cocktailsGridDelegate,
            itemCount: favorites?.length ?? 0,
            itemBuilder: (context, index) =>
                CocktailGridItem(favorites?.elementAt(index)),
          );
        }

        return Container(
          child: Center(child: Text('Ничего не добавлено')),
        );
      },
    );
  }
}
