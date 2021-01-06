import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/state.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/view_models/favorites.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'cocktail_grid_item.dart';

class FavouriteCocktailsPage extends StatefulWidget {
  @override
  _FavouriteCocktailsPageState createState() => _FavouriteCocktailsPageState();
}

class _FavouriteCocktailsPageState extends State<FavouriteCocktailsPage> {
  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
      child: _buildFavoriteCocktailItems(context),
    );
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) {
    return StoreConnector<AppState, FavoritesViewModel>(
      converter: (store) =>
          store.state.favoriteState.favoritesMap.values.isNotEmpty
              ? FavoritesViewModel.success(
                  cocktails: store.state.favoriteState.favoritesMap.values.toList())
              : FavoritesViewModel.empty(),
      builder: (context, vm) => vm.when(
          loading: () => Center(
                child: CircularProgressIndicator(),
              ),
          success: (cocktails) =>
              CustomScrollView(slivers: [_buildItems(cocktails)]),
        empty: () => Center(
          child: Text(
            "Добавьте коктейли в избранное",
            style: Theme.of(context).textTheme.headline3,
          ),
        )
      ),
    );
  }

  Widget _buildItems(List<CocktailDefinition> cocktails) => SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return CocktailGridItem(cocktails.elementAt(index),
                selectedCategory: CocktailCategory.cocktail);
            }, childCount: cocktails.length),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: CocktailGridItem.aspectRatio,
                crossAxisSpacing: 6,
                mainAxisSpacing: 6,
                crossAxisCount: 2)),
      );
}
