import '../../core/src/model/cocktail_definition.dart';

class SetCocktailsAction {
  final List<CocktailDefinition> cocktails;

  SetCocktailsAction(this.cocktails);
}
