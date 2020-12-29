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
  Widget _widget;

  @override
  void initState() {
    super.initState();
    _buildSwitchedWidget();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations - AnimatedSwitcher'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _widget,
          transitionBuilder: (widget, animation ) {
            return RotationTransition(child: widget, turns: animation);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirstChild = !_showFirstChild;
            _widget = _buildSwitchedWidget();
          });
        },
        child: _showFirstChild ? Icon(Icons.last_page) : Icon(Icons.first_page),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _buildSwitchedWidget() =>
      _showFirstChild ? const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 200.0) : CatLogo();
}
