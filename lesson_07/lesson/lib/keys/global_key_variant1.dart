import 'package:flutter/material.dart';

class GlobalKeysSample extends StatefulWidget {
  @override
  _GlobalKeysSampleState createState() => _GlobalKeysSampleState();
}

class _GlobalKeysSampleState extends State<GlobalKeysSample> {
  var _data = {
    GlobalKey(): List.generate(5, (index) => 'item${index}'),
    GlobalKey(): List.generate(6, (index) => 'item${index}'),
  };

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((c){

    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Padding(
            padding:
                EdgeInsets.only(top: _getSize(_data.keys.last)?.height ?? 0),
            child: _SomeBox(
              color: Colors.red,
              key: _data.keys.first,
              items: _data[_data.keys.first],
            ),
          ),
          _SomeBox(
            color: Colors.blue,
            key: _data.keys.last,
            items: _data[_data.keys.last],
          )
        ]),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            RaisedButton(
              onPressed: () {
                setState(() {
                  _data[_data.keys.last].add('value');
                });
              },
              child: Text('Разместить'),
            )
          ],
        ),
      ),
    );
  }
}

class _SomeBox extends StatelessWidget {
  const _SomeBox({Key key, this.items, this.color}) : super(key: key);

  final List<String> items;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: color,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ...items.map((e) {
              return Text(e);
            }),
          ],
        ));
  }
}

Size _getSize(GlobalKey key) {
  final RenderBox renderObject = key.currentContext?.findRenderObject();
  return renderObject?.size;
}

Offset _getPosition(GlobalKey key) {
  final RenderBox renderObject = key?.currentContext?.findRenderObject();
  return renderObject?.localToGlobal(Offset.zero);
}
