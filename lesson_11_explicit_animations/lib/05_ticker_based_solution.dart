import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Second Page',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Back'),
            )
          ],
        ),
      ),
    );
  }
}

///
/// SingleTickerProviderStateMixin позволяет нам получить доступ к Ticker
///
class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  DateTime _startTime;
  String _currentTime = 'empty';
  Ticker _ticker;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explicit Animations - Ticker based'),
      ),
      body: Center(
        child: Container(
          height: 300,
          child: Column(children: [
            Text(_currentTime),
            RaisedButton(
              child: Text('Second Page'),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) => SecondPage()));
              },
            ),
          ]),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _ticker?.dispose();
  }

  @override
  void initState() {
    super.initState();

    _startTime = DateTime.now();

    _ticker?.dispose();
    _ticker = createTicker((elapsed) {
      setState(() {
        _currentTime = _startTime.toString();
        _currentTime = (_startTime.add(elapsed)).toString();
      });
    })..start();

    print('isMuted: ${_ticker.muted}');
    print('isActive: ${_ticker.isActive}');
    print('isTicking: ${_ticker.isTicking}');
  }
}
