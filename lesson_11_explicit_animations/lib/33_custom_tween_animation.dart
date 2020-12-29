import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimatedBuilderDemo(),
    );
  }
}

class TypeWriterTween extends Tween<String> {
  TypeWriterTween({String begin = '', String end}) : super(begin: begin, end: end);

  @override
  String lerp(double t) {
    var currentLengthOfText = (end.length * t).round();
    return end.substring(0, currentLengthOfText);
  }
}

class AnimatedBuilderDemo extends StatefulWidget {
  @override
  _AnimatedBuilderDemoState createState() => _AnimatedBuilderDemoState();
}

class _AnimatedBuilderDemoState extends State<AnimatedBuilderDemo> with SingleTickerProviderStateMixin {
  static const Duration _duration = Duration(seconds: 2);
  static const String message = '''
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum Lorem Ipsum 
''';

  AnimationController _animationController;
  Animation<String> _animation;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(vsync: this, duration: _duration);
    _animation = TypeWriterTween(end: message).animate(_animationController);
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                color: Colors.black26,
                padding: EdgeInsets.all(8.0),
                child: AnimatedBuilder(
                  animation: _animation,
                  builder: (context, child) {
                    return _animation.value.isNotEmpty
                        ? Text(
                            '${_animation.value}',
                            style: TextStyle(fontSize: 16, fontFamily: 'SpecialElite'),
                          )
                        : Text('');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_animationController.status == AnimationStatus.completed) {
            _animationController.reverse().then((value) => setState(() {}));
          } else {
            _animationController.forward().then((value) => setState(() {}));
          }
        },
        child: _animationController.status == AnimationStatus.completed
            ? Icon(Icons.arrow_back)
            : Icon(Icons.arrow_forward),
      ),
    );
  }
}
