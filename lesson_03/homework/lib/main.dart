import 'package:flutter/material.dart';
import 'package:homework/custom_widgets/colors/custom_colors.dart';

import 'cocktail_detail_page.dart';
import 'models/src/repository/sync_cocktail_repository.dart';

void main() {
  final cocktail = SyncCocktailRepository().getHomeworkCocktail();
  runApp(MaterialApp(
    theme: ThemeData(
        textTheme: TextTheme(
      headline1: TextStyle(
          color: CustomColors.headline1,
          fontSize: 14,
          fontWeight: FontWeight.normal),
      headline2: TextStyle(
          color: CustomColors.headline2,
          fontSize: 13,
          fontWeight: FontWeight.normal),
      headline3: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.normal),
      headline4: TextStyle(
          color: Colors.white, fontWeight: FontWeight.normal, fontSize: 15),
      headline5: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal),
      headline6: TextStyle(
          color: CustomColors.headline6,
          fontSize: 16,
          fontWeight: FontWeight.normal),
      bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
    )),
    title: 'Flutter Demo',
    home: Material(child: CocktailDetailPage(cocktail)),
  ));
}
