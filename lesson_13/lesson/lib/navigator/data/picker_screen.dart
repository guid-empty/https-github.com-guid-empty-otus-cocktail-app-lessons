import 'package:flutter/material.dart';

class PickerScreen extends StatelessWidget {
  final String title;

  const PickerScreen({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _title = title;
    final settings = ModalRoute.of(context).settings;

    final dynamic args = settings.arguments;
    if (title == null && args is Map) {
      _title = args['title'] ?? 'Null';
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(_title ?? ''),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return ListTile(
          title: Text('Вариант $index'),
          onTap: () {
            Navigator.of(context).pop(index);
          },
        );
      }),
    );
  }
}
