import 'package:flutter/material.dart';

class ValueListenableSample extends StatelessWidget {
  final ValueNotifier<int> _counter = ValueNotifier<int>(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ValueListenableSample')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Radius'),
            ValueListenableBuilder(
              valueListenable: _counter,
              builder: (BuildContext context, int value, Widget child) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('$value'),
                    ClipRRect(
                        borderRadius:
                            BorderRadius.all(Radius.circular(value.toDouble())),
                        child: child),
                  ],
                );
              },
              child: Image.network(
                  'https://bipbap.ru/wp-content/uploads/2019/07/59b21ebebd0470cb6d8b4570.jpg'),
            )
          ],
        ),
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: _counter,
        builder: (BuildContext context, int value, Widget child) {
          return FloatingActionButton(
            child: Text('$value'),
            onPressed: () => _counter.value += 1,
          );
        },
      ),
    );
  }
}
