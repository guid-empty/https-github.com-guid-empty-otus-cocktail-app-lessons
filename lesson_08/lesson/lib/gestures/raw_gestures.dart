import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RawGesturesSample extends StatefulWidget {
  @override
  _RawGesturesSampleState createState() => _RawGesturesSampleState();
}

class _RawGesturesSampleState extends State<RawGesturesSample> {
  var _last;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.runtimeType.toString()),
      ),
      body: Center(
        child: RawGestureDetector(
          gestures: <Type, GestureRecognizerFactory>{
            CustomLongPressRecognizer:
                GestureRecognizerFactoryWithHandlers<CustomLongPressRecognizer>(
              () => CustomLongPressRecognizer(),
              (CustomLongPressRecognizer instance) {
                return instance
                  ..onLongPress = (){
                  print('onLongPress');
                 setState(() {
                   _last = 'Done';
                 });
                };
              },
            ),
          },
          child: Container(
            width: 200,
            height: 200,
            color: Colors.yellow,
            alignment: Alignment.center,
            child: Text(_last ?? 'none'),
          ),
        ),
      ),
    );
  }
}

class CustomLongPressRecognizer extends LongPressGestureRecognizer {
  CustomLongPressRecognizer() : super(duration: Duration(seconds: 1));
}
