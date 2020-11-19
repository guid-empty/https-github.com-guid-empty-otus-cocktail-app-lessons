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

const double _logoWidth = 200;

class OtusLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network('https://otus.ru/static/img/logo-2.8602b.svg'),
      width: _logoWidth,
      height: 200.0,
      color: Colors.green,
    );
  }
}

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
                duration: const Duration(milliseconds: 500),
                left: _left,
                child: OtusLogo(),
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