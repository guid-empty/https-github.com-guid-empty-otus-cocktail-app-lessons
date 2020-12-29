import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

const double _logoSize = 200.0;

class ArcClipper extends CustomClipper<Path> {
  final double _clipFactor;

  ArcClipper(this._clipFactor);

  @override
  Path getClip(Size size) {
    final radius = size.width / 2;
    final center = Offset(size.width / 2, size.height / 2);
    final angle = pi * 2 * _clipFactor;
    final path = Path()
      ..moveTo(center.dx, center.dy)
      ..lineTo(center.dx, center.dy - radius)
      ..arcTo(Rect.fromCenter(center: center, height: size.height, width: size.width), -pi / 2, angle, true)
      ..lineTo(center.dx, center.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class FadeOutAngleTransition extends AnimatedWidget {
  final Animation<double> animation;
  final Widget child;

  FadeOutAngleTransition({Key key, @required this.animation, @required this.child})
      : super(key: key, listenable: animation);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: animation,
      builder: (_, Widget childWidget) {
        return ClipPath(child: childWidget, clipper: ArcClipper(animation.value));
      },
      child: child,
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

class OtusLogo extends StatelessWidget {
  const OtusLogo();

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
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - AnimatedWidget - FadeOutAngleTransition'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              FadeOutAngleTransition(
                animation: _controller,
                child: const OtusLogo(),
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
      duration: const Duration(seconds: 2),
    );
  }
}
