@TestOn('vm')
@Timeout(Duration(seconds: 10))
import 'package:test/test.dart';
import 'package:cocktail_app/src/continue_to_cover_test_classes/10_favorites_storage_the_problem.dart';
import 'package:cocktail_app/src/continue_to_cover_test_classes/utilites/http_service.dart';
import 'package:cocktail_app/src/core/models.dart';

void main() {
  const expectedId = 'expected id';

  final httpService = HttpService();
  final favoritesStorage = FavoritesStorage(httpService);

  test('Favorites storage should not be empty after adding the cocktail definition', () async {
    final cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);
    final actualOperationResult = await favoritesStorage.add(cocktailDefinition);

    expect(actualOperationResult, isTrue);
  });
}
