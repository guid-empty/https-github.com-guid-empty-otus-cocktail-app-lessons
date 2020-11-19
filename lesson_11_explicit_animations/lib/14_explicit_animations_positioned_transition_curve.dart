import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const double _logoSize = 200.0;

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

class OtusLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network('https://otus.ru/static/img/logo-2.8602b.svg'),
      width: _logoSize,
      height: _logoSize,
      color: Colors.green,
    );
  }
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final padding = 50.0;
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - PositionedTransition'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              PositionedTransition(
                rect: RelativeRectTween(
                  begin: RelativeRect.fromLTRB(0, padding, size.width - _logoSize, padding),
                  end: RelativeRect.fromLTRB((size.width - _logoSize), padding, 0, padding),
                ).animate(CurvedAnimation(
                  parent: _controller,
                  curve: Curves.bounceOut,
                )),
                child: OtusLogo(),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_controller.isAnimating) {
            _controller.stop();
          } else {
            _controller.repeat();
          }

          setState(() {});
        },
        child: _controller.isAnimating ? Icon(Icons.stop) : Icon(Icons.play_arrow),
      ),
    );
  }

  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
  }
}
