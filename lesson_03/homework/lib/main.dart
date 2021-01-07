import 'package:flutter/material.dart';
import 'package:homework/ui/filter_page.dart';

import 'cocktail_detail_page.dart';
import 'models/src/repository/sync_cocktail_repository.dart';

void main() {
  final cocktail = SyncCocktailRepository().getHomeworkCocktail();
  runApp(MaterialApp(
    title: 'Flutter Demo',
    home: Material(child: CocktailDetailPage(cocktail)),
    //home: Material(child: CocktailsFilterScreen()),
  ));
}
