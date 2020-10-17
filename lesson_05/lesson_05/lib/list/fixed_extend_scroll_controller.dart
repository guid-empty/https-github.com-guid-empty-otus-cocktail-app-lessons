import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class FixedScrollControllerSamplePage extends StatefulWidget {
  @override
  _FixedScrollControllerSamplePageState createState() =>
      _FixedScrollControllerSamplePageState();
}

class _FixedScrollControllerSamplePageState
    extends State<FixedScrollControllerSamplePage> {
  
  final controller = FixedExtentScrollController();

  final items = List.generate(500, (index) => index);

  final itemExtent = 75.0;

  @override
  void initState() {
    // controller.addListener(() {
    //   print(controller.selectedItem);
    // });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton(
              onPressed: () {
                controller.jumpToItem(0);
              },
              child: Text('jump to 0'),
            ),
            FlatButton(
              onPressed: () {
                controller.jumpToItem(5);
              },
              child: Text('jump to 5'),
            ),
            FlatButton(
              onPressed: () {
                controller.jumpToItem(10);
              },
              child: Text('jump to 10'),
            )
          ],
        ),
        body: _buildListView(context));
  }

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      key: ValueKey(index),
      child: Container(
        //height: itemExtent + index,
        child: ListTile(
          onTap: () {},
          title: Text('$index'),
          trailing: IconButton(
            icon: Icon(Icons.remove),
            onPressed: () {
              setState(() {
                items.remove(index);
              });
            },
          ),
        ),
      ),
    );
  }

  Widget _buildListView(BuildContext context) {
    return ListView.builder(
      controller: controller,
      itemExtent: itemExtent,
      itemCount: items.length,
      itemBuilder: (context,index) =>_buildItem(context, index),
    );
    // return ListView(
    //   controller: controller,
    //   itemExtent: itemExtent,
    //   children: items.map((index) => _buildItem(context, index)).toList(),
    // );
  }
}
