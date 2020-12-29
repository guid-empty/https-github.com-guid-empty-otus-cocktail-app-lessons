import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

final valueNotifier = ValueNotifier<int>(1);

class ValueListenableProviderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableProvider<int>.value(
      value: valueNotifier,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              context.read<ValueNotifier<int>>().value++;
            },
          ),
          // body: Consumer<ValueNotifier<int>>(
          //   builder: (context, value, child) {
          //     return Text(value.toString());
          //   },
          // ),
        );
      },
    );
  }
}
