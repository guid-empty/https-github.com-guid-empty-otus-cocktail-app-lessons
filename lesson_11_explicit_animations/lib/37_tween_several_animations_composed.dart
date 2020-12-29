import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StaggerDemo(),
    ),
  );
}

class StaggerAnimation extends StatelessWidget {
  final Animation<double> controller;

  final Animation<double> canvasSize;
  final Animation<double> size;
  final Animation<double> rotation;
  final Animation<double> borderRadius;
  final Animation<Color> color;
  StaggerAnimation({Key key, this.controller})
      : canvasSize = Tween<double>(begin: 50.0, end: 200.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0,
              0.5,
              curve: Curves.ease,
            ),
          ),
        ),
        size = Tween<double>(begin: 30.0, end: 200.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.5,
              1.0,
              curve: Curves.ease,
            ),
          ),
        ),
        rotation = Tween<double>(begin: 0, end: 4 * pi).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0,
              1,
              curve: Curves.ease,
            ),
          ),
        ),
        borderRadius = Tween<double>(begin: 30, end: 10).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.25,
              1,
              curve: Curves.ease,
            ),
          ),
        ),
        color = ColorTween(
          begin: Colors.indigo[300],
          end: Colors.orange[400],
        ).animate(
          CurvedAnimation(
            parent: controller,
            curve: Interval(
              0.500,
              0.750,
              curve: Curves.ease,
            ),
          ),
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: _buildAnimation,
      animation: controller,
    );
  }

  Widget _buildAnimation(BuildContext context, Widget child) {
    return SizedBox(
      height: canvasSize.value,
      width: canvasSize.value,
      child: Transform.rotate(
        angle: rotation.value,
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: size.value,
            height: size.value,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(borderRadius.value),
              color: color.value,
            ),
          ),
        ),
      ),
    );
  }
}

class StaggerDemo extends StatefulWidget {
  @override
  _StaggerDemoState createState() => _StaggerDemoState();
}

class _StaggerDemoState extends State<StaggerDemo> with TickerProviderStateMixin {
  AnimationController _controller;

  @override
  Widget build(BuildContext context) {
    timeDilation = 1.0; // 1.0 is normal animation speed.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered Animation'),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          _playAnimation();
        },
        child: Center(
          child: StaggerAnimation(controller: _controller.view),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(duration: const Duration(milliseconds: 2000), vsync: this);
  }

  Future<void> _playAnimation() async {
    try {
      await _controller.forward().orCancel;
      await _controller.reverse().orCancel;
    } on TickerCanceled {
      print('canceled');
      // the animation got canceled, probably because we were disposed
    }
  }
}
