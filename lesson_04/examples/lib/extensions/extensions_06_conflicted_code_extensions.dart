import 'package:cocktailappmodels/models.dart';

extension fromJsonExtension on Map<String, dynamic> {
  Cocktail toCocktail() => Cocktail(
        id: this['idDrink'] as String,
        name: this['strDrink'] as String,
        instruction: this['strInstructions'] as String,
      );
}
