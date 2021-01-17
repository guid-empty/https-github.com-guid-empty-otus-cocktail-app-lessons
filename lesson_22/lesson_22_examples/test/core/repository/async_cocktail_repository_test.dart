import 'dart:io';

@TestOn('vm')
import 'package:test/test.dart';
import 'package:cocktail_app/core/models.dart';

import '../../mock/mock_http_client.dart';

void main() {
  MockHttpClient mockHttpClient;
  AsyncCocktailRepository testable = AsyncCocktailRepository();

  setUp(() {
    mockHttpClient = MockHttpClient();
    testable = AsyncCocktailRepository(client: mockHttpClient);
  });

  void assertRequest(url) async {
    final captured = mockHttpClient.getCaptured();
    expect(captured[0], equals(url));
    final headers = captured[1] as Map<String, String>;
    expect(headers, isNotEmpty);
    expect(headers.containsKey('x-rapidapi-key'), isTrue);
  }

  test('fetchCocktailDetails succeeded', () async {
    // Arrange
    final ingredients = [
      IngredientDefinition('myIngredient1', 'myMeasure1'),
      IngredientDefinition('myIngredient2', 'myMeasure2'),
    ];
    final expected = Cocktail(
        id: '123-456',
        name: 'myName',
        instruction: 'myInstruction',
        category: CocktailCategory.beer,
        glassType: GlassType.beerMug,
        cocktailType: CocktailType.optionalAlcohol,
        ingredients: ingredients,
        drinkThumbUrl: 'myDrinkThumbUrl',
        isFavourite: false);
    final expectedUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=${expected.id}';

    mockHttpClient.produceStubResponse(expectedUrl, status: 200, responseBody: '''
      {
        "drinks": [
        {
          "idDrink": "${expected.id}",
          "strDrink": "${expected.name}",
          "strDrinkAlternate": null,
          "strDrinkES": null,
          "strDrinkDE": null,
          "strDrinkFR": null,
          "strDrinkZH-HANS": null,
          "strDrinkZH-HANT": null,
          "strTags": null,
          "strVideo": null,
          "strCategory": "${expected.category.value}",
          "strIBA": null,
          "strAlcoholic": "${expected.cocktailType.value}",
          "strGlass": "${expected.glassType.value}",
          "strInstructions": "${expected.instruction}",
          "strInstructionsES": null,
          "strInstructionsDE": null,
          "strInstructionsFR": null,
          "strInstructionsZH-HANS": null,
          "strInstructionsZH-HANT": null,
          "strDrinkThumb": "${expected.drinkThumbUrl}",
          "strIngredient1": "${ingredients[0].ingredientName}",
          "strIngredient2": "${ingredients[1].ingredientName}",
          "strIngredient3": null,
          "strIngredient4": null,
          "strIngredient5": null,
          "strIngredient6": null,
          "strIngredient7": null,
          "strIngredient8": null,
          "strIngredient9": null,
          "strIngredient10": null,
          "strIngredient11": null,
          "strIngredient12": null,
          "strIngredient13": null,
          "strIngredient14": null,
          "strIngredient15": null,
          "strMeasure1": "${ingredients[0].measure}",
          "strMeasure2": "${ingredients[1].measure}",
          "strMeasure3": null,
          "strMeasure4": null,
          "strMeasure5": null,
          "strMeasure6": null,
          "strMeasure7": null,
          "strMeasure8": null,
          "strMeasure9": null,
          "strMeasure10": null,
          "strMeasure11": null,
          "strMeasure12": null,
          "strMeasure13": null,
          "strMeasure14": null,
          "strMeasure15": null,
          "strCreativeCommonsConfirmed": "No",
          "dateModified": "2017-01-02 20:15:04"
        }
      ]
    }        
''');

    // Act
    final Cocktail cocktail = await testable.fetchCocktailDetails(expected.id);

    // Assert
    assertRequest(expectedUrl);

    expect(cocktail.id, equals(expected.id));
    expect(cocktail.name, equals(expected.name));
    expect(cocktail.instruction, equals(expected.instruction));
    expect(cocktail.category, equals(expected.category));
    expect(cocktail.glassType, equals(expected.glassType));
    expect(cocktail.cocktailType, equals(expected.cocktailType));
    expect(cocktail.ingredients, equals(expected.ingredients));
    expect(cocktail.drinkThumbUrl, equals(expected.drinkThumbUrl));
  });

  test('fetchCocktailDetails fails on invalid response status', () async {
    // Arrange
    final id = '123-456';
    final expectedUrl = 'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=$id';

    mockHttpClient.produceStubResponse(expectedUrl, status: 400, responseBody: 'doesn\'t matter');

    // Act && Assert
    expect(() async => await testable.fetchCocktailDetails(id), throwsA(const TypeMatcher<HttpException>()));

    assertRequest(expectedUrl);
  });
}
