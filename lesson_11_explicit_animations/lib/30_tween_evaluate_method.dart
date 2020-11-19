import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Explicit Animations - Tween - evaluate'),
          ),
          body: TweenEvaluateMethodDemoWidget()),
    );
  }
}

class TweenEvaluateMethodDemoWidget extends StatefulWidget {
  TweenEvaluateMethodDemoWidget({Key key}) : super(key: key);

  _TweenEvaluateMethodDemoWidgetState createState() => _TweenEvaluateMethodDemoWidgetState();
}

class _TweenEvaluateMethodDemoWidgetState extends State<TweenEvaluateMethodDemoWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  Tween<double> _leftTween = Tween<double>(begin: 0, end: 300);
  ColorTween _colorTween = ColorTween(begin: Colors.red, end: Colors.green);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: 300,
                color: Colors.amberAccent,
                child: Stack(children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: _colorTween.evaluate(_controller),
                    ),
                    left: _leftTween.evaluate(_controller),
                  )
                ]),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.play_arrow),
              onPressed: () {
                _controller.forward();
              },
            ),
            IconButton(
              icon: Icon(Icons.stop),
              onPressed: () {
                _controller.stop();
              },
            ),
          ],
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 1));
    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener(_handleAnimationStatusChange);

    super.initState();
  }

  void _handleAnimationStatusChange(AnimationStatus status) {
    print(status);
    if (status == AnimationStatus.completed) {
      _controller.reverse();
    } else if (status == AnimationStatus.dismissed) {
      _controller.forward();
    }
  }
}
