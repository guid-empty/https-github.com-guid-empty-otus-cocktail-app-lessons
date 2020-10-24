// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cocktail/core/models.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fetchCocktailsByCocktailType', () async {
    final cokctails = await AsyncCocktailRepository()
        .fetchCocktailsByCocktailType(CocktailType.alcoholic);
    print(cokctails.join(','));
    expect(cokctails.isNotEmpty, true);
  });

  test('fetchCocktailDetails',() async {
    final cokctail = await AsyncCocktailRepository().fetchCocktailDetails('16963');
    print(cokctail?.toString());
    expect(cokctail.name, 'Zorbatini');
  });
}
