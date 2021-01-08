import 'package:cocktail_app/ui/application_semantics.dart';
import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

@TestOn('vm')
void main() {
  const cocktailTitle = 'expected title';
  const isFavorite = true;

  group('CocktailTitle should', () {
    testWidgets('contain favorite icon button for cocktail from favorites', (WidgetTester tester) async {
      await tester.pumpWidget(_wrap(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: isFavorite)));

      final titleFinderByText = find.text(cocktailTitle);
      expect(titleFinderByText, findsOneWidget);

      final titleFinderBySemantic = find.bySemanticsLabel(ApplicationSemantics.cocktailTitleLabel);
      expect(titleFinderBySemantic, findsOneWidget);
    });
  });
}

Widget _wrap(Widget child) => MaterialApp(
      home: Scaffold(body: child),
    );
