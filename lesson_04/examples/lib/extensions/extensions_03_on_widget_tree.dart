import 'package:flutter/material.dart';

void main() {
  runApp(MyRootApplicationWidget());
}

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Extensions!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                border: Border.all(
                  color: Colors.red,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text('Sample Text'),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: const Color(0xff7c94b6),
                border: Border.all(
                  color: Colors.red,
                  width: 8,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
            ),
          ],
        ),
      ),
    );
  }
}

extension widgetDecorationExtension on Widget {
  Widget withDecoration() => Container(
        decoration: BoxDecoration(
          color: const Color(0xff7c94b6),
          border: Border.all(
            color: Colors.red,
            width: 8,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: this,
      );
}

class DemoWidgetWithExtensions extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Extensions!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text('Sample Text').withDecoration(),
            SizedBox(height: 10),
            Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg').withDecoration(),
          ],
        ),
      ),
    );
  }
}

class MyRootApplicationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobile Developer',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 25, color: Colors.white),
          )),
      home: DemoWidget(),
      // home: DemoWidgetWithExtensions(),
    );
  }
}
