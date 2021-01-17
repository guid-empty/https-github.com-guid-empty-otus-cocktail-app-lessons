@TestOn('vm')
import 'package:cocktail_app/ui/pages/details/cocktail_description/cocktail_title.dart';
import 'package:cocktail_app/ui/application_semantics.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helpers/widget_wrap.dart';

void main() {
  const cocktailTitle = 'expected title';

  group('CocktailTitle should', () {
    testWidgets('contain favorite icon button for cocktail from favorites', (WidgetTester tester) async {
      await tester.pumpWidget(wrapTestableWidget(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: true)));

      final isFavoriteFinder = find.bySemanticsLabel(ApplicationSemantics.cocktailFavouriteIconLabel);
      expect(isFavoriteFinder, findsOneWidget);

      final semantics = tester.getSemantics(isFavoriteFinder);
      expect(semantics.value, equals('true'));
    });

    testWidgets('not contain favorite icon button if cocktail is not favorite', (WidgetTester tester) async {
      await tester.pumpWidget(wrapTestableWidget(CocktailTitle(cocktailTitle: cocktailTitle, isFavorite: false)));

      final isFavoriteFinder = find.bySemanticsLabel(ApplicationSemantics.cocktailFavouriteIconLabel);
      expect(isFavoriteFinder, findsOneWidget);

      final semantics = tester.getSemantics(isFavoriteFinder);
      expect(semantics.value, equals('false'));
    });
  });
}