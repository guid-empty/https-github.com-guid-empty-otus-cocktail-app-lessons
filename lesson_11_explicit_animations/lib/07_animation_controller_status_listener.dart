import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class AnimationControllerStatusesDemoWidget extends StatefulWidget {
  AnimationControllerStatusesDemoWidget({Key key}) : super(key: key);

  _AnimationControllerStatusesDemoWidgetState createState() => _AnimationControllerStatusesDemoWidgetState();
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Explicit Animations - Animation controller - statuses'),
          ),
          body: AnimationControllerStatusesDemoWidget()),
    );
  }
}

class _AnimationControllerStatusesDemoWidgetState extends State<AnimationControllerStatusesDemoWidget>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  double _left = 0;
  double _width = 0;

  @override
  Widget build(BuildContext context) {
    _width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          children: [
            Expanded(
              child: Container(
                height: 500,
                color: Colors.amberAccent,
                child: Stack(children: <Widget>[
                  Positioned(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.green,
                    ),
                    left: _left,
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
      setState(() {
        _left = (_controller.value * _width - 50);
      });
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
