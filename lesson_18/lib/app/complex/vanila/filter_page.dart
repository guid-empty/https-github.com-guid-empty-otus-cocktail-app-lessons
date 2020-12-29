import 'package:flutter/material.dart';
import 'package:lesson_18/app/complex/core/src/model/cocktail_category.dart';
import 'package:lesson_18/app/complex/core/src/model/cocktail_definition.dart';
import 'package:lesson_18/app/complex/core/src/repository/cocktail_repository.dart';
import 'package:lesson_18/app/complex/ui/cocktails/cocktail_grid_item.dart';
import 'package:lesson_18/app/complex/ui/cocktails/cocktails_grid_delegate.dart';
import 'package:lesson_18/app/complex/ui/cocktails/fitler_bar.dart';

class CocktailsFilterScreen extends StatefulWidget {
  const CocktailsFilterScreen(
    this.repository, {
    Key key,
  }) : super(key: key);

  final CocktailRepository repository;

  @override
  _CocktailsFilterScreenState createState() => _CocktailsFilterScreenState();
}

class _CocktailsFilterScreenState extends State<CocktailsFilterScreen> {
  final _categoryNotifier =
      ValueNotifier<CocktailCategory>(CocktailCategory.values.first);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
      ),
    );
  }

  Widget _buildCocktailItems(BuildContext context) {
    return FutureBuilder<Iterable<CocktailDefinition>>(
        future: widget.repository
            .fetchCocktailsByCocktailCategory(_categoryNotifier.value),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(
                child: Center(child: Text(snapshot.error.toString())));
          }

          if (snapshot.hasData) {
            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                  delegate: SliverChildBuilderDelegate((ctx, index) {
                    return CocktailGridItem(snapshot.data.elementAt(index));
                  }, childCount: snapshot.data.length),
                  gridDelegate: cocktailsGridDelegate),
            );
          }

          //todo set loader
          return SliverFillRemaining(child: const SizedBox());
        });
  }
}
