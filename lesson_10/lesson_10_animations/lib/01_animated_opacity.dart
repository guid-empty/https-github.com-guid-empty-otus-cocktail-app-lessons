import 'package:flutter/material.dart';
import 'package:lesson_10_animations/common/flutter_icon.dart';

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

class _MyHomePageState extends State<MyHomePage> {
  bool _transparent = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Amimations - AnimatedOpacity'),
      ),
      body: Center(
        child: AnimatedOpacity(
          opacity: _transparent ? 0.0 : 1.0,
          duration: const Duration(seconds: 1),
          child: FlutterIcon(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _transparent = !_transparent;
          });
        },
        child: Icon(Icons.opacity),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
