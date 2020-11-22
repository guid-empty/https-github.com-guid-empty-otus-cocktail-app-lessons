import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Heart(),
    );
  }
}

class RingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.yellow[800]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    canvas.drawCircle(Offset(25.0, 25.0), 25, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class HeartPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    Path path_0 = Path();

    path_0.moveTo(size.width * 0.50, size.height);
    path_0.quadraticBezierTo(size.width * 0.20, size.height * 0.63,
        size.width * 0.10, size.height * 0.50);
    path_0.cubicTo(size.width * 0.02, size.height * 0.37, size.width * 0.03,
        size.height * 0.28, size.width * 0.10, size.height * 0.20);
    path_0.cubicTo(size.width * 0.13, size.height * 0.17, size.width * 0.13,
        size.height * 0.14, size.width * 0.20, size.height * 0.10);
    path_0.cubicTo(size.width * 0.30, size.height * 0.07, size.width * 0.30,
        size.height * 0.07, size.width * 0.40, size.height * 0.10);
    path_0.quadraticBezierTo(size.width * 0.50, size.height * 0.16,
        size.width * 0.50, size.height * 0.30);
    path_0.quadraticBezierTo(size.width * 0.50, size.height * 0.15,
        size.width * 0.60, size.height * 0.10);
    path_0.cubicTo(size.width * 0.70, size.height * 0.07, size.width * 0.70,
        size.height * 0.07, size.width * 0.80, size.height * 0.10);
    path_0.cubicTo(size.width * 0.87, size.height * 0.14, size.width * 0.88,
        size.height * 0.17, size.width * 0.90, size.height * 0.20);
    path_0.cubicTo(size.width * 0.96, size.height * 0.27, size.width * 0.97,
        size.height * 0.36, size.width * 0.90, size.height * 0.50);
    path_0.quadraticBezierTo(
        size.width * 0.80, size.height * 0.63, size.width * 0.50, size.height);
    path_0.close();

    canvas.drawPath(path_0, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomPaint(
        painter: RingPainter(),
        child: Container(
          height: 20,
          width: 20,
        ),
        foregroundPainter: HeartPainter(),
      ),
    );
  }
}

class Heart extends StatelessWidget {
  Heart({this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.bounceOut,
      width: isSelected ? 30 : 20,
      height: isSelected ? 30 : 20,
      duration: Duration(milliseconds: 500),
      child: CustomPaint(
        painter: HeartPainter(),
      ),
    );
  }
}

class Ring extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RingPainter(),
      child: Container(
        height: 50,
        width: 50,
      ),
    );
  }
}
