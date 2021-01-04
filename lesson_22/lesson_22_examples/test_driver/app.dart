import 'package:cocktail_app/core/models.dart';
import 'package:cocktail_app/ui/pages/random_cocktail_page.dart';
import 'package:cocktail_app/ui/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_driver/driver_extension.dart';

void main() {

  ///
  /// Это то, что отличает instrumented версию от рабочей
  ///
  /// Enables Flutter Driver VM service extension.
  ///
  /// This extension is required for tests that use `package:flutter_driver` to
  /// drive applications from a separate process. In order to allow the driver
  /// to interact with the application, this method changes the behavior of the
  /// framework in several ways - including keyboard interaction and text
  /// editing. Applications intended for release should never include this
  /// method.
  ///
  /// Call this function prior to running your application, e.g. before you call
  /// `runApp`.
  enableFlutterDriverExtension();

  runApp(CocktailOfDayApp());
}

final repository = AsyncCocktailRepository();

class CocktailOfDayApp extends StatelessWidget {
  static const String defaultRoute = '/home';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      showSemanticsDebugger: false,
      darkTheme: mainThemeData,
      themeMode: ThemeMode.dark,
      initialRoute: CocktailOfDayApp.defaultRoute,
      routes: {
        CocktailOfDayApp.defaultRoute: (context) => RandomCocktailPageWidget(repository),
      },
    );
  }
}
