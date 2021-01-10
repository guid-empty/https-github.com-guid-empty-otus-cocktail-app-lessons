import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

@TestOn('vm')
void main() {
  const cocktailTitle = 'expected title';
  const isFavorite = true;

  testWidgets('favorite icon must be Icons.favorite',
      (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(
        CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: isFavorite)));

    final iconFinderBySemantic = find.byIcon(Icons.favorite);

    expect(iconFinderBySemantic, findsOneWidget);
  });
}

Widget _wrap(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );
