import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Ball extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.green,
      ),
      width: 40.0,
      height: 40.0,
    );
  }
}

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
  double currentLeft;
  double start;
  double end;
  double increment;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    end = size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - Timer based'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              Positioned(
                left: currentLeft,
                child: Ball(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentLeft = 0;
            interpolate(start, end);
            new Timer.periodic(const Duration(milliseconds: 16), move);
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void initState() {
    super.initState();
    currentLeft = 0;
    start = 0;
  }

  void interpolate(double start, double end) {
    setState(() {
      increment = (end - start) / 60;
    });
  }

  void move(Timer t) async {
    final width = 40;
    final endPosition = end - width;

    if (currentLeft < endPosition) {
      setState(() {
        currentLeft += increment;
      });
    } else {
      t.cancel();
    }

    print('frame');
  }
}
