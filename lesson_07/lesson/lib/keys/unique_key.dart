import 'package:flutter/material.dart';

class UniqueKeySample extends StatefulWidget {
  @override
  _UniqueKeySampleState createState() => _UniqueKeySampleState();
}

class _UniqueKeySampleState extends State<UniqueKeySample> {
  var _data = Map.fromIterable(List.generate(5, (index) => 'item$index'),
      key: (k) => k, value: (k) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: _data.keys.map((key) {
        return _ListTile(
          key: UniqueKey(),
          initialValue: _data[key],
          title: key,
        );
      }).toList()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.clear),
        onPressed: () {
          setState(() {
            _data.forEach((key, value) {
              _data[key] = false;
            });
          });
        },
      ),
    );
  }
}

class _ListTile extends StatefulWidget {
  const _ListTile({Key key, this.initialValue, this.title = ''})
      : super(key: key);

  final bool initialValue;

  final String title;

  @override
  _ListTileState createState() => _ListTileState();
}

class _ListTileState extends State<_ListTile> {
  bool value;

  static const _selectedTextStyle = TextStyle(color: Colors.green);
  static const _textStyle = TextStyle(color: Colors.black);

  @override
  void initState() {
    value = widget.initialValue ?? false;
    print('${widget.title} initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(
        '${widget.title} element:${context.hashCode} render:${context.findRenderObject()?.hashCode}');
    return ListTile(
      title: Text(
        widget.title,
        style: value ? _selectedTextStyle : _textStyle,
      ),
      trailing: Switch.adaptive(
          value: value,
          onChanged: (value) {
            setState(() {
              this.value = value;
            });
          }),
    );
  }
}

//flutter: item0 element:196
// flutter: item0 renderObject:234210957
// flutter: item1 element:241
// flutter: item1 renderObject:483024128
// flutter: item2 element:286
// flutter: item2 renderObject:1001186734
// flutter: item3 element:331
// flutter: item3 renderObject:238076032
// flutter: item4 element:376
// flutter: item4 renderObject:506243994
