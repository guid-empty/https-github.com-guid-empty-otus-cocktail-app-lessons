import 'package:flutter/material.dart';

import 'common/flutter_icon.dart';

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

const double _logoWidth = 200;

class _MyHomePageState extends State<MyHomePage> {
  double _left = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations - AnimatedPositioned'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              AnimatedPositioned(
                duration: const Duration(seconds: 1),
                curve: Curves.bounceOut, //  <- curve to set physics behaviour
                left: _left,
                child: FlutterIcon(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _left = _left > 0 ? 0 : size.width - _logoWidth;
          });
        },
        child: Icon(Icons.opacity),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
