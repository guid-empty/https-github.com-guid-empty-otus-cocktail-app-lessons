@TestOn('vm')
import 'package:test/test.dart';
import 'package:cocktail_app/start_to_test_classes/00_favorites_storage.dart';

void main() {
  final favoritesStorage = FavoritesStorage();

  test('Favorites storage should be empty in initial state', () {
    expect(favoritesStorage.isEmpty, isTrue);
  });
}
