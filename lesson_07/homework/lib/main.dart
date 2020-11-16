import 'package:cocktail/ui/coctail_detail_page.dart';
import 'package:cocktail/ui/filter_page.dart';
import 'package:flutter/material.dart';

import 'core/src/repository/sync_cocktail_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cocktail = SyncCocktailRepository().getHomeworkCocktail();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: //CocktailsFilterScreen()
          Material(child: CocktailDetailPage(cocktail)),
    );
  }
}
