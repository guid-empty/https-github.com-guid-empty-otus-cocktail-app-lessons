import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    onGenerateRoute: (settings) {
      //todo реализовать открытие TitlePage
    },
    home: RootScreen(),
  ));
}

class RootScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RootScreen'),
      ),
      body: Center(
        child: Column(
          children: [
            FlatButton(
                onPressed: () => _openPage1(context),
                child: Text('Open Page 1')),
            FlatButton(
                onPressed: () => _openPage2(context),
                child: Text('Open Page 2')),
          ],
        ),
      ),
    );
  }

  void _openPage1(BuildContext context) {
    //todo открыть TitlePage используюя Navigator.push
    // и передать в качестве заголовка "Page1"
  }

  void _openPage2(BuildContext context) {
    //todo открыть TitlePage используюя Navigator.pushNamed
    // и передать в качестве заголовка "Page2"
  }
}

class TitlePage extends StatelessWidget {
  const TitlePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    //todo реализовать получение title через ModalRoute.of(context)
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}
