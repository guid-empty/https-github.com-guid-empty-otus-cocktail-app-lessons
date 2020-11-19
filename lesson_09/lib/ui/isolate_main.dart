import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HomePage()));

const double _logoSize = 200.0;

///
/// Представим, что мы обрабатываем очень большой файл
///
void processImageFile(dynamic someParameter) {
  sleep(Duration(seconds: 5));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Проблема ?')),
        body: DemoPage(),
      ),
    );
  }
}

class OtusLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        child: Image.network(
            'https://res-1.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco/ik5iu5k69ttnyehbag0j'),
        width: _logoSize,
        height: _logoSize,
        color: Colors.green,
      );
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class OtusAnimationWidget extends StatefulWidget {
  @override
  OtusAnimationWidgetState createState() => OtusAnimationWidgetState();
}

class OtusAnimationWidgetState extends State<OtusAnimationWidget> with TickerProviderStateMixin {
  AnimationController _animationController;

  @override
  Widget build(BuildContext context) => Center(
        child: RotationTransition(
          turns: _animationController,
          child: OtusLogo(),
        ),
      );

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _animationController.repeat();
  }
}

class _DemoPageState extends State<DemoPage> {
  Future<void> computeFuture = Future.value();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          OtusAnimationWidget(),
          Container(
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(top: 150),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                      child: const Text('Выполнить в текущем изоляте'),
                      onPressed:
                          snapshot.connectionState == ConnectionState.done ? () => handleComputeOnMain(context) : null,
                    );
                  },
                ),
                /// uncomment this
                FutureBuilder(
                  future: computeFuture,
                  builder: (context, snapshot) {
                    return RaisedButton(
                        child: const Text('Выполнить в отдельном изоляте'),
                        onPressed: snapshot.connectionState == ConnectionState.done
                            ? () => handleComputeOnSecondary(context)
                            : null);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Future<void> computeOnMainIsolate() async => processImageFile(null);

  void handleComputeOnMain(BuildContext context) {
    var future = computeOnMainIsolate().then((_) {
      var snackBar = SnackBar(
        content: Text('Main Isolate Done!'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    });

    setState(() {
      computeFuture = future;
    });
  }

  ///
  /// uncomment this
  ///
  Future<void> computeOnSecondaryIsolate() => compute(processImageFile, null);

  void handleComputeOnSecondary(BuildContext context) {
    var future = computeOnSecondaryIsolate().then((_) {
      var snackBar = SnackBar(
        content: Text('Secondary Isolate Done!'),
      );
      Scaffold.of(context).showSnackBar(snackBar);
    });

    setState(() {
      computeFuture = future;
    });
  }
}
