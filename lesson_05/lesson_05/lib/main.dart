import 'package:flutter/material.dart';
import 'package:lesson_05/slivers/sliver_flexible_space.dart';



//списки: ListView. GridView. PageView. CustomScroll;
//SliverGridView. SliverListView. FlexibleSpace.SliverAppBar.

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(
          button: TextStyle(color: Colors.white)
        )
      )
    ),
    home: SliversFlexibleSamplePage(),
  ));
}
