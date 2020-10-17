import 'package:flutter/material.dart';

void main() {
  runApp(MyRootApplicationWidget());
}

class DemoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Event Loop!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Весь ваш код выполняется в одном потоке', textAlign: TextAlign.center),
            Image.asset('assets/gifs/so_fast_cats.gif'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _iterateCollection,
        tooltip: 'Increment',
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  void _iterateCollection() {
    var i = 0;
    final soBigCollection = Iterable.generate(1e10.toInt());
    for (; i < soBigCollection.length; i++) {}
    print(i);
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
            bodyText2: TextStyle(fontSize: 25, color: Colors.blue),
          )),
      home: DemoWidget(),
    );
  }
}
