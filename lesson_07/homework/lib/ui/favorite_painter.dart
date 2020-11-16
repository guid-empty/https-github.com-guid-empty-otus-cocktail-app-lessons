import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class RingPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Colors.yellow[800]
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10;

    canvas.drawCircle(Offset.zero, 25, paint);
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
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    // Path path = Path();
    // path.moveTo(size.width * 0.25, size.height * 0.79);
    // path.quadraticBezierTo(size.width * 0.21, size.height * 0.64,
    //     size.width * 0.25, size.height * 0.57);
    // path.cubicTo(size.width * 0.30, size.height * 0.55, size.width * 0.41,
    //     size.height * 0.52, size.width * 0.46, size.height * 0.50);
    // path.cubicTo(size.width * 0.46, size.height * 0.65, size.width * 0.58,
    //     size.height * 0.64, size.width * 0.58, size.height * 0.50);
    // path.cubicTo(size.width * 0.64, size.height * 0.52, size.width * 0.74,
    //     size.height * 0.55, size.width * 0.79, size.height * 0.57);
    // path.quadraticBezierTo(size.width * 0.83, size.height * 0.61,
    //     size.width * 0.79, size.height * 0.79);
    // path.lineTo(size.width * 0.25, size.height * 0.79);
    // path.close();

    //canvas.drawPath(path, paint_0);

    canvas.drawLine(Offset.zero, Offset.fromDirection(5), paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          CustomPaint(
            painter: RingPainter(),
            child: Container(
              height: 20,
              width: 20,
            ),
          ),
          CustomPaint(
            painter: HeartPainter(),
            child: Container(
              height: 20,
              width: 20,
            ),
          ),
        ],
      ),
    );
  }
}
