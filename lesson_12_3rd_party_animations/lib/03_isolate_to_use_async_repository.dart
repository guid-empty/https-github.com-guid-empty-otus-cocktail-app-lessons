import 'dart:async';
import 'dart:io';
import 'dart:isolate';

import 'package:flutter/material.dart';
import 'package:lesson_12_3rd_party_animations/02_progress_loader.dart';
import 'package:lesson_12_3rd_party_animations/src/model/cocktail.dart';
import 'package:lesson_12_3rd_party_animations/src/repository/async_cocktail_repository.dart';
import 'package:lesson_12_3rd_party_animations/ui/actions.dart';

void main() => runApp(MaterialApp(home: HomePage()));

const double _thumbSize = 400.0;

final repository = AsyncCocktailRepository();

class CocktailThumbImage extends StatelessWidget {
  final String _url;

  const CocktailThumbImage(this._url, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Container(
        child: Image.network(_url),
        width: _thumbSize,
        height: _thumbSize,
        color: Colors.transparent,
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
      sendPort.send(HttpRequestStartedAction('I started to load data'));
      sleep(Duration(seconds: 2));

      final cocktailDetails = await repository.getRandomCocktail();

      sendPort.send(CocktailDetailsAction(cocktailDetails));
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
  bool _isLoading = true;

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          alignment: Alignment.center,
          height: _thumbSize,
          width: _thumbSize,
          decoration: BoxDecoration(color: Colors.blueAccent),
          child: Stack(
            children: [
              if (_randomCocktail != null) CocktailThumbImage(_randomCocktail.drinkThumbUrl),
              if (_isLoading)
                Container(
                  height: _thumbSize,
                  width: _thumbSize,
                  child: ProgressLoader(color: Colors.black26.withOpacity(.7)),
                ),
            ],
          ),
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
      if (message is CocktailDetailsAction) {
        setState(() {
          _randomCocktail = message.data;
          _isLoading = false;
        });
      }

      if (message is HttpRequestStartedAction) {
        setState(() {
          _isLoading = true;
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
        children: [RandomCocktailWidget()],
      ),
    );
  }
}
