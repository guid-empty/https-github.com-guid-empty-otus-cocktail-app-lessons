import 'package:cocktail/core/models.dart';
import 'package:flutter/material.dart';

import '../filter_service.dart';

class CoctailCategoryList extends StatelessWidget {
  final CocktailCategory activeCategory;

  CoctailCategoryList({
    @required this.activeCategory,
    Key key,
  }) : super(key: key);

  final FilterService _filterService = FilterService.single();

  final ButtonStyle activeStyle = OutlinedButton.styleFrom(
    backgroundColor: Color(0xff3B3953),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 46,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(
          vertical: 0,
          horizontal: 8,
        ),
        itemCount: CocktailCategory.values.length,
        separatorBuilder: (context, index) => const SizedBox(width: 8),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final category = CocktailCategory.values.elementAt(index);

          return OutlinedButton(
            onPressed: () {
              // очистка контрола
              _filterService.clearSearchInCategoryTextField();
              // обновление состояния выбранной категории
              _filterService.activeCategory$$.add(category);

              _filterService.searchFiledFocus.unfocus();
            },
            child: Text(
              category.value,
            ),
            style: activeCategory == category ? activeStyle : null,
          );
        },
      ),
    );
  }
}
