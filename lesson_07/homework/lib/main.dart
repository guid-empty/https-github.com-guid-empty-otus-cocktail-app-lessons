import 'package:flutter/material.dart';

import 'ui/filter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CocktailsFilterScreen(),
    );
  }
}
