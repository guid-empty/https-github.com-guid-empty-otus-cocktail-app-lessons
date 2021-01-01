import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/main.dart';
import 'package:cocktail_app/redux/app_state.dart';
import 'package:cocktail_app/redux/categories/categories_view_model.dart';
import 'package:cocktail_app/redux/categories/thunks/on_selected_category.dart';
import 'package:cocktail_app/redux/coctails/cocktails_view_model.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class FilterResultsPageWidget extends StatefulWidget {
  final CocktailCategory selectedCategory;

  const FilterResultsPageWidget({Key key, @required this.selectedCategory}) : super(key: key);

  @override
  _FilterResultsPageWidgetState createState() => _FilterResultsPageWidgetState(selectedCategory);
}

class _FilterResultsPageWidgetState extends State<FilterResultsPageWidget> {
  final CocktailCategory selectedCategory;
  _FilterResultsPageWidgetState(this.selectedCategory);

  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Мой бар',
      currentSelectedNavBarItem: 1,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 21)),
          _buildFilterBar(context),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          _buildCocktailItems(context)
        ],
      )
    );
  }

  Widget _buildFilterBar(BuildContext context) {
    final appStore = StoreProvider.of<AppState>(context);

    return StoreConnector<AppState, CategoriesViewModel>(
      onInit: (Store<AppState> store) {
        store.dispatch(OnSelectCocktailCategory(selectedCategory));
      },
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

  Widget _buildCocktailItems(BuildContext context) {
    return StoreConnector<AppState, CocktailsViewModel>(
      converter: (store) => store.state.cocktailsState.cocktails.isNotEmpty
          ? CocktailsViewModel.success(
            cocktails: store.state.cocktailsState.cocktails,
            selectedCategory: store.state.categoriesState.selectedCategory
          )
          : CocktailsViewModel.loading(),
      builder: (context, vm) => vm.when(
        loading: () => SliverToBoxAdapter(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        ),
        success: (cocktails, category) {
          return _buildItems(cocktails, category);
        }
      ),
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
