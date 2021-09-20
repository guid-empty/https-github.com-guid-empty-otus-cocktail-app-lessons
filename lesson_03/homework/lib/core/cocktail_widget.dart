import 'package:flutter/cupertino.dart';
import 'package:homework/models/models.dart';

class CocktailWidget extends  InheritedWidget {
  final String id;
  final String name;
  final String instruction;
  final CocktailCategory category;
  final GlassType glassType;
  final CocktailType cocktailType;
  final Iterable<IngredientDefinition> ingredients;
  final String drinkThumbUrl;
  final bool isFavourite;

  CocktailWidget({
    Key key,
    @required this.id,
    @required this.name,
    @required this.instruction,
    @required this.category,
    @required this.glassType,
    @required this.cocktailType,
    @required this.ingredients,
    @required this.drinkThumbUrl,
    @required this.isFavourite,
    @required Widget child,
  }) : super(key: key, child: child);

  factory CocktailWidget.fromCocktail(Cocktail cocktail, Widget child) {
    return CocktailWidget(
      id: cocktail.id, 
      name: cocktail.name, 
      instruction: cocktail.instruction, 
      category: cocktail.category, 
      glassType: cocktail.glassType, 
      cocktailType: cocktail.cocktailType, 
      ingredients: cocktail.ingredients, 
      drinkThumbUrl: cocktail.drinkThumbUrl, 
      isFavourite: cocktail.isFavourite,
      child: child
    );
  }

  static CocktailWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CocktailWidget>();
  }

  @override
  bool updateShouldNotify(CocktailWidget old) {
    return id != old.id || name != old.name || instruction != old.instruction 
          || category != old.category || glassType != old.glassType || cocktailType != old.cocktailType
          || ingredients != old.ingredients || drinkThumbUrl != old.drinkThumbUrl || isFavourite != old.isFavourite;
  }
}