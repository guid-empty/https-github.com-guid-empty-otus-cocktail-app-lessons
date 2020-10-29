import 'package:flutter/material.dart';

void showSnackBar(ScaffoldState scaffoldState, String text) {
  scaffoldState.showSnackBar(SnackBar(content: Text(text),duration: Duration(seconds: 1),));
}


class GestureContainer extends StatelessWidget {
  final String title;
  final Color color;

  const GestureContainer(this.title, {Key key,this.color = Colors.blue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      child: Text(title, style: TextStyle(color: Colors.white)),
    );
  }
}