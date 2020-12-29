import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lesson_17/app/bloc_lib/favorites/favorites_cubit.dart';

import '../cocktails/cocktail_grid_item.dart';
import '../cocktails/cocktails_grid_delegate.dart';

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
    return BlocBuilder<FavoritesCubit, FavoritesState>(
        builder: (context, state) {
      if (state is FavoritesState) {
        final favorites = state.favoritesMap?.values;
        return GridView.builder(
          padding: const EdgeInsets.all(8.0),
          gridDelegate: cocktailsGridDelegate,
          itemCount: favorites?.length ?? 0,
          itemBuilder: (context, index) {
            return CocktailGridItem(favorites?.elementAt(index));
          },
        );
      }

      return Container(
        child: Center(child: Text('Ничего не добавлено')),
      );
    });
  }
}
