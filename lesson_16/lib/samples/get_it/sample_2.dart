import 'package:flutter/material.dart';

import 'config.dart';

class GetItSamplePage extends StatefulWidget {
  @override
  _GetItSamplePageState createState() => _GetItSamplePageState();
}

class _GetItSamplePageState extends State<GetItSamplePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                print(serviceLocator.call<Service>().value);
              },
              child: Text('Print')),
          TextButton(
              onPressed: () {
                serviceLocator.get<Service>().value = '2';
              },
              child: Text('ADD')),
        ],
      ),
    );
  }
}

class Service {
  String value = '1';
}
