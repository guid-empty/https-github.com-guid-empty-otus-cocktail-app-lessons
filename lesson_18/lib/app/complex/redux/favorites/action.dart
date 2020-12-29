import '../../core/models.dart';

class SetFavoritesAction {
  final CocktailDefinition cocktail;
  final bool isFavorites;

  const SetFavoritesAction(this.cocktail, this.isFavorites);
}
