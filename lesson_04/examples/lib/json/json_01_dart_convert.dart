import 'dart:convert';

const String httpResponse = '''
{
    "idDrink": "11408",
    "strDrink": "Gin Daisy",
    "strCategory": "Ordinary Drink",
    "strAlcoholic": "Alcoholic",
    "strGlass": "Old-fashioned glass"
}
''';

void main() {
  ///
  /// jsonDecode - это глобально доступная функция json.decode(httpResponse);
  /// мы могли бы написать и так
  /// Map<String, dynamic> data = json.decode(httpResponse);
  ///
  Map<String, dynamic> data = jsonDecode(httpResponse);

  final cocktail = Cocktail.fromJson(data);
  assert(cocktail.id == "11408");
}

class Cocktail {
  final String id;
  final String drink;
  final String category;
  final String alcoholic;
  final String glass;

  Cocktail(this.id, this.drink, this.category, this.alcoholic, this.glass);

  Cocktail.fromJson(Map<String, dynamic> json)
      : id = json['idDrink'],
        drink = json['strDrink'],
        category = json['strCategory'],
        alcoholic = json['strAlcoholic'],
        glass = json['strGlass;'];
}
