import 'package:flutter/material.dart';
import 'package:lesson/core/src/model/cocktail_category.dart';
import 'package:lesson/hero/style/colors.dart';

class CategoriesFilterBarDelegate extends SliverPersistentHeaderDelegate {
  CategoriesFilterBarDelegate(this.categories,
      {this.onCategorySelected, this.selectedCategory});

  final Iterable<CocktailCategory> categories;

  final ValueChanged<CocktailCategory> onCategorySelected;

  final CocktailCategory selectedCategory;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return CategoriesFilterBar(categories,
        onCategorySelected: onCategorySelected,
        selectedCategory: selectedCategory);
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) =>
      true;
}

class CategoriesFilterBar extends StatelessWidget {
  const CategoriesFilterBar(this.categories,
      {Key key, this.onCategorySelected, this.selectedCategory})
      : super(key: key);

  final Iterable<CocktailCategory> categories;

  final ValueChanged<CocktailCategory> onCategorySelected;

  final CocktailCategory selectedCategory;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        itemBuilder: (ctx, index) => _categoryItemBuilder(
            context,
            categories.elementAt(index),
            categories.elementAt(index) == selectedCategory),
        separatorBuilder: _separatorBuilder,
        itemCount: categories.length);
  }

  Widget _categoryItemBuilder(
      BuildContext context, CocktailCategory category, bool isSelected) {
    return FilterChip(
      selected: isSelected,
      selectedColor: CustomColors.filter_item_selected_color,
      backgroundColor: CustomColors.filter_item_color,
      onSelected: (value) {
        if (value) {
          onCategorySelected?.call(category);
        }
      },
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 14),
      showCheckmark: false,
      label: Text(
        category.name,
        style: Theme.of(context).textTheme.subtitle1,
      ),
    );
  }

  Widget _separatorBuilder(BuildContext context, int index) {
    return const SizedBox(width: 10);
  }
}
