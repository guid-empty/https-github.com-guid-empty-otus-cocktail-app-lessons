import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Extension Demo'), // try putting a bounce here
        ),
        body: Center(
          child: Container(
            child: Text('Hello World').scaleAnimation, // here we call the bounce extension
          ),
        ),
      ), // and here!
    );
  }
}

class _BounceDownAnimation extends StatefulWidget {
  final Widget child;
  _BounceDownAnimation({Key key, this.child}) : super(key: key);

  @override
  _BounceDownAnimationState createState() => _BounceDownAnimationState();
}

class _BounceDownAnimationState extends State<_BounceDownAnimation> with SingleTickerProviderStateMixin {
  static final TweenSequence<double> _offsetTween = TweenSequence(
    <TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 0, end: -10).chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: -10, end: 0).chain(CurveTween(curve: Curves.bounceOut)),
        weight: 50,
      ),
      TweenSequenceItem<double>(tween: ConstantTween(0), weight: 20),
    ],
  );
  AnimationController _controller;

  Animation<double> _animation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, _animation.value),
          child: child,
        );
      },
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _controller = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _animation = _offsetTween.animate(_controller);

    _controller.repeat();
    super.initState();
  }
}

class _ScaleAnimation extends StatefulWidget {
  final Widget child;

  _ScaleAnimation({Key key, this.child}) : super(key: key);

  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<_ScaleAnimation> with SingleTickerProviderStateMixin {
  static final TweenSequence<double> _scaleTween = TweenSequence(
    <TweenSequenceItem<double>>[
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 1, end: 2).chain(CurveTween(curve: Curves.easeOut)),
        weight: 50,
      ),
      TweenSequenceItem<double>(
        tween: Tween<double>(begin: 2, end: 1).chain(CurveTween(curve: Curves.easeIn)),
        weight: 50,
      ),
      TweenSequenceItem<double>(tween: ConstantTween(1), weight: 20),
    ],
  );
  AnimationController _animationController;

  Animation<double> _scaleAnimation;

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _scaleAnimation,
      child: widget.child,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: Duration(seconds: 2));
    _scaleAnimation = _scaleTween.animate(_animationController);
    _animationController.repeat();
    super.initState();
  }
}

extension AnimationExtensions on Widget {
  Widget get bounceDownAnimation {
    return _BounceDownAnimation(
      child: this,
    );
  }

  Widget get scaleAnimation {
    return _ScaleAnimation(
      child: this,
    );
  }
}
