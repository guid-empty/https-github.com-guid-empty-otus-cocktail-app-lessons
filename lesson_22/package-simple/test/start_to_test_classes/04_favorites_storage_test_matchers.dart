import 'package:cocktail_app/src/core/models.dart';
import 'package:cocktail_app/src/start_to_test_classes/00_favorites_storage.dart';
@TestOn('vm')
import 'package:test/test.dart';

void main() {
  FavoritesStorage favoritesStorage;

  const expectedId1 = 'expected id 1';
  const expectedId2 = 'expected id 2';

  const cocktailDefinition1 = CocktailDefinition(id: expectedId1, name: null, drinkThumbUrl: null, isFavourite: null);
  const cocktailDefinition2 = CocktailDefinition(id: expectedId2, name: null, drinkThumbUrl: null, isFavourite: null);

  setUp(() {
    favoritesStorage = FavoritesStorage();
  });

  group('Favorites storage should', () {
    test('contain cocktail definition after its storing in the storage', () {
      expect(favoritesStorage.contains(cocktailDefinition1), isFalse);

      favoritesStorage.add(cocktailDefinition1);

      expect(favoritesStorage.getAll().first, CocktailDefinitionMatcher(cocktailDefinition1));
    });

    test('not contain cocktail definition if it has not been placed to storage', () {
      expect(favoritesStorage.contains(cocktailDefinition1), isFalse);

      favoritesStorage.add(cocktailDefinition1);
      favoritesStorage.add(cocktailDefinition2);
      expect(favoritesStorage.getAll().last, CocktailDefinitionMatcher(cocktailDefinition1));
    });
  });
}

class CocktailDefinitionMatcher extends Matcher {
  final CocktailDefinition _expected;
  final List<String> _mismatchDescriptionList = [];

  CocktailDefinitionMatcher(this._expected) : super();

  @override
  Description describe(Description description) => description.addDescriptionOf(_expected);

  @override
  Description describeMismatch(dynamic item, Description mismatchDescription, Map matchState, bool verbose) =>
      mismatchDescription.addDescriptionOf(_expected).replace(
            _mismatchDescriptionList.join(),
          );

  String formatFieldMatchError(String fieldName, String expectedValue, String actualValue) =>
      '\n CocktailDefinition.$fieldName to be \'$expectedValue\', but \'$actualValue\' found;';

  @override
  bool matches(dynamic item, Map matchState) {
    if (item is! CocktailDefinition) {
      return false;
    }

    if (item.id != _expected.id) {
      _mismatchDescriptionList.add(formatFieldMatchError('cocktail definition id', '${_expected.id}', '${item.id}'));
    }

    if (item.drinkThumbUrl != _expected.drinkThumbUrl) {
      _mismatchDescriptionList.add(formatFieldMatchError(
          'cocktail definition drinkThumbUrl', '${_expected.drinkThumbUrl}', '${item.drinkThumbUrl}'));
    }

    if (item.name != _expected.name) {
      _mismatchDescriptionList
          .add(formatFieldMatchError('cocktail definition name', '${_expected.name}', '${item.name}'));
    }
    return _mismatchDescriptionList.isEmpty;
  }
}
