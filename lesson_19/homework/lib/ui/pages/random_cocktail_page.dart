import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:cocktail_app/ui/pages/filter_results_page.dart';
import 'package:flutter/material.dart';

class RandomCocktailPageWidget extends StatefulWidget {
  final AsyncCocktailRepository repository;

  const RandomCocktailPageWidget(this.repository, {Key key}) : super(key: key);

  @override
  _RandomCocktailPageWidgetState createState() => _RandomCocktailPageWidgetState();
}

class _RandomCocktailPageWidgetState extends State<RandomCocktailPageWidget> {
  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Коктейль дня',
      currentSelectedNavBarItem: 0,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(child: SizedBox(height: 21)),
          SliverPersistentHeader(
            delegate: CategoriesFilterBarDelegate(
              CocktailCategory.values,
              onCategorySelected: (category) {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => FilterResultsPageWidget(selectedCategory: category),
                  ),
                );
              },
            ),
            floating: true,
          ),
          SliverToBoxAdapter(child: SizedBox(height: 24)),
          _buildRandomCocktailPage(context)
        ],
      ),
    );
  }

  Widget _buildRandomCocktailPage(BuildContext context) {
    return FutureBuilder<Cocktail>(
        future: widget.repository.getRandomCocktail(),
        builder: (ctx, snapshot) {
          if (snapshot.hasError) {
            return SliverFillRemaining(
              child: Center(
                child: Text(snapshot.error.toString()),
              ),
            );
          }

          if (snapshot.hasData) {
            final cocktail = snapshot.data;
            final cocktailDefinition = CocktailDefinition(
              id: cocktail.id,
              name: cocktail.name,
              drinkThumbUrl: cocktail.drinkThumbUrl,
              isFavourite: cocktail.isFavourite,
            );

            return SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              sliver: SliverGrid(
                delegate: SliverChildBuilderDelegate(
                  (ctx, index) {
                    return CocktailGridItem(cocktailDefinition, selectedCategory: cocktail.category);
                  },
                  childCount: 1,
                ),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: CocktailGridItem.aspectRatio,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  crossAxisCount: 1,
                ),
              ),
            );
          }

          return SliverFillRemaining(child: const SizedBox());
        });
  }
}
