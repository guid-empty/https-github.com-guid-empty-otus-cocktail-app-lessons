import 'package:flutter/material.dart';

class CustomCirclePainter extends CustomPainter {
  final Color circleColor;
  final double circleRadius;

  CustomCirclePainter({this.circleColor, this.circleRadius});

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = circleColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    canvas.drawCircle(Offset(0.0, 0.0), circleRadius, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}