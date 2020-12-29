import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectorSample extends StatefulWidget {
  @override
  _SelectorSampleState createState() => _SelectorSampleState();
}

class _SelectorSampleState extends State<SelectorSample> {
  String value = 'value';

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: value,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            actions: [
              IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {
                    setState(() {
                      value = null;
                    });
                  })
            ],
          ),
          body: Center(
            child: Selector<String, String>(
              selector: (context, value) {
                return value ?? 'Empty Value';
              },
              builder: (context, value, child) {
                return Text(value);
              },
            ),
          ),
        );
      },
    );
  }
}
