import 'package:cocktail_app/ui/application_semantics.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Cocktail App should', () {
    final drinkImageFinder = find.byValueKey('DrinkImage');

    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    test('drill down to cocktail detail page', () async {
      await driver.tap(drinkImageFinder);
      await driver.waitFor(find.bySemanticsLabel(ApplicationSemantics.cocktailTitleLabel));
    });

    tearDownAll(() async {
      if (driver != null) {
        driver.close();
      }
    });
  });
}
