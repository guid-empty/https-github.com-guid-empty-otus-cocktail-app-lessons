import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const cocktailTitle = 'expected title';

  group('Favorite icon should', () {
    testWidgets('be filled when tap on unfavorite icon', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(_wrap(
          CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: false)));

      await tester.tap(find.byIcon(Icons.favorite_border, skipOffstage: false));
      await tester.pump();

      expect(find.byIcon(Icons.favorite, skipOffstage: false), findsOneWidget);
    });

    testWidgets('be bordered when tap on favorite icon', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(_wrap(
          CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: true)));

      await tester.tap(find.byIcon(Icons.favorite, skipOffstage: false));
      await tester.pump();

      expect(find.byIcon(Icons.favorite_border, skipOffstage: false), findsOneWidget);
    });
  });
}

Widget _wrap(Widget child) => MaterialApp(
  home: Scaffold(body: child),
);
