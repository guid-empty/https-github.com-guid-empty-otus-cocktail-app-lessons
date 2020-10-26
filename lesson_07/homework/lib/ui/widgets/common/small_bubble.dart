import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SmallBubble extends StatelessWidget {
  const SmallBubble(
    this.caption, {
    Key key,
  }) : super(key: key);

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(16, 6, 16, 6),
        margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
        decoration: BoxDecoration(
            border: Border.all(color: const Color.fromARGB(255, 33, 29, 34)),
            color: const Color.fromARGB(255, 21, 21, 28),
            borderRadius: const BorderRadius.all(const Radius.circular(30))),
        child: Text(
          caption,
          style: Theme.of(context).textTheme.bodyText2
        ));
  }
}
