import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  bool _isAnimated = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Advanced Animations - Lottie'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Stack(
            children: <Widget>[
              Lottie.asset(
                'assets/lottie/cat-preloader.json',
                animate: _isAnimated,
              ),
              // Lottie.asset('assets/lottie/circle-venn-diagram-spherical-octahedron.json'),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isAnimated = !_isAnimated;
          });
        },
        child: _isAnimated ? Icon(Icons.stop) : Icon(Icons.play_arrow),
      ),
    );
  }
}
