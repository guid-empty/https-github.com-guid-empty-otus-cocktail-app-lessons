import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'cocktail.dart';

part 'cocktail_definition.freezed.dart';
part 'cocktail_definition.g.dart';

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
const cocktailDefinitionHiveType = 0;

@freezed
abstract class CocktailDefinition with _$CocktailDefinition {
  @HiveType(typeId: cocktailDefinitionHiveType, adapterName: 'CocktailDefinitionAdapter')
  const factory CocktailDefinition(
      {@HiveField(0) String id,
      @HiveField(1) String name,
      @HiveField(2) String drinkThumbUrl,
      @HiveField(3) bool isFavourite}) = CocktailDefinitionValue;

  factory CocktailDefinition.fromJson(Map<String, dynamic> json) => _$CocktailDefinitionFromJson(json);

  factory CocktailDefinition.fromCocktail(Cocktail cocktail) {
    return CocktailDefinition(
      id: cocktail.id,
      name: cocktail.name,
      drinkThumbUrl: cocktail.drinkThumbUrl,
      isFavourite: cocktail.isFavourite,
    );
  }
}