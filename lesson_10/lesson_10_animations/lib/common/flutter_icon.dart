import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FlutterIcon extends StatelessWidget {
  final Color _color;

  const FlutterIcon({Key key, Color color = Colors.green})
      : _color = color,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const FlutterLogo(),
      width: 200,
      height: 200.0,
      color: _color,
    );
  }
}
