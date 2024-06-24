import 'package:flutter/material.dart';

import 'views/detail_page/cocktail_detail_page.dart';
import 'models/src/repository/sync_cocktail_repository.dart';

void main() {
  final cocktail = SyncCocktailRepository().getHomeworkCocktail();
  runApp( MaterialApp(
    title: 'Flutter Demo',
    theme: ThemeData(fontFamily: 'SFProText'),
    home: Material(child: CocktailDetailPage(cocktail)),
  ));
}


