import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';

void main() => runApp(
      DevicePreview(
        enabled: !kReleaseMode,
        builder: (context) => MyApp(),
      ),
    );

class CustomDrawer extends StatelessWidget {
  final LottieComposition composition;

  const CustomDrawer(this.composition, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomPaint(
      painter: _Painter(composition),
      size: size,
    );
  }
}

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  LottieComposition _composition;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Animations - Lottie'),
      ),
      body: Center(
        child: CustomDrawer(_composition),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _loadComposition();
  }

  Future<void> _loadComposition() async {
    var assetData = await rootBundle.load('assets/lottie/cat-preloader.json');
    _composition = await LottieComposition.fromByteData(assetData);
    setState(() {});
  }
}

class _Painter extends CustomPainter {
  final LottieDrawable drawable;

  _Painter(LottieComposition composition) : drawable = LottieDrawable(composition);

  @override
  void paint(Canvas canvas, Size size) {
    var frameCount = 40;
    var columns = 5;
    for (var i = 0; i < frameCount; i++) {
      var destRect = Offset(i % columns * 140.0, i ~/ 5 * 140.0) & (size / 5);
      drawable
        ..setProgress(i / frameCount)
        ..draw(canvas, destRect);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
