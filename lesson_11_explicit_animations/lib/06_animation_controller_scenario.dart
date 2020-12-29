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

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      lowerBound: 0, //  default value
      upperBound: 1000, //  default value
      duration: const Duration(seconds: 1),
    );

    _controller.addListener(() {
      print(_controller.value.toStringAsFixed(4));
      setState(() {});
    });

    _controller.addStatusListener((status) {
      print(_controller.status);
    });
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - Animation controller - scenario'),
      ),
      body: Center(
        child: Container(
            height: 300,
            child: Column(
              children: [
                Text('${_controller.value.toStringAsFixed(4)} -> Check console output'),
                Text('${_controller.status} -> Check console output'),
              ],
            )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _controller
            ..reset()
            ..forward();
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
