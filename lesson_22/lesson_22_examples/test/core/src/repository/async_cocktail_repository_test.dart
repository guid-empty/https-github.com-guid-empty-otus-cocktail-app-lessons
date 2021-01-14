@TestOn('vm')
import 'package:cocktail_app/core/models.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:http/http.dart' as http;

import 'package:cocktail_app/core/src/repository/async_cocktail_repository.dart';

class MockClient extends Mock implements http.Client {}

main() {
  group('getCocktailDetails', () {
    test('returns Cocktail if the http call completes successfully', () async {
      final client = MockClient();

      final repository = AsyncCocktailRepository(client);

      const exampleCocktail =
          '{"drinks":[{"idDrink":"17833","strDrink":"A. J.","strDrinkAlternate":null,"strDrinkES":null,"strDrinkDE":null,"strDrinkFR":null,"strDrinkZH-HANS":null,"strDrinkZH-HANT":null,"strTags":null,"strVideo":null,"strCategory":"Ordinary Drink","strIBA":null,"strAlcoholic":"Alcoholic","strGlass":"Cocktail glass","strInstructions":"Shake ingredients with ice, strain into a cocktail glass, and serve.","strInstructionsES":null,"strInstructionsDE":null,"strInstructionsFR":null,"strInstructionsZH-HANS":null,"strInstructionsZH-HANT":null,"strDrinkThumb":"https://www.thecocktaildb.com/images/media/drink/l74qo91582480316.jpg","strIngredient1":"Applejack","strIngredient2":"Grapefruit juice","strIngredient3":null,"strIngredient4":null,"strIngredient5":null,"strIngredient6":null,"strIngredient7":null,"strIngredient8":null,"strIngredient9":null,"strIngredient10":null,"strIngredient11":null,"strIngredient12":null,"strIngredient13":null,"strIngredient14":null,"strIngredient15":null,"strMeasure1":"1 1/2 oz ","strMeasure2":"1 oz ","strMeasure3":null,"strMeasure4":null,"strMeasure5":null,"strMeasure6":null,"strMeasure7":null,"strMeasure8":null,"strMeasure9":null,"strMeasure10":null,"strMeasure11":null,"strMeasure12":null,"strMeasure13":null,"strMeasure14":null,"strMeasure15":null,"strImageSource":null,"strImageAttribution":null,"strCreativeCommonsConfirmed":"Yes","dateModified":"2016-09-02 11:16:58"}]}';

      when(client.get(
        'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=0',
        headers: anyNamed('headers'),
      )).thenAnswer(
          (Invocation _) => Future.value(http.Response(exampleCocktail, 200)));

      expect(await repository.fetchCocktailDetails('0'), isA<Cocktail>());
    });

    test('throws an exception if the http call completes with an error', () {
      final client = MockClient();

      final repository = AsyncCocktailRepository(client);

      when(client.get(
        'https://the-cocktail-db.p.rapidapi.com/lookup.php?i=0',
        headers: anyNamed("headers"),
      )).thenAnswer(
          (Invocation _) => Future.value(http.Response('Not Found', 404)));

      expect(repository.fetchCocktailDetails('0'), throwsException);
    });
  });
}
