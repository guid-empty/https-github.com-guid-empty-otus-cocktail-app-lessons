import 'package:cocktail/core/models.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'category_bubble.dart';

class FilterBar extends SliverPersistentHeaderDelegate {
  final Iterable<CocktailCategory> _categories;

  FilterBar(this._categories);

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
        color: Theme.of(context).backgroundColor,
        padding: const EdgeInsets.fromLTRB(8, 22, 0, 22),
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: _categories
              .map(
                  (e) => CategoryBubble(e))
              .toList(),
        )
    );
  }

  @override
  double get maxExtent => 90;

  @override
  double get minExtent => 90;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
