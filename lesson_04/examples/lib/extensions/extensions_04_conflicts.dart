//  todo: uncomment this
import 'extensions_01_third_party_code_extensions.dart' hide fromJsonExtension;
import 'extensions_06_conflicted_code_extensions.dart';

const Map<String, dynamic> serializedState = const {
  'idDrink': '1',
  'strDrink': 'coctail name',
  'strInstructions': 'instruction',
};

void main() {
  final cocktail = serializedState.toCocktail();  //  should be used from extensions_05_conflicted_code_extensions
  assert(cocktail.id == '1');
  assert(cocktail.name == 'coctail name');

  final json = cocktail.toJson();
  assert(json['idDrink'] == '1');
  assert(json['strDrink'] == 'coctail name');
}
