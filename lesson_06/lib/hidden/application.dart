import 'package:flutter/material.dart';

class ApplicationWidget extends StatelessWidget {
  final Widget child;

  const ApplicationWidget({Key key, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Mobile Developer',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
            bodyText2: TextStyle(fontSize: 25, color: Colors.blue),
          )),
      home: child,
    );
  }
}
