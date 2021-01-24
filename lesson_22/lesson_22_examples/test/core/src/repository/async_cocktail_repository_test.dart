import 'dart:io';
import 'package:cocktail_app/core/models.dart';
@TestOn('vm')
// ignore: invalid_annotation_target
@Timeout(Duration(seconds: 10))
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

void main() {
  HttpServiceMock httpServiceMock;
  AsyncCocktailRepository asyncCocktailRepository = AsyncCocktailRepository();

  setUp(() {
    httpServiceMock = HttpServiceMock();
    asyncCocktailRepository = AsyncCocktailRepository(client: httpServiceMock);
  });

  void assertRequest(url) async {
    final captured = httpServiceMock.getCaptured();
    expect(captured[0], equals(url));
    final headers = captured[1] as Map<String, String>;
    expect(headers, isNotEmpty);
    expect(headers.containsKey('x-rapidapi-key'), isTrue);
  }

  group('Fetch cocktails should be', () {
    test('success', () async {
      final expected = Cocktail(
          id: '1',
          name: 'Test name',
          instruction: 'instruction',
          category: CocktailCategory.cocktail,
          glassType: GlassType.cocktailGlass,
          cocktailType: CocktailType.alcoholic,
          ingredients: [],
          drinkThumbUrl: 'image url',
          isFavourite: null);

      final expectedUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=${expected.id}';

      httpServiceMock.produceStubResponse(expectedUrl, status: 200, responseBody: '''
      {
        "drinks": [
        {
          "idDrink": "${expected.id}",
          "strDrink": "${expected.name}",
          "strCategory": "${expected.category.value}",
          "strAlcoholic": "${expected.cocktailType.value}",
          "strGlass": "${expected.glassType.value}",
          "strInstructions": "${expected.instruction}",
          "strDrinkThumb": "${expected.drinkThumbUrl}",
          "strCreativeCommonsConfirmed": "No",
          "dateModified": "2017-01-02 20:15:04"
        }
      ]
    }        
''');

      final Cocktail cocktail = await asyncCocktailRepository.fetchCocktailDetails(expected.id);

      assertRequest(expectedUrl);

      expect(cocktail.id, equals(expected.id));
    });

    test('Error', () async {
      final id = '1';
      final expectedUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=$id';
      httpServiceMock.produceStubResponse(expectedUrl, status: 400, responseBody: 'error');
      expect(() async => await asyncCocktailRepository.fetchCocktailDetails(id), throwsA(const TypeMatcher<HttpException>()));

      assertRequest(expectedUrl);
    });
  });
}

class HttpServiceMock extends Mock implements http.Client {
  void produceStubResponse(String url, {int status, String responseBody}) {
    when(get(url, headers: anyNamed('headers')))
        .thenAnswer((realInvocation) async {
      return http.Response(responseBody, status);
    });
  }

  List<dynamic> getCaptured() {
    return verify(get(captureAny, headers: captureAnyNamed('headers')))
        .captured;
  }
}
