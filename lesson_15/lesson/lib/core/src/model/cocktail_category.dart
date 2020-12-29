import 'package:hive/hive.dart';
import 'package:json_annotation/json_annotation.dart';

///
/// curl https://the-cocktail-db.p.rapidapi.com/list.php\?c\=list
///
///

part 'cocktail_category.g.dart';

@HiveType(typeId: 2)
class CocktailCategory {
  static const CocktailCategory ordinaryDrink =
      CocktailCategory._('ordinaryDrink', 'Ordinary Drink');
  static const CocktailCategory cocktail =
      CocktailCategory._('cocktail', 'Cocktail');
  static const CocktailCategory milkFloatShake =
      CocktailCategory._('milkFloatShake', 'Milk / Float / Shake');
  static const CocktailCategory unknown =
      CocktailCategory._('unknown', 'Other/Unknown');
  static const CocktailCategory cocoa = CocktailCategory._('cocoa', 'Cocoa');
  static const CocktailCategory shot = CocktailCategory._('shot', 'Shot');
  static const CocktailCategory coffeeTea =
      CocktailCategory._('coffeeTea', 'Coffee / Tea');
  static const CocktailCategory homemadeLiqueur =
      CocktailCategory._('homemadeLiqueur', 'Homemade Liqueur');
  static const CocktailCategory punchPartyDrink =
      CocktailCategory._('punchPartyDrink', 'Punch / Party Drink');
  static const CocktailCategory beer = CocktailCategory._('beer', 'Beer');
  static const CocktailCategory softDrinkSoda =
      CocktailCategory._('softDrinkSoda', 'Soft Drink / Soda');

  static const Iterable<CocktailCategory> values = [
    ordinaryDrink,
    cocktail,
    milkFloatShake,
    unknown,
    cocoa,
    shot,
    coffeeTea,
    homemadeLiqueur,
    punchPartyDrink,
    beer,
    softDrinkSoda,
  ];

  @HiveField(0)
  final String value;
  @HiveField(1)
  final String name;

  const CocktailCategory._(this.name, this.value);
  
  CocktailCategory(this.value, this.name);

  factory CocktailCategory.fromJson(Map<String, dynamic> json) =>
      CocktailCategory._(json['name'], json['value']);

  Map<String, dynamic> toJson() => {
        'value': value,
        'name': name,
      };

  @override
  int get hashCode => value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CocktailCategory &&
          runtimeType == other.runtimeType &&
          value == other.value;

  @override
  String toString() => 'CocktailCategory{value: $value, name: $name}';

  static CocktailCategory parse(String raw) => values.firstWhere(
      (element) => element.value.toLowerCase() == raw.toLowerCase(),
      orElse: () => null);
}
