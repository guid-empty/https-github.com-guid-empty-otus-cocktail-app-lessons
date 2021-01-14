import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:provider/provider.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:cocktail_app/stores/cocktail_store.dart';

class FilterResultsPageWidget extends StatefulWidget {
  final CocktailCategory selectedCategory;

  const FilterResultsPageWidget({Key key, @required this.selectedCategory})
      : super(key: key);

  @override
  _FilterResultsPageWidgetState createState() =>
      _FilterResultsPageWidgetState(selectedCategory);
}

class _FilterResultsPageWidgetState extends State<FilterResultsPageWidget> {
  final CocktailCategory selectedCategory;
  final ValueNotifier<CocktailCategory> _categoryNotifier;

  _FilterResultsPageWidgetState(this.selectedCategory)
      : _categoryNotifier = ValueNotifier<CocktailCategory>(selectedCategory);

  @override
  Widget build(BuildContext context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);

    return ApplicationScaffold(
      title: 'Мой бар',
      currentSelectedNavBarItem: 1,
      child: ValueListenableBuilder(
        valueListenable: _categoryNotifier,
        builder: (ctx, value, child) {
          return CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: SizedBox(height: 21)),
              SliverPersistentHeader(
                delegate: CategoriesFilterBarDelegate(
                  CocktailCategory.values,
                  onCategorySelected: (category) {
                    _categoryNotifier.value = category;
                    store.setCategory(category);
                  },
                  selectedCategory: _categoryNotifier.value,
                ),
                floating: true,
              ),
              SliverToBoxAdapter(child: SizedBox(height: 24)),
              _buildCocktailItems(context)
            ],
          );
        },
      ),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    //обращение к стору, созданному на уровне приложения
    final store = Provider.of<CocktailStore>(context);

    return Observer(
      builder: (_) {
        if (!store.hasResults) {
          return SliverFillRemaining(
            child: const SizedBox(),
          );
        }
        if (store.fetchCocktailsFuture.status == FutureStatus.rejected) {
          return SliverFillRemaining(
            child: Center(
              child: Text(
                store.fetchCocktailsFuture.error.toString(),
              ),
            ),
          );
        }
        return SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverGrid(
              delegate: SliverChildBuilderDelegate((ctx, index) {
                return CocktailGridItem(store.currentCocktails.elementAt(index),
                    selectedCategory: _categoryNotifier.value);
              }, childCount: store.currentCocktails.length),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: CocktailGridItem.aspectRatio,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 2)),
        );
      },
    );
  }
}
