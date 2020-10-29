import 'package:flutter/material.dart';

class GlobalKeysV2Sample extends StatefulWidget {
  @override
  _GlobalKeysSampleState createState() => _GlobalKeysSampleState();
}

class _GlobalKeysSampleState extends State<GlobalKeysV2Sample> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Builder(
        builder: (context) => Center(
            child: GestureDetector(
          onTap: () => _showSnackBar(context, 'SnackBar'),
          child: FlutterLogo(
            style: FlutterLogoStyle.stacked,
            size: 100,
          ),
        )),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(Icons.message),
              onPressed: () {
                _showSnackBar(context, 'SnackBar');
              })
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String title) {
    Scaffold.of(context).showSnackBar(SnackBar(content: Text(title)));
    // _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(title)));
  }
}
//
