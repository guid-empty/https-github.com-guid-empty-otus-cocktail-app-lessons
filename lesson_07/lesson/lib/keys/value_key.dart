import 'package:flutter/material.dart';

class ValueKeys2Sample extends StatefulWidget {
  @override
  _ValueKeys2SampleState createState() => _ValueKeys2SampleState();
}

class _ValueKeys2SampleState extends State<ValueKeys2Sample> {
  var _data = Map.fromIterable(List.generate(5, (index) => 'item$index'),
      key: (k) => k, value: (k) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: _data.keys.map((key) {
        return _ListTileStateful(
          //key: ValueKey('${key}'),
          initialValue: _data[key],
          title: key,
        );
      }).toList()),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.shuffle),
        onPressed: () {
          setState(() {
            final sf = _data.keys.toList()..shuffle();
            final updatedMap = <String, bool>{};
            sf.forEach((key) {
              updatedMap[key] = _data[key];
            });
            _data = updatedMap;
          });
        },
      ),
    );
  }
}

class _ListTileStateless extends StatelessWidget {
  final bool initialValue;

  final String title;

  final ValueChanged<bool> onChanged;

  const _ListTileStateless({Key key, this.initialValue, this.title, this.onChanged})
      : super(key: key);

  @override
  StatelessElement createElement() {
    print('createElement');
    return super.createElement();
  }

  @override
  Widget build(BuildContext context) {
    print('$title build:$context');
    print('$title renderObject:${context.findRenderObject()?.hashCode}');
    return Card(
      child: ListTile(
        title: Text(
          title,
        ),
        trailing: Switch.adaptive(value: initialValue, onChanged: onChanged),
      ),
    );
  }
}

class _ListTileStateful extends StatefulWidget {
  const _ListTileStateful({Key key, this.initialValue, this.title = ''})
      : super(key: key);

  final bool initialValue;

  final String title;

  @override
  _ListTileStatefulState createState() => _ListTileStatefulState();
}

class _ListTileStatefulState extends State<_ListTileStateful> {
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
  void deactivate() {
    print('deactivate');
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    print('${widget.title} build :${context.hashCode}');
    return Card(
      child: ListTile(
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
      ),
    );
  }
}

// flutter: item0 build :196
// flutter: item1 build :255
// flutter: item2 build :314
// flutter: item3 build :373
// flutter: item4 build :432

// Ключ должен быть вверху
//    return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: _ListTile(
//             key: ValueKey(key),
//             initialValue: _data[key],
//             title: key,
//           ),
//         );
