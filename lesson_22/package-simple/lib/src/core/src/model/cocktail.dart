import 'package:meta/meta.dart';

import 'cocktail_category.dart';
import 'cocktail_type.dart';
import 'glass_type.dart';
import 'ingredient_definition.dart';

///
/// Cocktail Model Definition based on response from
/// curl https://the-cocktail-db.p.rapidapi.com/popular.php
/// Current scheme is:
/// ```
///         {
///            "idDrink": "11022",
///            "strDrink": "Allies Cocktail",
///            "strDrinkAlternate": null,
///            "strDrinkES": null,
///            "strDrinkDE": null,
///            "strDrinkFR": null,
///            "strDrinkZH-HANS": null,
///            "strDrinkZH-HANT": null,
///            "strTags": null,
///            "strVideo": null,
///            "strCategory": "Ordinary Drink",
///            "strIBA": null,
///            "strAlcoholic": "Alcoholic",
///            "strGlass": "Cocktail glass",
///            "strInstructions": "Stir all ingredients with ice, strain contents into a cocktail glass, and serve.",
///            "strInstructionsES": null,
///            "strInstructionsDE": "Alle Zutaten mit Eis verrühren, Inhalt in ein Cocktailglas abseihen und servieren.",
///            "strInstructionsFR": null,
///            "strInstructionsZH-HANS": null,
///            "strInstructionsZH-HANT": null,
///            "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/qvprvp1483388104.jpg",
///            "strIngredient1": "Dry Vermouth",
///            "strIngredient2": "Gin",
///            "strIngredient3": "Kummel",
///            "strIngredient4": null,
///            "strIngredient5": null,
///            "strIngredient6": null,
///            "strIngredient7": null,
///            "strIngredient8": null,
///            "strIngredient9": null,
///            "strIngredient10": null,
///            "strIngredient11": null,
///            "strIngredient12": null,
///            "strIngredient13": null,
///            "strIngredient14": null,
///            "strIngredient15": null,
///            "strMeasure1": "1 oz ",
///            "strMeasure2": "1 oz ",
///            "strMeasure3": "1/2 tsp ",
///            "strMeasure4": null,
///            "strMeasure5": null,
///            "strMeasure6": null,
///            "strMeasure7": null,
///            "strMeasure8": null,
///            "strMeasure9": null,
///            "strMeasure10": null,
///            "strMeasure11": null,
///            "strMeasure12": null,
///            "strMeasure13": null,
///            "strMeasure14": null,
///            "strMeasure15": null,
///            "strCreativeCommonsConfirmed": "No",
///            "dateModified": "2017-01-02 20:15:04"
///        }
///  ```
///
class Cocktail {
  final String id;
  final String name;
  final String instruction;
  final CocktailCategory category;
  final GlassType glassType;
  final CocktailType cocktailType;
  final Iterable<IngredientDefinition> ingredients;
  final String drinkThumbUrl;
  final bool isFavourite;

  Cocktail({
    @required this.id,
    @required this.name,
    @required this.instruction,
    @required this.category,
    @required this.glassType,
    @required this.cocktailType,
    @required this.ingredients,
    @required this.drinkThumbUrl,
    @required this.isFavourite,
  });

  @override
  String toString() {
    return 'Cocktail{id: $id, name: $name, instruction: $instruction, category: $category, glassType: $glassType, cocktailType: $cocktailType, ingredients: $ingredients, drinkThumbUrl: $drinkThumbUrl, isFavourite: $isFavourite}';
  }
}
