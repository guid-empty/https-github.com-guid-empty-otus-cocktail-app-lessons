import 'extensions_01_third_party_code_extensions.dart' as firstAlias;
import 'extensions_06_conflicted_code_extensions.dart' as secondAlias;

const Map<String, dynamic> serializedState = const {
  'idDrink': '1',
  'strDrink': 'coctail name',
  'strInstructions': 'instruction',
};

void main() {
  var cocktail = firstAlias.fromJsonExtension(serializedState).toCocktail();

  assert(cocktail.id == '1');
  assert(cocktail.name == 'coctail name');

  cocktail = secondAlias.fromJsonExtension(serializedState).toCocktail();
  assert(cocktail.id == '1');
  assert(cocktail.name == 'coctail name');
}
