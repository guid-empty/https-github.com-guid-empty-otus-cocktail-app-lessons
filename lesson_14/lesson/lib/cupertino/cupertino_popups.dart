import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoPopups extends StatefulWidget {
  @override
  _CupertinoPopupsState createState() => _CupertinoPopupsState();
}

class _CupertinoPopupsState extends State<CupertinoPopups> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];

    items.add(CupertinoButton(
        child: Text('show Cupertino Alert Dialog'),
        onPressed: _showCupertinoAlertDialog));

    items.add(CupertinoButton(
        child: Text('show Cupertino Dialog'), onPressed: _showCupertinoDialog));

    items.add(CupertinoButton(
        child: Text('show Cupertino Popup Surface'),
        onPressed: _showCupertinoPopupSurface));

    items.add(CupertinoButton(
        child: Text('show Cupertino Actions Sheet'),
        onPressed: _showActionsSheet));

    items.add(CupertinoButton(
        child: Text('show Cupertino Time Picker'),
        onPressed: _showCupertinoTimePicker));

    items.add(CupertinoButton(
        child: Text('show Cupertino Picker'), onPressed: _showCupertinoPicker));

    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('CupertinoPopups'),
      ),
      child: ListView(
        children: items,
      ),
    );
  }

  void _showCupertinoAlertDialog() {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return CupertinoAlertDialog(
            title: Text('Title'),
            content: Text('Content'),
            scrollController: ScrollController(),
            actionScrollController: ScrollController(),
            actions: [
              CupertinoDialogAction(
                 isDefaultAction: true,
                child: Text('Ok'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                isDestructiveAction: true,
                child: Text('Cancel'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Action1'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              CupertinoDialogAction(
                child: Text('Action2'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  void _showCupertinoDialog() {
    showCupertinoDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return CupertinoDialog(
          child: Material(child: Text('Content')),
        );
      },
    );
  }

  void _showCupertinoPopupSurface() {
    showCupertinoDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return DefaultTextStyle(
            style: TextStyle(color: Colors.black),
            child: Center(
              child: CupertinoPopupSurface(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children:
                        List.generate(5, (index) => Icon(CupertinoIcons.star)),
                  ),
                ),
              ),
            ),
          );
        });
  }

  void _showActionsSheet() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return CupertinoActionSheet(
            title: Text('Title'),
            message: Text('Message'),
            cancelButton: CupertinoActionSheetAction(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel')),
            actions: [
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDefaultAction: true,
                  child: Text('Default Action')),
              CupertinoActionSheetAction(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  isDefaultAction: true,
                  child: Text('Default Action')),
              CupertinoActionSheetAction(
                onPressed: () {},
                isDestructiveAction: true,
                child: Text('Destructive Action'),
              ),
              CupertinoActionSheetAction(
                onPressed: () {},
                child: Text('Action '),
              ),
            ],
          );
        });
  }

  void _showCupertinoTimePicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height / 3,
            child: CupertinoTimerPicker(
                mode: CupertinoTimerPickerMode.hm,
                onTimerDurationChanged: (time) {

                }),
          );
        });
  }

  void _showCupertinoPicker() {
    showCupertinoModalPopup(
        context: context,
        builder: (context) {
          return Container(
            color: Colors.white,
            height: 210,
            child: CupertinoPicker.builder(
                itemExtent: 50,
                childCount: 5,
                onSelectedItemChanged: (int value) {},
                itemBuilder: (ctx, index) => Text('index:${index}')),
          );
        });
  }
}
