import 'package:meta/meta.dart';

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
  final bool isFavourite;

  const CocktailDefinition({
    @required this.id,
    @required this.name,
    @required this.drinkThumbUrl,
    @required this.isFavourite,
  });
}
