import 'package:flutter/widgets.dart';

class ShadowedText extends StatelessWidget {
  const ShadowedText(
      this.caption,
      {
        Key key,
      }) : super(key: key);

  final String caption;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Text(
        "Id:$caption",
        style: TextStyle(
            color: Color.fromARGB(255, 132, 131, 150),
            fontSize: 13,
            fontWeight: FontWeight.w400),
      ),
    );
  }
}