import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/aplication/application_scaffold.dart';
import 'package:cocktail_app/ui/pages/categories_fitler_bar_delegate.dart';
import 'package:cocktail_app/ui/pages/cocktail_grid_item.dart';
import 'package:cocktail_app/ui/state/fav_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:provider/provider.dart';

class FavoritePageWidget extends StatefulWidget {
  final CocktailCategory selectedCategory;

  const FavoritePageWidget({Key key, @required this.selectedCategory}) : super(key: key);

  @override
  _FavoritePageWidgetState createState() => _FavoritePageWidgetState(selectedCategory);

  static SliverPersistentHeader buildSliverPersistentHeader(ValueNotifier<CocktailCategory> _categoryNotifier) {
    return SliverPersistentHeader(
      delegate: CategoriesFilterBarDelegate(
        CocktailCategory.values,
        onCategorySelected: (category) {
          _categoryNotifier.value = category;
        },
        selectedCategory: _categoryNotifier.value,
      ),
      floating: true,
    );
  }

  static SliverPadding buildSliverPadding(Iterable<CocktailDefinition> cocktails) {
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
  }
}

class _FavoritePageWidgetState extends State<FavoritePageWidget> {
  final CocktailCategory selectedCategory;
  final ValueNotifier<CocktailCategory> _categoryNotifier;

  _FavoritePageWidgetState(this.selectedCategory)
      : _categoryNotifier = ValueNotifier<CocktailCategory>(selectedCategory);

  @override
  Widget build(BuildContext context) {
    return ApplicationScaffold(
      title: 'Избранное',
      currentSelectedNavBarItem: 2,
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
    return Observer(builder: (context) {
      var cocktails = fetchCocktails(context);
      return FavoritePageWidget.buildSliverPadding(cocktails);
    });
  }

  Iterable<CocktailDefinition> fetchCocktails(BuildContext context) {
    var favorite = Provider.of<FavStore>(context).favouriteCocktails.values;
    return favorite.where((element) => _categoryNotifier.value == null || element.category == _categoryNotifier.value);
  }
}
