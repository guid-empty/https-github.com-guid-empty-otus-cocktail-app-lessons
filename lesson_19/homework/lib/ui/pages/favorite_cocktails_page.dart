import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:cocktail_app/ui/stores/favourite_cocktail/favourite_cocktail_list_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class FavouriteCocktailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
      child: Observer(builder: (observerCtx) {
        final store = observerCtx.watch<FavouriteCocktailListStore>();

        return CustomScrollView(
          slivers: [SliverToBoxAdapter(child: SizedBox(height: 21)), _buildFavouriteCocktailItems(store)],
        );
      }),
    );
  }

  Widget _buildFavouriteCocktailItems(FavouriteCocktailListStore store) => store.state.when(
      loaded: () {
        final cocktails = store.list;
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((ctx, index) {
                return CocktailGridItem(cocktails.elementAt(index));
              }, childCount: cocktails.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: CocktailGridItem.aspectRatio,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 2)),
        );
      },
      error: (reason) => SliverFillRemaining(child: Center(child: Text(reason))),
      loading: () => SliverFillRemaining(child: const SizedBox()));
}
