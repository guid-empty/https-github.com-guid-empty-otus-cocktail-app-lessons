import 'package:flutter/material.dart';
import './services/theme.dart';

import './screens/filter_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: cocktailTheme,
      home: CocktailsFilterScreen(),
    );
  }
}
