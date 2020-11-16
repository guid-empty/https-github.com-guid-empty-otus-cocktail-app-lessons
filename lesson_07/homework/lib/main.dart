import 'package:cocktail/core/models.dart';
import 'package:cocktail/ui/coctail_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Cocktail coctail;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CocktailDetailPage(coctail),
    );
  }
}
