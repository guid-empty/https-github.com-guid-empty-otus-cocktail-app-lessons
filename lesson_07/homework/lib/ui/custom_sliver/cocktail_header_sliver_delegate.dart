import 'dart:async';

import 'package:cocktail/core/src/model/cocktail_category.dart';
import 'package:cocktail/core/src/repository/async_cocktail_repository.dart';
import 'package:cocktail/events/category_filter_events.dart';
import 'package:cocktail/ui/custom_widgets/filter/filter_text_item.dart';
import 'package:flutter/cupertino.dart';

class CocktailsCategoriesList extends SliverPersistentHeaderDelegate {
  double height;
  double openHeight;
  StreamController cocktailsController;

  CocktailsCategoriesList({
    this.cocktailsController,
    this.height,
    this.openHeight,
  });

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    var cocktails = CocktailCategory.values as List;
    return StreamBuilder<Object>(
        stream: cocktailsController.stream.where((event) => event is CocktailCategory),
        initialData: CocktailCategory.values.first,
        builder: (context, snapshot) {
          debugPrint("${snapshot.data} <= _CocktailsCategoriesList");
          if (snapshot.hasData && snapshot.data is CocktailCategory) {
            _searchCocktails(snapshot.data as CocktailCategory);
          }
          return Container(
            height: 46,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CocktailCategory.values.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: GestureDetector(
                    onTap: () {
                      cocktailsController.sink
                          .add(cocktails[index]);
                    },
                    child: FilterTextItem(
                      category: cocktails[index].name,
                      isSelected: _getIsSelectedValue(
                          cocktails[index].name,
                          (snapshot.data as CocktailCategory).name),
                    ),
                  ),
                );
              },
            ),
          );
        });
  }

  _getIsSelectedValue(String name, String data) {
    return name == data;
  }

  _searchCocktails(CocktailCategory category) async {
    cocktailsController.sink.add(Loading());
    await AsyncCocktailRepository()
        .fetchCocktailsByCocktailCategory(category)
        .then((value) => {
      if (value != null && value.isNotEmpty)
        {cocktailsController.sink.add(SuccessEvent(value))}
      else
        {cocktailsController.sink.add(Error("Коктейли не найдены"))}
    })
        .catchError(
            (error) => {cocktailsController.sink.add(Error(error.toString()))});
  }

  @override
  double get maxExtent => openHeight;

  @override
  double get minExtent => openHeight;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}