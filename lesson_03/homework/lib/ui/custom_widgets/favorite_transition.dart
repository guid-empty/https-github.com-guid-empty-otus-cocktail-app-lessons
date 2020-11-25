import 'package:flutter/material.dart';
import 'package:homework/ui/custom_widgets/custom_circle/custom_circle.dart';

class BouncingHeart extends StatefulWidget {
  @override
  _BouncingHeartState createState() => _BouncingHeartState();
}

class _BouncingHeartState extends State<BouncingHeart>
    with TickerProviderStateMixin {
  double _scale;
  double _circleScale;
  AnimationController _controller;
  AnimationController _circleController;

  @override
  void initState() {
    _circleController = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 0.0,
      upperBound: 1.1,
    )..addListener(() {
        setState(() {});
      });

    _controller = AnimationController(
      vsync: this,
      duration: Duration(
        milliseconds: 500,
      ),
      lowerBound: 1.0,
      upperBound: 2,
    )..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _circleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // _scale = 1 - _controller.value;
    _scale = _controller.value;
    _circleScale = _circleController.value;
    debugPrint(_scale.toString());
    return Center(
      child: GestureDetector(
        onTapDown: _tapDown,
        child: Container(
          width: 60,
          height: 60,
          child: Stack(
            children: [
              Center(
                child: Transform.scale(
                  scale: _circleScale,
                  child: _animatedCircle(Colors.amber, 40.0),
                ),
              ),
              Center(
                child: Transform.scale(
                  scale: _scale,
                  child: _animatedButton(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _animatedCircle(Color color, double radius) {
    return Center(
        child: CustomPaint(
      painter: CustomCirclePainter(circleColor: color, circleRadius: radius),
    ));
  }

  Widget _animatedButton() {
    return Center(
        child: Icon(
      Icons.favorite,
      color: Colors.red,
    ));
  }

  void _tapDown(TapDownDetails details) {
    _circleController.forward().whenComplete(() => _circleController.reverse());
    _controller.forward().whenComplete(() => _controller.reverse());
    ;
  }
}
