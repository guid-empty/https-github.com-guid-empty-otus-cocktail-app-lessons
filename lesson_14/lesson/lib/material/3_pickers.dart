import 'package:flutter/material.dart';

import '../content.dart';

class MaterialRootPage extends StatefulWidget {
  @override
  _MaterialRootPageState createState() => _MaterialRootPageState();
}

class _MaterialRootPageState extends State<MaterialRootPage> {
  @override
  Widget build(BuildContext context) {
    List<Widget> items = [];
    items.add(TextButton(
        onPressed: _showAlertDialog, child: Text('Show AlertDialog')));
    items.add(TextButton(
        onPressed: _showSimpleDialog, child: Text('Show SimpleDialog')));

    items.add(TextButton(
        onPressed: _showCustomDialog, child: Text('Show CustomDialog')));

    items.add(TextButton(
        onPressed: _showDateTimePicker, child: Text('Show DatePicker')));
    items.add(TextButton(
        onPressed: () =>
            _showDateTimeRangePicker(entryMode: DatePickerEntryMode.calendar),
        child: Text('Show DateRangePicker')));

    items.add(TextButton(
        onPressed: () =>
            _showDateTimeRangePicker(entryMode: DatePickerEntryMode.input),
        child: Text('Show DateRangePicker')));

    items.add(TextButton(
        onPressed: () => _showModalBottomDialog(),
        child: Text('Show modal BottomDialog')));

    items.add(TextButton(
        onPressed: () => _showModalBottomDialog(),
        child: Text('Show modal BottomDialog')));

    // items.add(PopupMenuButton(itemBuilder: (BuildContext context) {
    //   return PopupMenuEntry();
    // },));

    return Scaffold(
      appBar: AppBar(
        title: Text('Material Dialogs'),
      ),
      body: ListView(
        children: items,
      ),
    );
  }

  void _showAlertDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.blue[100].withOpacity(0.3),
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text('AlertDialog Title'),
          content: Text('Content'),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Cancel')),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Ok')),
          ],
        );
      },
      //child: Не использовать!
    );
  }

  void _showSimpleDialog() {
    showDialog(
      context: context,
      barrierColor: Colors.blue[100].withOpacity(0.3),
      barrierDismissible: true,
      builder: (context) {
        return SimpleDialog(
          title: Text('SimpleDialog Title'),
          children: [
            SimpleDialogOption(
              onPressed: () {},
              child: Text('Choice 1'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Text('Choice 2'),
            ),
            SimpleDialogOption(
              onPressed: () {},
              child: Text('Choice 3'),
            )
          ],
        );
      },
      //child: Не использовать!
    );
  }

  void _showCustomDialog() {
    showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return Dialog(
            insetAnimationDuration: Duration(seconds: 4),
            insetAnimationCurve: Curves.bounceIn,
            insetPadding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('Dialog'),
                TextField()
              ],
            ),
          );
        });
  }

  void _showDateTimePicker() {
    showDatePicker(
        context: context,
        builder: (ctx, c) {
          return Column(
            children: [c],
          );
        },
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }

  void _showDateTimeRangePicker({DatePickerEntryMode entryMode}) {
    showDateRangePicker(
        context: context,
        locale: Locale('ru'),
        initialEntryMode: entryMode,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
  }

  void _showModalBottomDialog() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      builder: (context) => BottomSheetContent(),
    );
  }

  // void _showDropDownButton(){
  //
  // }

  // todo работает только через Scaffold
  void _showBottomSheet(BuildContext context) {
    showBottomSheet(
        context: context,
        builder: (context) {
          return BottomSheetContent();
        });
  }
}
