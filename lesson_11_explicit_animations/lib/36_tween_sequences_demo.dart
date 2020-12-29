import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Explicit Animations - Tween - sequence'),
          ),
          body: TweenAnimateMethodDemoWidget()),
    );
  }
}

class TweenAnimateMethodDemoWidget extends StatefulWidget {
  TweenAnimateMethodDemoWidget({Key key}) : super(key: key);

  _TweenAnimateMethodDemoWidgetState createState() => _TweenAnimateMethodDemoWidgetState();
}

class _TweenAnimateMethodDemoWidgetState extends State<TweenAnimateMethodDemoWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _sizeAnimation;

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
                      width: _sizeAnimation.value,
                      height: _sizeAnimation.value,
                      color: Colors.green,
                    ),
                    left: 0,
                    bottom: 0,
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

    _sizeAnimation = TweenSequence(
      [
        TweenSequenceItem(tween: Tween(begin: 50.0, end: 100.0), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 100.0, end: 50.0), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 50.0, end: 75.0), weight: 1),
        TweenSequenceItem(tween: Tween(begin: 75.0, end: 50.0), weight: 1),
      ],
    ).animate(_controller);

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
