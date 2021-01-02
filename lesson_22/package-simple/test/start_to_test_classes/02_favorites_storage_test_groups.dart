@TestOn('vm')
import 'package:test/test.dart';
import 'package:cocktail_app/src/core/models.dart';
import 'package:cocktail_app/src/start_to_test_classes/00_favorites_storage.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  group('Favorites storage should', () {
    test('be empty in initial state', () {
      expect(favoritesStorage.isEmpty, isTrue);
    });

    test('not be empty after adding the cocktail definition', () {
      const expectedId = 'expected id';
      final cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);
      favoritesStorage.add(cocktailDefinition);

      expect(favoritesStorage.isEmpty, isFalse);
    });
  });
}
