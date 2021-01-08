import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:cocktail_app/ui/style/custom_colors.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';

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
        child: CustomScrollView(
          slivers: [_buildFavoriteCocktailItems(context)],
        ));
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);

    return Observer(
      builder: (_) {
        if (store.favoriteCocktails.isEmpty) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                "Нет избранных коктейлей",
                style: TextStyle(
                  color: CustomColors.headline1,
                ),
              ),
            ),
          );
        } else {
          return SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((ctx, index) {
                return CocktailGridItem(
                    store.favoriteCocktails.elementAt(index),
                    selectedCategory: store.currentCategory);
              }, childCount: store.favoriteCocktails.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: CocktailGridItem.aspectRatio,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 2),
            ),
          );
        }
      },
    );
  }
}
