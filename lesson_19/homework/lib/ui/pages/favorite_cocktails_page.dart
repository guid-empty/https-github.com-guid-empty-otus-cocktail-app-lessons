import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/categories/categories_view_model.dart';
import 'package:cocktail_app/redux/categories/thunks/on_selected_category.dart';
import 'package:cocktail_app/redux/coctails/cocktails_view_model.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';

import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

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

  Widget _buildFilterBar(BuildContext context) {
    final appStore = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, CategoriesViewModel>(
      converter: (Store<AppState> store) {
        return store.state.categoriesState.categories.isEmpty
            ? CategoriesViewModel.loading()
            : CategoriesViewModel.success(
            categories: store.state.categoriesState.categories,
            selectedCategory: store.state.categoriesState.selectedCategory
        );
      },
      builder: (context, viewModel) => viewModel.when(
        loading: () => SliverToBoxAdapter(
          child: Container(),
        ),
        success: (categories, actualCategory) {
          return SliverPersistentHeader(
            delegate: CategoriesFilterBarDelegate(
              categories,
              onCategorySelected: (category) =>
                  appStore.dispatch(OnSelectCocktailCategory(category)),
              selectedCategory: actualCategory,
            ),
            floating: true,
          );
        },
      ),
    );
  }

  Widget _buildFavoriteCocktailItems(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: SizedBox(height: 21)),
        _buildFilterBar(context),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        _buildCocktailItems(context)
      ],
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return StoreConnector<AppState, CocktailsViewModel>(
      converter: (store) {
        if (store.state.favoritesState.favoritesMap.isEmpty) {
          return CocktailsViewModel.loading();
        }

        List filteredCocktails = store.state.cocktailsState.cocktails.where((element) {
          return store.state.favoritesState.isFavorites(element.id);
        }).toList();

        if (filteredCocktails.isEmpty) {
          return CocktailsViewModel.loading();
        } else {
          return CocktailsViewModel.success(
              cocktails: filteredCocktails,
              selectedCategory: store.state.categoriesState.selectedCategory
          );
        }
      },
      builder: (context, vm) => vm.when(
          loading: () => SliverToBoxAdapter(
            child: Center(
              child: Text("No favorite cocktails\nin category", style: TextStyle(color: Colors.white))
            )
          ),
          success: (cocktails, category) {
            return _buildItems(cocktails, category);
          }
      )
    );
  }

  Widget _buildItems(Iterable<CocktailDefinition> cocktails, CocktailCategory category) {
    if (cocktails != null) {
      return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate(
                    (ctx, index) => CocktailGridItem(cocktails.elementAt(index), selectedCategory: category),
                childCount: cocktails?.length ?? 0,
              ),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: CocktailGridItem.aspectRatio,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 2)
          )
      );
    }
    return SliverFillRemaining(
      child: const SizedBox(),
    );
  }
}
