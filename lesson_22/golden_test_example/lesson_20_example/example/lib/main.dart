import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lesson_20_example/lesson_20_example.dart';

import 'ffi_example.dart';
import 'pigeon_example.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _initialValue = 0;
  int _resultValue = 0;
  DateTime _fgTimestamp;
  DateTime _bgTimestamp;
  StreamSubscription<String> _subscription;

  @override
  void initState() {
    super.initState();

    Lesson20Example.handleEnterBackground(() {
      print('ENTERING BACKGROUND...');
      setState(() => _bgTimestamp = DateTime.now());
    });

    _subscription = Lesson20Example.stream.listen((event) {
      if (event != 'enterForeground') return;

      print('ENTERING FOREGROUND...');
      setState(() => _fgTimestamp = DateTime.now());
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }

  Future<void> _raiseToPower2(int value) async {
    final result = await Lesson20Example.power2(value);

    setState(() => _resultValue = result);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Value is $_initialValue',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 24),
                ),
                Text(
                  '$_initialValue^2 = $_resultValue',
                  style:
                      DefaultTextStyle.of(context).style.copyWith(fontSize: 24),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 16),
                ),
                FlatButton(
                  child: Text('Increment'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() => _initialValue++);
                    _raiseToPower2(_initialValue);
                  },
                ),
                FlatButton(
                  child: Text('Decrement'),
                  color: Colors.blue,
                  textColor: Colors.white,
                  onPressed: () {
                    setState(() => _initialValue--);
                    _raiseToPower2(_initialValue);
                  },
                ),
                if (_bgTimestamp != null)
                  Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: Text(
                      'I have entered background at ${_bgTimestamp.hour}:${_bgTimestamp.minute}:${_bgTimestamp.second}\nlast time',
                      style: DefaultTextStyle.of(context)
                          .style
                          .copyWith(fontSize: 16),
                      textAlign: TextAlign.center,
                    ),
                  ),
                if (_fgTimestamp != null)
                  Text(
                    'I have entered foreground at ${_fgTimestamp.hour}:${_fgTimestamp.minute}:${_fgTimestamp.second}\nlast time',
                    style: DefaultTextStyle.of(context)
                        .style
                        .copyWith(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: PigeonUsageWidgetExample(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: FfiWidgetUsageExample(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SizedBox(
                    width: 250,
                    height: 250,
                    child: Platform.isIOS
                        ? UiKitView(viewType: 'ExampleView')
                        : AndroidView(viewType: 'ExampleView'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
