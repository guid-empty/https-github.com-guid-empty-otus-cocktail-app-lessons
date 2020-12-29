import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProviderValueConstructorSample extends StatelessWidget {
  const ProviderValueConstructorSample({Key key, this.value = 'Value'})
      : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: value,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(),
          body: Center(
            child: Text(
              Provider.of<String>(context),
            ),
          ),
        );
      },
    );
  }
}


