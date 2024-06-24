import 'package:cocktaildbhttpusing/models.dart';
import 'package:cocktaildbhttpusing/src/model/cocktail_type.dart';
import 'package:cocktaildbhttpusing/src/model/glass_type.dart';
import 'package:cocktaildbhttpusing/src/model/ingredient_definition.dart';
import 'package:flutter/foundation.dart';

import '../dto/cocktail_dto.dart';

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

  factory Cocktail.fromDto(CocktailDto dto) {
    final glass = GlassType.parse(dto.strGlass);
    final cocktailType = CocktailType.parse(dto.strAlcoholic);
    final category = CocktailCategory.parse(dto.strCategory);

    var ingredients = <IngredientDefinition>[];

    _getIngredients(dto).forEach((key, value) => ingredients.add(IngredientDefinition(key, value)));

    return Cocktail(
      id: dto.idDrink,
      category: category,
      cocktailType: cocktailType,
      glassType: glass,
      instruction: dto.strInstructions,
      isFavourite: true,
      name: dto.strDrink,
      ingredients: ingredients,
      drinkThumbUrl: dto.strDrinkThumb,
    );
  }

  static Map<String, String> _getIngredients(CocktailDto dto) {
    return <String, String>{
      if (dto.strIngredient1 != null) dto.strIngredient1: dto.strMeasure1,
      if (dto.strIngredient2 != null) dto.strIngredient2: dto.strMeasure2,
      if (dto.strIngredient3 != null) dto.strIngredient3: dto.strMeasure3,
      if (dto.strIngredient4 != null) dto.strIngredient4: dto.strMeasure4,
      if (dto.strIngredient5 != null) dto.strIngredient5: dto.strMeasure5,
      if (dto.strIngredient6 != null) dto.strIngredient6: dto.strMeasure6,
      if (dto.strIngredient7 != null) dto.strIngredient7: dto.strMeasure7,
      if (dto.strIngredient8 != null) dto.strIngredient8: dto.strMeasure8,
      if (dto.strIngredient9 != null) dto.strIngredient9: dto.strMeasure9,
      if (dto.strIngredient10 != null) dto.strIngredient10: dto.strMeasure10,
      if (dto.strIngredient11 != null) dto.strIngredient11: dto.strMeasure11,
      if (dto.strIngredient12 != null) dto.strIngredient12: dto.strMeasure12,
      if (dto.strIngredient13 != null) dto.strIngredient13: dto.strMeasure13,
      if (dto.strIngredient14 != null) dto.strIngredient14: dto.strMeasure14,
      if (dto.strIngredient15 != null) dto.strIngredient15: dto.strMeasure15,
    };
  }
}
