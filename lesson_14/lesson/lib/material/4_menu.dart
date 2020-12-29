import 'package:flutter/material.dart';
import 'package:lesson/content.dart';

class ScaffoldPopups extends StatefulWidget {
  @override
  _ScaffoldPopupsState createState() => _ScaffoldPopupsState();
}

class _ScaffoldPopupsState extends State<ScaffoldPopups> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold Popups'),
      ),
      body: Builder(
        builder: (context) {
          return _buildBody(context);
        },
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, i) {
        return ListTile(
          title: Text('Item'),
          trailing: PopupMenuButton(
            child: Icon(Icons.more_vert),
            onSelected: (value) {
              print('onSelected:${value}');
              //action
            },
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                    value: 'variant1',
                    child: ListTile(
                      title: Text('Variant 1'),
                    )),
                PopupMenuItem(
                    value: 'variant2',
                    child: ListTile(
                      title: Text('Variant 2'),
                    )),
                CheckedPopupMenuItem(
                    value: 'variant3', checked: true, child: Text('Variant 3'))
              ];
            },
          ),
        );
      },
      itemCount: 10,
    );
  }

  void _showMenu(BuildContext context) {
    // final RenderBox button = context.findRenderObject() as RenderBox;
    // final RenderBox overlay = Overlay.of(context).context.findRenderObject() as RenderBox;
    // final RelativeRect position = RelativeRect.fromRect(
    //   Rect.fromPoints(
    //     button.localToGlobal(widget.offset, ancestor: overlay),
    //     button.localToGlobal(button.size.bottomRight(Offset.zero), ancestor: overlay),
    //   ),
    //   Offset.zero & overlay.size,
    // );
    showMenu(context: null, position: null, items: null);
  }
}
