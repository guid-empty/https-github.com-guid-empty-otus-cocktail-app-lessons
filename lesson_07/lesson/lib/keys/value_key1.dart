import 'package:flutter/material.dart';

class ValueKeysStatelessSample extends StatefulWidget {
  @override
  _ValueKeysStatelessSampleState createState() => _ValueKeysStatelessSampleState();
}

class _ValueKeysStatelessSampleState extends State<ValueKeysStatelessSample> {
  var _data = <Widget>[
    ColorBox(Colors.red),
    ColorBox(Colors.blue),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: _data,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shuffle),
        onPressed: () {
          setState(() {
            _data.insert(0, _data.removeAt(1));
          });
        },
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  const ColorBox(
    this.color, {
    Key key,
  }) : super(key: key);

  final Color color;
  @override
  Widget build(BuildContext context) {
    print(
        '$color  element${context.hashCode} render${context.findRenderObject().hashCode}');
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

//
// flutter: MaterialColor(primary value: Color(0xfff44336))  element109 105587746
// flutter: MaterialColor(primary value: Color(0xff2196f3))  element113 257899589
