import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../utils/stringExtensions.dart';

class Bubble extends StatelessWidget {
  const Bubble(
    this.caption, {
    Key key,
  }) : super(key: key);

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 21, 21, 28),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        child: Text(caption.toUpperCaseFirstLetter(),
            style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w400)));
  }
}
