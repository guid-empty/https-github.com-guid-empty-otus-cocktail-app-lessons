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
  bool _checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Implicit Animations - AnimatedContainer'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: _checked ? 400.0 : 200.0,
          height: _checked ? 400.0 : 200.0,
          color: _checked ? Colors.red : Colors.green,
          duration: const Duration(seconds: 1),
          child: FlutterIcon(),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _checked = !_checked;
          });
        },
        child: _checked ? Icon(Icons.check_box_outline_blank) : Icon(Icons.check_box),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
