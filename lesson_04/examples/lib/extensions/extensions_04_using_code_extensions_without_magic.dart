import 'package:cocktailappmodels/models.dart';

const Map<String, dynamic> serializedState = const {
  'idDrink': '1',
  'strDrink': 'coctail name',
  'strInstructions': 'instruction',
};

extension MyJsonExtension on Map<String, dynamic> {
  Cocktail toCocktail() => Cocktail(
        id: this['idDrink'] as String,
        name: this['strDrink'] as String,
        instruction: this['strInstructions'] as String,
      );
}

void main() {
  final cocktail = serializedState.toCocktail();


  final yetAnotherCocktail = MyJsonExtension(serializedState).toCocktail();




  assert(cocktail.id == '1');
  assert(yetAnotherCocktail.name == 'coctail name');
}
