import 'dart:math' as Math;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// наш кастомный прогресс бар
class ProgressBarWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ProgressBarWidgetState();
  }
}

class ProgressBarWidgetState extends State<ProgressBarWidget>
    with SingleTickerProviderStateMixin {
  Animation<double> _animationRotation;
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );

    _controller.repeat();

    _animationRotation =
        Tween<double>(begin: 0, end: Math.pi * 2).animate(_controller);

    _animationRotation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        width: 50,
        height: 50,
      ),
      painter: CustomProgressBar(
        rotation: _animationRotation.value,
        color: Colors.yellowAccent,
      ),
    );
  }
}

class CustomProgressBar extends CustomPainter {
  final Color color;
  final double rotation;

  CustomProgressBar({this.rotation, this.color});

  @override
  void paint(Canvas canvas, Size size) {
    Paint rectPaint = Paint();
    rectPaint.style = PaintingStyle.fill;
    rectPaint.strokeWidth = 2;
    rectPaint.color = color;

    canvas.save();

    canvas.translate(size.width / 2, size.height / 2);
    canvas.rotate(rotation);
    canvas.translate(-size.width / 2, -size.height / 2);

    // рисуем вращающийся крестик
    Offset center = Offset(size.width / 2, size.height / 2);
    canvas.drawLine(center, Offset(size.width, size.height / 2), rectPaint);
    canvas.drawLine(center, Offset(0, size.height / 2), rectPaint);
    canvas.drawLine(center, Offset(size.width / 2, size.height), rectPaint);
    canvas.drawLine(center, Offset(size.width / 2, 0), rectPaint);

    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
