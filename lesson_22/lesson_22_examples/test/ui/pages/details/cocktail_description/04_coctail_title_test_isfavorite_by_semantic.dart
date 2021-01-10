import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

@TestOn('vm')
void main() {
  const cocktailTitle = 'expected title';
  const isFavorite = true;

  testWidgets('contain favorite icon button for cocktail from favorites',
      (WidgetTester tester) async {
    await tester.pumpWidget(_wrap(
        CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: isFavorite)));

    final iconFinderBySemantic = find.bySemanticsLabel('Favorite Icon button');

    expect(iconFinderBySemantic, findsOneWidget);
  });
}

Widget _wrap(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );
