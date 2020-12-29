import 'package:flutter/material.dart';

class TitlePage extends StatelessWidget {
  const TitlePage({
    Key key,
    this.title = 'page',
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(title),
      ),
    );
  }
}

// Экран с кнопкой
class RootPage extends StatelessWidget {

  const RootPage({Key key, this.onTap, this.title}) : super(key: key);

  final VoidCallback onTap;

  final String title;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: TextButton(onPressed:onTap,child: Text(title),),
      ),
    );
  }
}
