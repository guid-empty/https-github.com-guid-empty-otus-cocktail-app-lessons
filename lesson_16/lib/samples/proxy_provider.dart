import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProxyProviderSample extends StatelessWidget {
  const ProxyProviderSample({Key key, this.value = 'Value'}) : super(key: key);

  final String value;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (context) => Title('Title')),
        Provider(create: (context) => 10),
        StreamProvider<String>(
          initialData: '1',
          create: (context) => Stream<String>.periodic(
              Duration(seconds: 1), (value) => value.toString()),
        ),
        ProxyProvider2<String, Title, String>(
          update: (context, t1, t2, result) {
            return '${t2.title} $t1';
          },
        )
      ],
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text(Provider.of<String>(context)),
          ),
        );
      },
    );
  }
}

class Title {
  final String title;

  Title(this.title);
}
