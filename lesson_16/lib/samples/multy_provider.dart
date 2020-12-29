import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MultiProviderSample extends StatelessWidget {
  const MultiProviderSample({Key key, this.value = 'Value'}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => 'AppBarTitle'),
        Provider(create: (context) => 10),
      ],
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(Provider.of<String>(context)),
          ),
          body: Center(child: Text(Provider.of<int>(context).toString())),
        );
      },
    );
  }
}
