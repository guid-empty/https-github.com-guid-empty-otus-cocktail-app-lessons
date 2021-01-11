import 'dart:async';

import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/main.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:flutter/material.dart';

import 'favorite_page.dart';

class FilterResultsPageWidget extends StatefulWidget {
  final CocktailCategory selectedCategory;

  const FilterResultsPageWidget({Key key, @required this.selectedCategory}) : super(key: key);

  @override
  _FilterResultsPageWidgetState createState() => _FilterResultsPageWidgetState(selectedCategory);
}

class _FilterResultsPageWidgetState extends State<FilterResultsPageWidget> {
  final CocktailCategory selectedCategory;
  final ValueNotifier<CocktailCategory> _categoryNotifier;

  _FilterResultsPageWidgetState(this.selectedCategory)
      : _categoryNotifier = ValueNotifier<CocktailCategory>(selectedCategory);

  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Мой бар',
      currentSelectedNavBarItem: 1,
      child: ValueListenableBuilder(
        valueListenable: _categoryNotifier,
        builder: (ctx, value, child) {
          return buildCustomScrollView(context);
        },
      ),
    );
  }

  CustomScrollView buildCustomScrollView(BuildContext context) {
    return CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 21)),
            FavoritePageWidget.buildSliverPersistentHeader(_categoryNotifier),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            _buildCocktailItems(context)
          ],
        );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: fetchCocktails(context),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(child: Center(child: Text(snapshot.error.toString())));
          }

          if (snapshot.hasData) {
            return FavoritePageWidget.buildSliverPadding(snapshot.data);
          }

          //  todo set loader
          return SliverFillRemaining(child: const SizedBox());
        });
  }

  Future<Iterable<CocktailDefinition>> fetchCocktails(BuildContext context) {
      return repository.fetchCocktailsByCocktailCategory(_categoryNotifier.value);
  }
}
