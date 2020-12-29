import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_test_example/fancy_button.dart';

void main() {
  testWidgets("Fancy button's golden test", (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Center(
          child: FancyButton(
            title: "Title",
            onTap: () {},
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await expectLater(
      find.byType(FancyButton),
      matchesGoldenFile('golden/fancy_button.png'),
    );
  });
}
