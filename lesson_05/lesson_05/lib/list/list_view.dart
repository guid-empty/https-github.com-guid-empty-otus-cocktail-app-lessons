import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ListViewSamplePage extends StatefulWidget {
  @override
  _ListViewSamplePageState createState() => _ListViewSamplePageState();
}

class _ListViewSamplePageState extends State<ListViewSamplePage> {
  final items = List.generate(30, (index) => index);
  static  Color get color =>  const Color(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: _listViewBuilder(context));
  }

  Widget _buildItem(BuildContext context, int index) {
    return ListItem(index);
  }

  Widget _buildListView(BuildContext context) {
    return ListView(
      physics: BouncingScrollPhysics(),
      addAutomaticKeepAlives: true,
      children: items.map((index) => ListItem(index)).toList(),
    );
  }

  Widget _listViewBuilder(BuildContext context) {
    return ListView.builder(itemBuilder: _buildItem);
  }

  Widget _listViewSeparatedBuilder(BuildContext context) {
    return ListView.separated(
        itemCount: items.length,
        separatorBuilder: (context, index) => Text('${index}'),
        itemBuilder: _buildItem);
  }
}

class ListItem extends StatefulWidget  {
  const ListItem(
    this.index, {
    Key key,
  }) : super(key: key);

  final int index;

  @override
  _ListItemState createState() => _ListItemState();
}

class _ListItemState extends State<ListItem> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    //print('init item ${widget.index}');
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

  @override
  bool get wantKeepAlive => true;
}

