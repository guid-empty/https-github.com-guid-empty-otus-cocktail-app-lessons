@TestOn('vm')
import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/widget_wrap.dart';

void main() {
  const cocktailTitle = 'expected title';
  const isNotFavorite = false;
  const isFavorite = true;

  group('CocktailTitle should', () {
    testWidgets('contain favorite icon button for cocktail from favorites', (WidgetTester tester) async {
      await tester.pumpWidget(wrapTestableWidget(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: isFavorite)));

      final titleFinder = find.text(cocktailTitle);
      expect(titleFinder, findsOneWidget);

      final isFavoriteIconFinder = find.byIcon(Icons.favorite);
      expect(isFavoriteIconFinder, findsOneWidget);
    });

    testWidgets('not contain favorite icon button if cocktail is not favorite', (WidgetTester tester) async {
      await tester.pumpWidget(wrapTestableWidget(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: isNotFavorite)));

      final isFavoriteIconFinder = find.byIcon(Icons.favorite_border);
      expect(isFavoriteIconFinder, findsOneWidget);
    });
  });
}