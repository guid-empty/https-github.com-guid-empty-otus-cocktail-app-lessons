import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CustomListViewSamplePage extends StatefulWidget {
  @override
  _ListViewSamplePageState createState() => _ListViewSamplePageState();
}

class _ListViewSamplePageState extends State<CustomListViewSamplePage> {
  final items = List.generate(500, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: _childList(context));
  }

  Widget _childBuilder(BuildContext context) {
    return ListView.custom(
      childrenDelegate: SliverChildBuilderDelegate(
          (context, index) => ListItem(index),
          childCount: items.length),
    );
  }

  Widget _childList(BuildContext context) {
    return ListView.custom(
      childrenDelegate:SliverChildBuilderDelegate(
          (contex,index){
            return ListItem(index);
          }
      ),
    );
    return ListView.custom(
      childrenDelegate:
          SliverChildListDelegate(items.map((item) => ListItem(item)).toList()),
    );
  }
}

class ListItem extends StatefulWidget {
  const ListItem(
    this.index, {
    Key key,
  }) : super(key: key);

  final int index;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> {
  @override
  void initState() {
    print('init item ${widget.index}');
    super.initState();
  }

  @override
  void dispose() {
    print('dispose item ${widget.index}');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('buildItem ${widget.index}');
    return Card(
      child: ListTile(
        onTap: () {},
        title: Text('${widget.index}'),
      ),
    );
  }
}

// 1. рассказываю про  SliverChildDelegate  и варианты SliverChildBuilderDelegate и SliverChildListDelegate

///
