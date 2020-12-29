import 'package:flutter/material.dart';
import 'package:lesson_16/app/core/models.dart';
import 'package:lesson_16/app/core/src/model/cocktail_category.dart';
import 'package:lesson_16/app/ui/cocktails/cocktail_grid_item.dart';
import 'package:lesson_16/app/ui/cocktails/cocktails_grid_delegate.dart';
import 'package:lesson_16/app/ui/cocktails/fitler_bar.dart';
import 'package:provider/provider.dart';

import 'filter_page_model.dart';

class CocktailsFilterScreenProviderStyle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: SizedBox(height: 21)),
            _buildFilterBar(context),
            SliverToBoxAdapter(child: SizedBox(height: 24)),
            _buildCocktailItems(context)
          ],
        ),
      ),
    );
  }

  Widget _buildFilterBar(BuildContext context) {
    print('_buildFilterBar');
    return Builder(builder: (context) {
      print('Builder _buildFilterBar');
      return SliverPersistentHeader(
        delegate: CategoriesFilterBarDelegate(
          CocktailCategory.values,
          onCategorySelected: (category) {
            context.read<FilterPageViewModel>().currentCategory = category;
          },
          selectedCategory:
              context.watch<FilterPageViewModel>().currentCategory,
        ),
        floating: true,
      );
    });
    return Consumer<FilterPageViewModel>(
      builder: (context, model, _) {
        if (model.categories?.isNotEmpty != true) {
          return SliverToBoxAdapter();
        }
        return SliverPersistentHeader(
          delegate: CategoriesFilterBarDelegate(
            CocktailCategory.values,
            onCategorySelected: (category) {
              model.currentCategory = category;
            },
            selectedCategory: model.currentCategory,
          ),
          floating: true,
        );
      },
    );
  }

  // Widget _buildFilterBar(BuildContext context) {
  //   return Consumer<FilterPageModel>(
  //     builder: (context, model, _) {
  //       if (model.categories?.isNotEmpty != true) {
  //         return SliverToBoxAdapter();
  //       }
  //       return SliverPersistentHeader(
  //         delegate: CategoriesFilterBarDelegate(
  //           CocktailCategory.values,
  //           onCategorySelected: (category) {
  //             model.currentCategory = category;
  //           },
  //           selectedCategory: model.currentCategory,
  //         ),
  //         floating: true,
  //       );
  //     },
  //   );
  // }

  Widget _buildCocktailItems(BuildContext context) {
    print('_buildCocktailItems');

    return Selector<FilterPageViewModel, Iterable<CocktailDefinition>>(
        selector: (context, model) => model.cocktails,
        shouldRebuild: (last,next) => last != next,
        builder: (context, cocktails, _) {
          print('Selector _buildCocktailItems:${cocktails?.length}');
          return _buildItems(cocktails);
        });

    // return Builder(builder: (context) {
    //   print('Builder _buildCocktailItems');
    //   return _buildItems(Provider.of<FilterPageViewModel>(context)?.cocktails);
    // });

    // return Consumer<FilterPageModel>(builder: (context,model,_){
    //   print('Consumer _buildCocktailItems');
    //   return _buildItems(model.cocktails);
    // });

    return Selector<FilterPageViewModel, Iterable<CocktailDefinition>>(
        selector: (context, model) => model.cocktails,
        shouldRebuild: (last, next) => true,
        builder: (context, cocktails, _) {
          print('Selector _buildCocktailItems:${cocktails?.length}');
          return _buildItems(cocktails);
        });
  }

  Widget _buildItems(Iterable<CocktailDefinition> cocktails) {
    if (cocktails != null) {
      return SliverPadding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate((ctx, index) {
              return CocktailGridItem(cocktails.elementAt(index));
            }, childCount: cocktails?.length ?? 0),
            gridDelegate: cocktailsGridDelegate),
      );
    }
    return SliverFillRemaining(child: const SizedBox());
  }
}
