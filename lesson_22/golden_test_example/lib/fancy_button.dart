import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FancyButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const FancyButton({Key key, @required this.title, this.onTap})
      : assert(title != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onTap,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.amberAccent),
        foregroundColor: MaterialStateProperty.all(Colors.black),
        side:
            MaterialStateProperty.all(BorderSide(color: Colors.pink, width: 5)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ),
      // decoration: BoxDecoration(
      //   color: Colors.amberAccent,
      //   border: Border.all(color: Colors.pink, width: 6),
      //   borderRadius: BorderRadius.all(Radius.circular(6)),
      // ),
      child: Text(
        title,
      ),
    );
  }
}
