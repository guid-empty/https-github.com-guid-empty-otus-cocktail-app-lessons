import 'package:cocktailappmodels/models.dart';

const Map<String, dynamic> serializedState = const {
  'idDrink': '1',
  'strDrink': 'coctail name',
  'strInstructions': 'instruction',
};

void main() {
  ///
  /// Мне нужно на основе моего json десериализовать инстанс класса Cocktail
  /// Но у самого класса Cocktail нет какого-либо фабричного конструктора типа fromJson
  /// Кроме того, обратной сериализации тоже нет - toJson
  ///
  final Cocktail cocktail = Cocktail(
    id: '1',
    name: 'coctail name',
  );

  final json = toJson(cocktail);
  assert(json['idDrink'] == '1');
  assert(json['strDrink'] == 'coctail name');

  final deserializedCocktail = fromJson(json);
  assert(deserializedCocktail.id == '1');
  assert(deserializedCocktail.name == 'coctail name');
}

Map<String, dynamic> toJson(Cocktail cocktail) => {
      'idDrink': cocktail.id,
      'strDrink': cocktail.name,
      'strInstructions': cocktail.instruction,
    };

Cocktail fromJson(Map<String, dynamic> json) {
  return Cocktail(
    id: json['idDrink'] as String,
    name: json['strDrink'] as String,
    instruction: json['strInstructions'] as String,
  );
}
