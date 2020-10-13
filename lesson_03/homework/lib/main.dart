import 'package:flutter/material.dart';

import 'app_custom_theme.provider.dart';
import 'cocktail_detail_page.dart';
import 'models/src/repository/sync_cocktail_repository.dart';

void main() {
  final cocktail = SyncCocktailRepository().getHomeworkCocktail();
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: 'SFProText',
    ),
    title: 'Flutter Demo',
    home: Material(
      child: SafeArea(
        child: AppCustomThemeProvider(
          child: CocktailDetailPage(cocktail),
          appCustomTheme: AppCustomTheme(
              color1: Colors.white,
              color2: const Color(0xff1A1927),
              sectionPadding: const EdgeInsets.symmetric(
                vertical: 24,
                horizontal: 32,
              )),
        ),
      ),
      color: Colors.black,
    ),
  ));
}
