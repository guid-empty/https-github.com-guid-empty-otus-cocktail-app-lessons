import 'package:cocktail/core/models.dart';
import 'package:flutter/material.dart';

typedef CategorySelectionCallback = void Function(CocktailCategory);

class CategoriesList extends StatelessWidget {
  final CategorySelectionCallback onCatSelection;
  CategoriesList(this.onCatSelection);

  @override
  Widget build(BuildContext context) {
    var categories = List<Widget>.generate(CocktailCategory.values.length,
        (index) => CategoryWidget(index, onCatSelection));
    return SingleChildScrollView(
      child: Row(children: categories),
      scrollDirection: Axis.horizontal,
    );
  }
}

class CategoryWidget extends StatelessWidget {

  final int index;
  final CategorySelectionCallback onCatSelection;

  CategoryWidget(this.index, this.onCatSelection);

  @override
  Widget build(BuildContext context) {
    var cat = CocktailCategory.values.elementAt(index);
    return GestureDetector(
        onTap: () {
          onCatSelection(cat);
        },
        child: Container(
            margin: EdgeInsets.fromLTRB(10, 22,
                index == CocktailCategory.values.length - 1 ? 10 : 0, 22),
            padding: EdgeInsets.fromLTRB(16, 14, 16, 14),
            decoration: BoxDecoration(
                color: Color(0xFF201F2C),
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
