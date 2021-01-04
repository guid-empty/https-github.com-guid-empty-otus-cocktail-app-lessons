import 'package:cocktail_app/src/core/models.dart';
import 'package:cocktail_app/src/start_to_test_classes/00_favorites_storage.dart';
@TestOn('vm')
import 'package:test/test.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  setUp(() => print('setUp callback'));

  test('Favorites storage should be empty in initial state', () {
    expect(favoritesStorage.isEmpty, true);

    // todo: uncomment this to show matchers
    // expect(favoritesStorage.isEmpty, isTrue);
  });

  test('Favorites storage should not be empty after adding the cocktail definition', () {
    final expectedId = 'expected id';
    final cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);
    favoritesStorage.add(cocktailDefinition);

    expect(favoritesStorage.isEmpty, isFalse);
  });

  tearDown(() => print('tearDown callback'));
}
