import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ConsumerSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => 'Value',
      lazy: true,
      dispose: (context, value) {},
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Consumer<String>(
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
