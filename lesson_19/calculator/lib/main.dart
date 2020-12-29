import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:numberpicker/numberpicker.dart';

import 'calculator_store.dart';

void main() {
  mainContext.config =
      ReactiveConfig.main.clone(writePolicy: ReactiveWritePolicy.always);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final store = CalculatorStore.create();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Observer(
                  builder: (context) {
                    return NumberPicker.integer(
                      initialValue: store.firstNumber.value,
                      minValue: 0,
                      maxValue: 100,
                      onChanged: (newValue) {
                        store.setFirstNumber(newValue);
                      },
                    );
                  },
                ),
                Icon(Icons.add),
                Observer(
                  builder: (context) {
                    return NumberPicker.integer(
                      initialValue: store.secondNumber.value,
                      minValue: 0,
                      maxValue: 100,
                      onChanged: (newValue) {
                        store.setSecondNumber(newValue);
                      },
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            Observer(
              builder: (context) {
                return Text(
                  "Result: ${store.result}",
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
