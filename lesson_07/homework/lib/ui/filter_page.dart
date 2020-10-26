import 'package:cocktail/core/models.dart';
import 'package:cocktail/core/src/model/cocktail_category.dart';
import 'package:flutter/material.dart';

import 'widgets/search/view/filter_bar.dart';
import 'widgets/search/view/results_grid.dart';

class CocktailsFilterScreen extends StatelessWidget {
  const CocktailsFilterScreen({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var categories = CocktailCategory.values;
    return Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Column(children: [
          SearchBar(),
          Expanded(child: _buildScrollableArea(categories))
        ]));
  }

  CustomScrollView _buildScrollableArea(Iterable<CocktailCategory> categories) {
    return CustomScrollView(slivers: [
      SliverPersistentHeader(pinned: true, delegate: FilterBar(categories)),
      ResultsGrid(),
    ]);
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.fromLTRB(13, 49, 13, 0),
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 70, 69, 81)),
            color: const Color.fromARGB(255, 24, 23, 35),
            borderRadius: const BorderRadius.all(const Radius.circular(65))),
        child: TextField(
            decoration: InputDecoration.collapsed(hintText: null),
            style: Theme.of(context).textTheme.bodyText1));
  }
}
