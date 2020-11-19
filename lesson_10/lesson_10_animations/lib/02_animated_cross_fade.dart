import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class CatLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network('https://cdn1.ozone.ru/multimedia/wc1200/1027466419.jpg'),
      width: 200.0,
      height: 200.0,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> {
  bool _showFirstChild = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations - AnimatedCrossFade'),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 1),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 200.0),
          secondChild: CatLogo(),
          crossFadeState: _showFirstChild
              ? CrossFadeState.showFirst
              : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirstChild = !_showFirstChild;
          });
        },
        child: _showFirstChild
            ? Icon(Icons.last_page)
            : Icon(Icons.first_page),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
