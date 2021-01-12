import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

@TestOn('vm')
void main() {
  const cocktailTitle = 'expected title';

  group('CocktailTitle should contain', () {
    testWidgets('favorite icon as Icons.favorite, if item isFavourite == true',
        (WidgetTester tester) async {
      await tester.pumpWidget(
          _wrap(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: true)));

      final iconFinderBySemantic = find.byIcon(Icons.favorite);

      expect(iconFinderBySemantic, findsOneWidget);
    });
    testWidgets(
        'favorite icon as Icons.favorite_border, if item isFavourite == false',
        (WidgetTester tester) async {
      await tester.pumpWidget(_wrap(
          CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: false)));

      final iconFinderBySemantic = find.byIcon(Icons.favorite_border);

      expect(iconFinderBySemantic, findsOneWidget);
    });
  });
}

Widget _wrap(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );
