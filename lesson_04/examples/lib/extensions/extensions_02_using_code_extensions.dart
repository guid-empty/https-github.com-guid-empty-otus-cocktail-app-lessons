import 'extensions_01_third_party_code_extensions.dart';

const Map<String, dynamic> serializedState = const {
  'idDrink': '1',
  'strDrink': 'coctail name',
  'strInstructions': 'instruction',
};

void main() {
  final cocktail = serializedState.toCocktail();
  assert(cocktail.id == '1');
  assert(cocktail.name == 'coctail name');

  final json = cocktail.toJson();
  assert(json['idDrink'] == '1');
  assert(json['strDrink'] == 'coctail name');
}
