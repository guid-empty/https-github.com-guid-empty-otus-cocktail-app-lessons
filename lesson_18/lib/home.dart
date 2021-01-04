import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home View'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Open Simple App'),
                color: Colors.green,
                textColor: Colors.white,
                onPressed: () => Navigator.of(context).pushNamed('simple_app'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Open Dev Simple App'),
                color: Colors.lightGreen,
                textColor: Colors.white,
                onPressed: () =>
                    Navigator.of(context).pushNamed('simple_app_dev'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                child: Text('Open Complex App'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => Navigator.of(context).pushNamed('complex_app'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
