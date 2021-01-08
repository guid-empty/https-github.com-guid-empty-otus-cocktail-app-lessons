import 'package:cocktail_app/src/core/models.dart';
import 'package:cocktail_app/src/start_to_test_classes/00_favorites_storage.dart';
@TestOn('vm')
import 'package:test/test.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  const expectedId = 'expected id';
  const cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);

  // todo: add setup here to avoid inconsistent state of storage
  // FavoritesStorage favoritesStorage;
  // setUp(() {
  //   favoritesStorage = FavoritesStorage();
  // });

  group('Favorites storage should', () {
    test('be empty in initial state', () {
      expect(favoritesStorage.isEmpty, isTrue);
    });

    test('not be empty after adding the cocktail definition', () {
      favoritesStorage.add(cocktailDefinition);
      expect(favoritesStorage.isEmpty, isFalse);
    });

    test('contain cocktail definition after its storing in the storage', () {
      expect(favoritesStorage.contains(cocktailDefinition), isFalse);

      favoritesStorage.add(cocktailDefinition);

      expect(favoritesStorage.contains(cocktailDefinition), isTrue);
    });
  });
}
