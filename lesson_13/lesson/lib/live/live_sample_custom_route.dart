import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: CustomRouteSample(),
  ));
}

class CustomRouteSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomRouteSample'),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => open(context),
          child: Text('open'),
        ),
      ),
    );
  }

  void open(BuildContext context) {
    Navigator.of(context).push(CustomRouteBuilder(enterPage: Page2()));
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
      ),
      body: Center(child: FlutterLogo(size: 100,)),
    );
  }
}

class CustomRouteBuilder extends PageRouteBuilder {
  final Widget enterPage;
  CustomRouteBuilder({this.enterPage})
      : super(
          transitionDuration: Duration(milliseconds: 300),
          reverseTransitionDuration: Duration(milliseconds: 300),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return enterPage;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            //todo реализовать анимацию перехода
            // используя FadeTransition или ScaleTransition
          },
        );
}
