import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.of(context).locale, // <--- /!\ Add the locale
      builder: DevicePreview.appBuilder, // <--- /!\ Add the builder
      home: MyHomePage(),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_0 = new Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = 1;

    Path path = Path();
    path.moveTo(size.width * 0.25, size.height * 0.79);
    path.quadraticBezierTo(size.width * 0.21, size.height * 0.64, size.width * 0.25, size.height * 0.57);
    path.cubicTo(size.width * 0.30, size.height * 0.55, size.width * 0.41, size.height * 0.52, size.width * 0.46,
        size.height * 0.50);
    path.cubicTo(size.width * 0.46, size.height * 0.65, size.width * 0.58, size.height * 0.64, size.width * 0.58,
        size.height * 0.50);
    path.cubicTo(size.width * 0.64, size.height * 0.52, size.width * 0.74, size.height * 0.55, size.width * 0.79,
        size.height * 0.57);
    path.quadraticBezierTo(size.width * 0.83, size.height * 0.61, size.width * 0.79, size.height * 0.79);
    path.lineTo(size.width * 0.25, size.height * 0.79);
    path.close();



    canvas.drawPath(path, paint_0);
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Animations - Custom Paint Demo'),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: CustomPaint(
            painter: MyCustomPainter(),
          ),
        ),
      ),
    );
  }
}
