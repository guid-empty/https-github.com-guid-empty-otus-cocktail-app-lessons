import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ScrollControllerSamplePage extends StatefulWidget {
  @override
  _ScrollControllerSamplePageState createState() =>
      _ScrollControllerSamplePageState();
}

class _ScrollControllerSamplePageState
    extends State<ScrollControllerSamplePage> {
  static const _duration = Duration(milliseconds: 500);

  static const _curve = Curves.linear;

  final controller = ScrollController(initialScrollOffset: 1000);

  final items = List.generate(100, (index) => index);

  final itemExtent = 75.0;

  @override
  void initState() {
    /*controller.addListener(() {
      print(controller.offset);
    });*/
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            FlatButton(
              onPressed: () {
                print('${controller.position.maxScrollExtent}');
                // final currentOffset = controller.offset;
                // controller.animateTo(currentOffset + itemExtent,
                //     duration: _duration, curve: _curve);
              },
              child: Text('show'),
            ),
            FlatButton(
              onPressed: () {
                controller.animateTo(0, curve: _curve, duration: _duration);
              },
              child: Text('animate up'),
            ),
            FlatButton(
              onPressed: () {
                controller.jumpTo(controller.position.maxScrollExtent);
                //print('${controller.position.maxScrollExtent}');
              },
              child: Text('jump down'),
            )
          ],
        ),
        body: _buildListView(context));
  }

  Widget _buildItem(BuildContext context, int index) {
    return Card(
      key: ValueKey(index),
      child: Container(
        height: itemExtent + index,
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
      physics: ClampingScrollPhysics(),
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
