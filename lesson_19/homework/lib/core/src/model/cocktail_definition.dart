import 'package:flutter/foundation.dart';
import 'dart:convert';

///
/// Cocktail Model Definition based on response from
/// curl curl https://the-cocktail-db.p.rapidapi.com/filter.php\?a\=Alcoholic|jora -p
/// Current scheme is:
/// ```
///   {
///   "strDrink": "Zorbatini",
///   "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/wtkqgb1485621155.jpg",
///   "idDrink": "16963"
///   },
///   {
///   "strDrink": "Zorro",
///   "strDrinkThumb": "https://www.thecocktaildb.com/images/media/drink/kvvd4z1485621283.jpg",
///   "idDrink": "15328"
///   }
///
class CocktailDefinition {
  final String id;
  final String name;
  final String drinkThumbUrl;
  bool isFavourite;

  CocktailDefinition({
    @required this.id,
    @required this.name,
    @required this.drinkThumbUrl,
    @required this.isFavourite,
  });

  void setFav() {
    isFavourite = true;
  }

  void setUnfav() {
    isFavourite = false;
  }

  factory CocktailDefinition.fromJson(Map<String, dynamic> jsonData) {
    return CocktailDefinition(
        id: jsonData["id"],
        name: jsonData["name"],
        drinkThumbUrl: jsonData["drinkThumbUrl"],
        isFavourite: true);
  }

  static Map<String, dynamic> toMap(CocktailDefinition cocktailDefinition) => {
        'id': cocktailDefinition.id,
        'name': cocktailDefinition.name,
        'drinkThumbUrl': cocktailDefinition.drinkThumbUrl,
        'isFavourite': true,
      };

  static String encode(List<CocktailDefinition> cocktails) => json.encode(
        cocktails
            .map<Map<String, dynamic>>(
                (cocktail) => CocktailDefinition.toMap(cocktail))
            .toList(),
      );

  static List<CocktailDefinition> decode(String cocktails) =>
      (json.decode(cocktails) as List<dynamic>)
          .map<CocktailDefinition>((item) => CocktailDefinition.fromJson(item))
          .toList();
}
