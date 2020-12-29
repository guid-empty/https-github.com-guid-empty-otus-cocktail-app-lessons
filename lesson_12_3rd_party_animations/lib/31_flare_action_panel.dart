import 'package:flutter/material.dart';

import 'flare/flare.actions.panel/home.dart';

void main() {
  runApp(
    new MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Color(0xFF2196F3),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
        body: Home(),
      ),
    );
  }
}
