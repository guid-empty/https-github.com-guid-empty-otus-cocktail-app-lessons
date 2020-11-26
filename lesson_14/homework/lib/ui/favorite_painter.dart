import 'dart:ui';
import 'package:flutter/material.dart';

class RingPainter extends CustomPainter {
  final Color ringColor;
  final double ringRadius;

  RingPainter({this.ringColor, this.ringRadius});
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = ringColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8;

    canvas.drawCircle(Offset(10.0, 10.0), ringRadius, paint);
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
      ..strokeWidth = 0.0;

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

class Heart extends StatelessWidget {
  const Heart({this.isSelected});
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: HeartPainter(),
    );
  }
}

class Ring extends StatelessWidget {
  final Color ringColor;
  final double ringRadius;

  const Ring({this.ringColor, this.ringRadius});
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: RingPainter(
        ringColor: ringColor,
        ringRadius: ringRadius,
      ),
    );
  }
}

class AnimatedRing extends StatefulWidget {
  @override
  _AnimatedRingState createState() => _AnimatedRingState();
}

class _AnimatedRingState extends State<AnimatedRing>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<Color> colorAnimation;
  Animation<double> radiusAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    colorAnimation = ColorTween(
      begin: Colors.yellow[800],
      end: Color(0xFF1A1927),
    ).animate(controller);
    radiusAnimation = Tween(begin: 5.0, end: 30.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Ring(
            ringColor: colorAnimation.value,
            ringRadius: radiusAnimation.value,
          );
        },
      ),
    );
  }
}

class AnimatedHeart extends StatefulWidget {
  @override
  _AnimatedHeartState createState() => _AnimatedHeartState();
}

class _AnimatedHeartState extends State<AnimatedHeart>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> opacityAnimation;
  Animation<double> radiusAnimation;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    opacityAnimation = Tween(
      begin: 0.1,
      end: 1.0,
    ).animate(controller);
    radiusAnimation = Tween(begin: 10.0, end: 25.0)
        .animate(CurvedAnimation(parent: controller, curve: Curves.bounceOut));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.forward();
    return Center(
      child: AnimatedBuilder(
        animation: controller,
        builder: (context, child) {
          return Heart();
        },
      ),
    );
  }
}
