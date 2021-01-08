@Timeout(Duration(seconds: 10))
@TestOn('vm')
import 'package:test/test.dart';
import 'package:cocktail_app/src/core/models.dart';
import 'package:cocktail_app/src/start_to_test_classes/00_favorites_storage.dart';
import 'package:fake_async/fake_async.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  const expectedId = 'expected id';
  const cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);

  group('Favorites storage should', () {
    test('contain cocktail definition after its storing in the storage', () {
      expect(favoritesStorage.isEmpty, isTrue);

      favoritesStorage.add(cocktailDefinition);
      favoritesStorage.remove(cocktailDefinition);

      expect(favoritesStorage.isEmpty, isTrue);
    });

    ///
    /// todo: uncomment this and use await
    ///
    // test('contain cocktail definition after its storing in the storage', () async {
    //   expect(favoritesStorage.isEmpty, isTrue);
    //
    //   favoritesStorage.add(cocktailDefinition);
    //   await favoritesStorage.remove(cocktailDefinition);
    //
    //   expect(favoritesStorage.isEmpty, isTrue);
    // });

    ///
    /// todo: uncomment this and use fake async
    ///
    // test('contain cocktail definition after its storing in the storage', () {
    //   expect(favoritesStorage.isEmpty, isTrue);
    //
    //   favoritesStorage.add(cocktailDefinition);
    //
    //   fakeAsync((FakeAsync fa) {
    //     favoritesStorage.remove(cocktailDefinition);
    //     fa.elapse(Duration(seconds: 12));
    //   });
    //
    //   expect(favoritesStorage.isEmpty, isTrue);
    // });
  });
}
