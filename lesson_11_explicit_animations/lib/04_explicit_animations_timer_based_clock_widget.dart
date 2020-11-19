import 'dart:async';

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

class _MyHomePageState extends State<MyHomePage> {
  String _currentTime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - Timer based'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Column(children: [
            Text(_currentTime),
            RaisedButton(
              child: Text('Second Page'),
              onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (_) => SecondPage())),
            ),
          ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Timer.periodic(const Duration(milliseconds: 200), refreshTime);
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void initState() {
    super.initState();
    _currentTime = DateTime.now().toString();
  }

  void refreshTime(Timer t) {
    setState(() {
      _currentTime = DateTime.now().toString();
    });
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second Page',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}
