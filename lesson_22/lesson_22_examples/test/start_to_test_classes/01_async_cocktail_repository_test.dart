@TestOn('vm')
import 'package:cocktail_app/core/src/repository/async_cocktail_repository.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  AsyncCocktailRepository asyncCocktailRepository;

  setUp(() {
    asyncCocktailRepository = AsyncCocktailRepository();
  });

  test(
    'fetchCocktailDetails should not be null',
    () {
      expect(asyncCocktailRepository.fetchCocktailDetails('11022'), isNotNull);
    },
  );
  test(
    'fetchCocktailDetails should throw exception',
    () {
      expect(asyncCocktailRepository.fetchCocktailDetails('9999999999'),
          throwsA(isA<Exception>()));
    },
  );
}
