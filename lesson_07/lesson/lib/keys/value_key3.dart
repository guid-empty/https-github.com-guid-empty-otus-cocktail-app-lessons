import 'package:flutter/material.dart';

class ReordStatefulSample extends StatefulWidget {
  @override
  _ReordStatefulSampleState createState() =>
      _ReordStatefulSampleState();
}

class _ReordStatefulSampleState extends State<ReordStatefulSample> {
  var _data = <Color>[Colors.red, Colors.blue];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        onReorder: (a,b){

        },
        children: _data
            .map((e) => ColorBox(
                  e,
                  key: ValueKey(e),
                ))
            .toList(),
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

class ColorBox extends StatefulWidget {
  const ColorBox(
    this.color, {
    Key key,
  }) : super(key: key);

  final Color color;

  @override
  _ColorBoxState createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  Color color;

  @override
  void initState() {
    print('${widget.color}  init state');
    color = widget.color;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(
        '${color} ${widget.color}  element${context.hashCode} ${context.findRenderObject().hashCode}');
    return Container(
      width: 100,
      height: 100,
      color: color,
    );
  }
}

//
// flutter: text2 element:205 renderObject:959248306
// flutter: text1 element:196 renderObject:572380819
