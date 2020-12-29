import 'dart:async';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:lesson_09/src/model/cocktail.dart';
import 'package:lesson_09/src/repository/async_cocktail_repository.dart';

void main() => runApp(MaterialApp(home: HomePage()));

const double _logoSize = 200.0;

final repository = AsyncCocktailRepository();

class CocktailThumbImage extends StatelessWidget {
  final String _url;

  const CocktailThumbImage(this._url, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Image.network(_url),
        width: _logoSize,
        height: _logoSize,
        color: Colors.green,
      );
}

class DemoPage extends StatefulWidget {
  @override
  _DemoPageState createState() => _DemoPageState();
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Get Random Cocktail Demo')),
        body: DemoPage(),
      ),
    );
  }
}

class IsolateProducer {
  static void getRandomCocktailDetails(SendPort sendPort) {
    Timer.periodic(Duration(seconds: 10), (timer) async {
      final cocktailDetails = await repository.getRandomCocktail();
      sendPort.send(cocktailDetails);
    });
  }
}

class RandomCocktailWidget extends StatefulWidget {
  @override
  RandomCocktailWidgetState createState() => RandomCocktailWidgetState();
}

class RandomCocktailWidgetState extends State<RandomCocktailWidget> with TickerProviderStateMixin {
  AnimationController _animationController;
  ReceivePort _receivePort;
  Isolate _randomCocktailFetchingIsolate;
  Cocktail _randomCocktail;

  @override
  Widget build(BuildContext context) => Center(
        child: RotationTransition(
          turns: _animationController,
          child: _randomCocktail != null
              ? CocktailThumbImage(_randomCocktail.drinkThumbUrl)
              : Icon(Icons.add_a_photo_outlined),
        ),
      );

  @override
  void dispose() {
    _animationController.dispose();
    _receivePort?.close();
    _randomCocktailFetchingIsolate.kill(priority: Isolate.immediate);
    _randomCocktailFetchingIsolate = null;

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _receivePort = ReceivePort();
    _receivePort.listen((message) {
      if (message is Cocktail) {
        setState(() {
          _randomCocktail = message;
        });
      }
    });
    Isolate.spawn(IsolateProducer.getRandomCocktailDetails, _receivePort.sendPort).then((isolate) {
      _randomCocktailFetchingIsolate = isolate;
    });

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
          RandomCocktailWidget(),
        ],
      ),
    );
  }
}
