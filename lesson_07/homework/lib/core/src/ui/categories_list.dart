import 'package:cocktail/core/models.dart';
import 'package:flutter/material.dart';

typedef CategorySelectionCallback = void Function(CocktailCategory);

class CategoriesList extends StatelessWidget {
  final CategorySelectionCallback onCatSelection;
  final CocktailCategory _selected;

  CategoriesList(this._selected, this.onCatSelection);

  @override
  Widget build(BuildContext context) {
    final categories = List<Widget>.generate(CocktailCategory.values.length,
        (index) => CategoryWidget(index, _selected, onCatSelection));
    return Container(
        width: double.infinity,
        height: 90,
        padding: EdgeInsets.fromLTRB(10, 22, 10, 22),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext context, int index) {
              return categories.elementAt(index);
            },
            separatorBuilder: (BuildContext context, int index) {
              return Container(width: 10);
            },
            itemCount: categories.length));
    // return SingleChildScrollView(
    //   child: Row(children: categories),
    //   scrollDirection: Axis.horizontal,
    // );
  }
}

class CategoryWidget extends StatelessWidget {
  final int index;
  final CocktailCategory _selected;
  final CategorySelectionCallback onCatSelection;

  CategoryWidget(this.index, this._selected, this.onCatSelection);

  @override
  Widget build(BuildContext context) {
    var cat = CocktailCategory.values.elementAt(index);
    bool highlight = cat == _selected;
    return GestureDetector(
        onTap: () {
          onCatSelection(cat);
        },
        child: Container(
            // margin: EdgeInsets.fromLTRB(10, 22,
            //     index == CocktailCategory.values.length - 1 ? 10 : 0, 8),
            padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
            decoration: BoxDecoration(
                color: Color(highlight ? 0xFF3B3953 : 0xFF201F2C),
                borderRadius: BorderRadius.all(Radius.circular(30)),
                border: Border.all(color: Color(0xFF2D2C39))),
            child: Text(
              cat.value,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  height: 18 / 15,
                  fontFamily: "SF Pro Text",
                  fontWeight: FontWeight.w400),
            )));
  }
}
