import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AsyncProviderSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('root build');
    return MultiProvider(
      providers: [
        StreamProvider<String>(
          initialData: '1',
          create: (context) => Stream<String>.periodic(
              Duration(seconds: 1), (value) => value.toString()),
        ),
        FutureProvider<AppVersion>(create: (context) => initAppVersionFuture())
      ],
      builder: (context, child) {
        print('build');
        return Scaffold(
          appBar: AppBar(
            title: Text(
                Provider.of<AppVersion>(context)?.number?.toString() ?? ''),
          ),
          body: Builder(
            builder:(context) {
              print('Builder build ');
              return Center(
                child: Text(context.watch<String>() ?? ''),
              );
            }
          ),
        );
      },
    );
  }
}

Future<AppVersion> initAppVersionFuture() async {
  await Future.delayed(Duration(seconds: 5));
  return AppVersion(1);
}

class AppVersion {
  final int number;

  AppVersion(this.number);
}
