import 'package:flutter/material.dart';

import 'cocktail_detail_page.dart';
import 'models/src/repository/sync_cocktail_repository.dart';

void main() {
  final cocktail = SyncCocktailRepository().getHomeworkCocktail();
  runApp( MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(brightness: Brightness.dark, fontFamily: 'SF Pro'),
    home: Material(child: CocktailDetailPage(cocktail)),
  ));
}


