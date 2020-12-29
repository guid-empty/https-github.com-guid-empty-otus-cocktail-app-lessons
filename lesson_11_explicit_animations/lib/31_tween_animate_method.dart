import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Explicit Animations - Tween - animate'),
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

  Tween<double> _leftTween = Tween<double>(begin: 0, end: 300);
  ColorTween _colorTween = ColorTween(begin: Colors.red, end: Colors.green);

  Animation<double> _leftAnimation;
  CurvedAnimation _curvedAnimation;
  Animation<Color> _colorAnimation;

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
                      color: _colorAnimation.value,
                    ),
                    left: _leftAnimation.value,
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

    _curvedAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.bounceOut,
      reverseCurve: Curves.bounceIn,
    );

    _colorAnimation = _colorTween.animate(_controller);
    _leftAnimation = _leftTween.animate(_curvedAnimation);

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
