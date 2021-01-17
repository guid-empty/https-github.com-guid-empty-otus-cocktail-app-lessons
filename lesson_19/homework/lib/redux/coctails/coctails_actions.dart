import 'package:cocktail_app/core/models.dart';

class SetCocktailsAction {
  final List<CocktailDefinition> cocktails;

  SetCocktailsAction(this.cocktails);
}
