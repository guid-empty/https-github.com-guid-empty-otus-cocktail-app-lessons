@TestOn('vm')
@Timeout(Duration(seconds: 10))
import 'package:test/test.dart';
import 'package:cocktail_app/src/continue_to_cover_test_classes/10_favorites_storage_the_problem.dart';
import 'package:cocktail_app/src/continue_to_cover_test_classes/utilites/http_service.dart';
import 'package:cocktail_app/src/core/models.dart';
import 'package:mockito/mockito.dart';

void main() {
  HttpService httpServiceMock;
  FavoritesStorage favoritesStorage;

  const expectedId = 'expected id';

  setUp(() {
    httpServiceMock = HttpServiceMock();
  });

  group('Favorites storage add method should return ', () {
    test('True if http service is answered with Ok', () async {
      when(httpServiceMock.get(any)).thenAnswer((realInvocation) => Future.value(HttpResponse.ok));
      favoritesStorage = FavoritesStorage(httpServiceMock);

      final cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);
      final actualOperationResult = await favoritesStorage.add(cocktailDefinition);

      expect(actualOperationResult, isTrue);
    });

    test('False if http service is answered with Error', () async {
      when(httpServiceMock.get(any)).thenAnswer((realInvocation) => Future.value(HttpResponse.error));
      favoritesStorage = FavoritesStorage(httpServiceMock);

      final cocktailDefinition = CocktailDefinition(id: expectedId, name: null, drinkThumbUrl: null, isFavourite: null);
      final actualOperationResult = await favoritesStorage.add(cocktailDefinition);

      expect(actualOperationResult, isFalse);
      verify(httpServiceMock.get(any)).called(1);
    });
  });
}

class HttpServiceMock extends Mock implements HttpService {}
